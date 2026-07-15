import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'starred_controller.dart';

class StarredScreen extends ConsumerStatefulWidget {
  const StarredScreen({super.key});

  @override
  ConsumerState<StarredScreen> createState() => _StarredScreenState();
}

class _StarredScreenState extends ConsumerState<StarredScreen> {
  final ScrollController _scrollController = ScrollController();
  int _page = 1;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _page++;
      ref.read(starredControllerProvider.notifier).loadMore(_page);
    }
  }

  @override
  Widget build(BuildContext context) {
    final reposAsync = ref.watch(starredControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Starred Repositories')),
      body: reposAsync.when(
        data: (repos) {
          if (repos.isEmpty) {
            return const Center(child: Text('No starred repositories found.'));
          }
          return RefreshIndicator(
            onRefresh: () async {
              _page = 1;
              await ref.read(starredControllerProvider.notifier).refresh();
            },
            child: ListView.separated(
              controller: _scrollController,
              itemCount: repos.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final repo = repos[index];
                return ListTile(
                  onTap: () {
                    context.push('/repo_detail', extra: {
                      'owner': repo.owner.login,
                      'repoName': repo.name,
                    });
                  },
                  title: Text(
                    repo.fullName,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      if (repo.description != null && repo.description!.isNotEmpty)
                        Text(repo.description!, maxLines: 2, overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          if (repo.language != null) ...[
                            Icon(Icons.circle, size: 12, color: _getLanguageColor(repo.language)),
                            const SizedBox(width: 4),
                            Text(repo.language!),
                            const SizedBox(width: 16),
                          ],
                          const Icon(Icons.star, size: 16, color: Colors.amber),
                          const SizedBox(width: 4),
                          Text('${repo.stargazersCount}'),
                          const SizedBox(width: 16),
                          const Icon(Icons.fork_right, size: 16),
                          const SizedBox(width: 4),
                          Text('${repo.forksCount}'),
                        ],
                      ),
                    ],
                  ),
                  isThreeLine: true,
                );
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Color _getLanguageColor(String? language) {
    switch (language?.toLowerCase()) {
      case 'dart':
        return Colors.teal;
      case 'java':
        return Colors.brown;
      case 'python':
        return Colors.blue;
      case 'javascript':
        return Colors.yellow;
      case 'typescript':
        return Colors.blueAccent;
      case 'html':
        return Colors.orange;
      case 'css':
        return Colors.indigo;
      case 'c++':
        return Colors.pink;
      default:
        return Colors.grey;
    }
  }
}
