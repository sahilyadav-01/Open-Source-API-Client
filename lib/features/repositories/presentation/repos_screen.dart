import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';

import 'repos_controller.dart';

class ReposScreen extends ConsumerStatefulWidget {
  final String username;

  const ReposScreen({super.key, required this.username});

  @override
  ConsumerState<ReposScreen> createState() => _ReposScreenState();
}

class _ReposScreenState extends ConsumerState<ReposScreen> {
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
      // Trigger load more
      _page++;
      ref
          .read(reposControllerProvider(widget.username).notifier)
          .loadMore(widget.username, _page);
    }
  }

  @override
  Widget build(BuildContext context) {
    final reposAsync = ref.watch(reposControllerProvider(widget.username));

    return Scaffold(
      appBar: AppBar(title: const Text('Repositories')),
      body: reposAsync.when(
        data: (repos) {
          if (repos.isEmpty) {
            return const Center(child: Text('No repositories found.'));
          }
          return RefreshIndicator(
            onRefresh: () => ref.read(reposControllerProvider(widget.username).notifier).refresh(),
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
                    repo.name,
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
                          const Icon(Icons.star_border, size: 16),
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
