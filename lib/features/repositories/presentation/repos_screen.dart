import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              itemCount: repos.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final repo = repos[index];
                return Card(
                  margin: EdgeInsets.zero,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      context.push('/repo_detail', extra: {
                        'owner': repo.owner.login,
                        'repoName': repo.name,
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(LucideIcons.book, size: 20),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  repo.name,
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                        color: Theme.of(context).colorScheme.primary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          if (repo.description != null && repo.description!.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(
                              repo.description!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                                  ),
                            ),
                          ],
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              if (repo.language != null) ...[
                                Icon(Icons.circle, size: 10, color: _getLanguageColor(repo.language)),
                                const SizedBox(width: 6),
                                Text(
                                  repo.language!,
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                                      ),
                                ),
                                const SizedBox(width: 16),
                              ],
                              Icon(LucideIcons.star, size: 14, color: Theme.of(context).colorScheme.onSurfaceVariant),
                              const SizedBox(width: 4),
                              Text(
                                '${repo.stargazersCount}',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                                    ),
                              ),
                              const SizedBox(width: 16),
                              Icon(LucideIcons.gitFork, size: 14, color: Theme.of(context).colorScheme.onSurfaceVariant),
                              const SizedBox(width: 4),
                              Text(
                                '${repo.forksCount}',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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

