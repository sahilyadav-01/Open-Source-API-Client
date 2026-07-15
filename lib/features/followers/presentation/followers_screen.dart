import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'followers_controller.dart';

class FollowersScreen extends ConsumerStatefulWidget {
  const FollowersScreen({super.key});

  @override
  ConsumerState<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends ConsumerState<FollowersScreen> {
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
      ref.read(followersControllerProvider.notifier).loadMore(_page);
    }
  }

  @override
  Widget build(BuildContext context) {
    final followersAsync = ref.watch(followersControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Followers')),
      body: followersAsync.when(
        data: (followers) {
          if (followers.isEmpty) {
            return const Center(child: Text('No followers found.'));
          }
          return RefreshIndicator(
            onRefresh: () async {
              _page = 1;
              await ref.read(followersControllerProvider.notifier).refresh();
            },
            child: ListView.separated(
              controller: _scrollController,
              itemCount: followers.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final user = followers[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatarUrl),
                  ),
                  title: Text(user.login, style: const TextStyle(fontWeight: FontWeight.bold)),
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
}
