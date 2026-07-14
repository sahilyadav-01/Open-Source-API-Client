import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'repos_controller.dart';

class ReposScreen extends ConsumerStatefulWidget {
  final String username;

  const ReposScreen({Key? key, required this.username}) : super(key: key);

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
      appBar: AppBar(title: Text('${widget.username} Repositories')),
      body: reposAsync.when(
        data: (repos) {
          if (repos.isEmpty) {
            return const Center(child: Text('No repositories found.'));
          }
          return ListView.builder(
            controller: _scrollController,
            itemCount: repos.length,
            itemBuilder: (context, index) {
              final repo = repos[index];
              return ListTile(
                title: Text(repo.name),
                subtitle: Text(repo.description ?? 'No description'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.star, size: 16),
                    Text('${repo.stargazersCount}'),
                  ],
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
