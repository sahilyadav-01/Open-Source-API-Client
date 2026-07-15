import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/github_repo_repository.dart';
import '../domain/github_repo.dart';

import '../../../core/providers/core_providers.dart';

part 'repos_controller.g.dart';

@riverpod
GithubRepoRepository githubRepoRepository(GithubRepoRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  final isar = ref.watch(isarProvider);
  return GithubRepoRepository(apiClient: apiClient, isar: isar);
}

@riverpod
class ReposController extends _$ReposController {
  @override
  Stream<List<GithubRepo>> build(String username) {
    // Start background sync (page 1 by default)
    ref.read(githubRepoRepositoryProvider).syncUserRepos(username).catchError((
      _,
    ) {
      // Ignored for offline-first resilience
    });

    // Return the stream from Isar
    return ref.read(githubRepoRepositoryProvider).watchUserRepos(username);
  }

  Future<void> loadMore(String username, int page) async {
    try {
      await ref
          .read(githubRepoRepositoryProvider)
          .syncUserRepos(username, page: page);
    } catch (e) {
      // Handle error gracefully or propagate to UI
    }
  }

  Future<void> refresh() async {
    try {
      await ref.read(githubRepoRepositoryProvider).syncUserRepos(username, page: 1);
    } catch (e) {
      // Ignore
    }
  }
}
