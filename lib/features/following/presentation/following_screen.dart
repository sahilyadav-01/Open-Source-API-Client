import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'following_controller.dart';

class FollowingScreen extends ConsumerStatefulWidget {
  const FollowingScreen({super.key});

  @override
  ConsumerState<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends ConsumerState<FollowingScreen> {
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
      ref.read(followingControllerProvider.notifier).loadMore(_page);
    }
  }

  @override
  Widget build(BuildContext context) {
    final followingAsync = ref.watch(followingControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Following')),
      body: followingAsync.when(
        data: (following) {
          if (following.isEmpty) {
            return const Center(child: Text('Not following anyone.'));
          }
          return RefreshIndicator(
            onRefresh: () async {
              _page = 1;
              await ref.read(followingControllerProvider.notifier).refresh();
            },
            child: ListView.separated(
              controller: _scrollController,
              itemCount: following.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final user = following[index];
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
