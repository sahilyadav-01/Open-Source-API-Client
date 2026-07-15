import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'profile_controller.dart';

class ProfileScreen extends ConsumerWidget {
  final String username;

  const ProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(profileControllerProvider(username));

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: profileAsync.when(
        data: (user) {
          if (user == null) {
            return const Center(child: Text('User not found.'));
          }
          return RefreshIndicator(
            onRefresh: () => ref.read(profileControllerProvider(username).notifier).refresh(),
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(user.avatarUrl),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    user.name ?? user.login,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                if (user.name != null)
                  Center(
                    child: Text(
                      user.login,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                  ),
                const SizedBox(height: 16),
                if (user.bio != null)
                  Text(
                    user.bio!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatCard(
                      context,
                      'Followers',
                      user.followers ?? 0,
                      () => context.push('/followers'),
                    ),
                    _buildStatCard(
                      context,
                      'Following',
                      user.following ?? 0,
                      () => context.push('/following'),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.location_on),
                  title: Text(user.location ?? 'No location provided'),
                ),
                ListTile(
                  leading: const Icon(Icons.business),
                  title: Text(user.company ?? 'No company provided'),
                ),
                ListTile(
                  leading: const Icon(Icons.link),
                  title: Text(user.blog != null && user.blog!.isNotEmpty ? user.blog! : 'No website provided'),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String label, int count, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(label, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
