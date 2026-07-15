import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pull_requests_controller.dart';

class PullRequestsTab extends ConsumerWidget {
  final String owner;
  final String repo;

  const PullRequestsTab({
    super.key,
    required this.owner,
    required this.repo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prsState = ref.watch(pullRequestsControllerProvider(owner, repo));

    return prsState.when(
      data: (prs) {
        if (prs.isEmpty) {
          return const Center(
            child: Text('No open pull requests found.'),
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: prs.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final pr = prs[index];
            return ListTile(
              leading: const Icon(Icons.merge_type, color: Colors.purple),
              title: Text(
                pr.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text('#${pr.number} opened on ${DateFormat.yMMMd().format(pr.createdAt)} by ${pr.user.login}'),
                ],
              ),
              onTap: () async {
                final url = Uri.parse(pr.htmlUrl);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text('Error loading pull requests: $error'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.read(pullRequestsControllerProvider(owner, repo).notifier).refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
