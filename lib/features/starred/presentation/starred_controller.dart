import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/starred_repository.dart';
import '../../repositories/domain/github_repo.dart';
import '../../../core/providers/core_providers.dart';
import '../../auth/presentation/auth_controller.dart';

part 'starred_controller.g.dart';

@riverpod
StarredRepository starredRepository(StarredRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  final isar = ref.watch(isarProvider);
  return StarredRepository(apiClient: apiClient, isar: isar);
}

@riverpod
class StarredController extends _$StarredController {
  @override
  Stream<List<GithubRepo>> build() {
    final username = ref.watch(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
    
    // Background sync
    ref.read(starredRepositoryProvider).syncStarredRepos(username).catchError((_) {});

    return ref.read(starredRepositoryProvider).watchStarredRepos(username);
  }

  Future<void> loadMore(int page) async {
    final username = ref.watch(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
    try {
      await ref.read(starredRepositoryProvider).syncStarredRepos(username, page: page);
    } catch (e) {
      // Ignore
    }
  }

  Future<void> refresh() async {
    final username = ref.watch(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
    try {
      await ref.read(starredRepositoryProvider).syncStarredRepos(username, page: 1);
    } catch (e) {
      // Ignore
    }
  }
}
