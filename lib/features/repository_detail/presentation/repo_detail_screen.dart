import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';
import 'repo_detail_controller.dart';
import '../../issues/presentation/widgets/issues_tab.dart';
import '../../pull_requests/presentation/widgets/pull_requests_tab.dart';

class RepoDetailScreen extends ConsumerWidget {
  final String owner;
  final String repoName;

  const RepoDetailScreen({
    super.key,
    required this.owner,
    required this.repoName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readmeAsync = ref.watch(repoReadmeControllerProvider(owner, repoName));

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(repoName),
          actions: [
            IconButton(
              icon: const Icon(Icons.open_in_browser),
              onPressed: () async {
                final url = Uri.parse('https://github.com/$owner/$repoName');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'README'),
              Tab(text: 'Issues'),
              Tab(text: 'Pull Requests'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // README Tab
            readmeAsync.when(
              data: (readmeContent) {
                if (readmeContent == null || readmeContent.isEmpty) {
                  return const Center(
                    child: Text('No README.md found.', style: TextStyle(fontSize: 16)),
                  );
                }
                return Markdown(
                  data: readmeContent,
                  onTapLink: (text, href, title) async {
                    if (href != null) {
                      final url = Uri.parse(href);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    }
                  },
                  selectable: true,
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('Failed to load README')),
            ),
            // Issues Tab
            IssuesTab(owner: owner, repo: repoName),
            // Pull Requests Tab
            PullRequestsTab(owner: owner, repo: repoName),
          ],
        ),
      ),
    );
  }
}
