import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../issues_controller.dart';

class IssuesTab extends ConsumerWidget {
  final String owner;
  final String repo;

  const IssuesTab({
    super.key,
    required this.owner,
    required this.repo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final issuesState = ref.watch(issuesControllerProvider(owner, repo));

    return issuesState.when(
      data: (issues) {
        if (issues.isEmpty) {
          return const Center(
            child: Text('No open issues found.'),
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: issues.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final issue = issues[index];
            return ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.green),
              title: Text(
                issue.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text('#${issue.number} opened on ${DateFormat.yMMMd().format(issue.createdAt)} by ${issue.user.login}'),
                  if (issue.comments > 0)
                    Text('${issue.comments} comments', style: const TextStyle(color: Colors.grey)),
                ],
              ),
              onTap: () async {
                final url = Uri.parse(issue.htmlUrl);
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
            Text('Error loading issues: $error'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.read(issuesControllerProvider(owner, repo).notifier).refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
