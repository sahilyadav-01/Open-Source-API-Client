import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'profile_controller.dart';

class ProfileScreen extends ConsumerWidget {
  final String username;

  const ProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(profileControllerProvider(username));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: profileAsync.when(
        data: (user) {
          if (user == null) {
            return const Center(child: Text('User not found.'));
          }
          return RefreshIndicator(
            onRefresh: () => ref.read(profileControllerProvider(username).notifier).refresh(),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.outline,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 44,
                        backgroundImage: NetworkImage(user.avatarUrl),
                        backgroundColor: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name ?? user.login,
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          if (user.name != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              user.login,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                                  ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                if (user.bio != null) ...[
                  const SizedBox(height: 20),
                  Text(
                    user.bio!,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.4),
                  ),
                ],
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: _buildStatCard(
                        context,
                        'Followers',
                        user.followers ?? 0,
                        LucideIcons.users,
                        () => context.push('/followers'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildStatCard(
                        context,
                        'Following',
                        user.following ?? 0,
                        LucideIcons.userCheck,
                        () => context.push('/following'),
                      ),
                    ),
                  ],
                ),
                if (user.location != null || user.company != null || (user.blog != null && user.blog!.isNotEmpty)) ...[
                  const SizedBox(height: 24),
                  Card(
                    margin: EdgeInsets.zero,
                    child: Column(
                      children: [
                        if (user.location != null)
                          _buildInfoTile(context, LucideIcons.mapPin, user.location!),
                        if (user.company != null)
                          _buildInfoTile(context, LucideIcons.building, user.company!),
                        if (user.blog != null && user.blog!.isNotEmpty)
                          _buildInfoTile(context, LucideIcons.link, user.blog!),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String label, int count, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Theme.of(context).colorScheme.outline),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 20, color: Theme.of(context).colorScheme.onSurfaceVariant),
            const SizedBox(height: 12),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(BuildContext context, IconData icon, String text) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.onSurfaceVariant, size: 20),
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      dense: true,
      visualDensity: VisualDensity.compact,
    );
  }
}
