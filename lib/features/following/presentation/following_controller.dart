import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/following_repository.dart';
import '../../profile/domain/github_user.dart';
import '../../../core/providers/core_providers.dart';
import '../../auth/presentation/auth_controller.dart';

part 'following_controller.g.dart';

@riverpod
FollowingRepository followingRepository(FollowingRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  final isar = ref.watch(isarProvider);
  return FollowingRepository(apiClient: apiClient, isar: isar);
}

@riverpod
class FollowingController extends _$FollowingController {
  @override
  Stream<List<GithubUser>> build() {
    final username = ref.watch(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
    
    // Background sync
    ref.read(followingRepositoryProvider).syncFollowing(username).catchError((_) {});

    return ref.read(followingRepositoryProvider).watchFollowing(username);
  }

  Future<void> loadMore(int page) async {
    final username = ref.read(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
    try {
      await ref.read(followingRepositoryProvider).syncFollowing(username, page: page);
    } catch (e) {
      // Ignore
    }
  }

  Future<void> refresh() async {
    final username = ref.read(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
    try {
      await ref.read(followingRepositoryProvider).syncFollowing(username, page: 1);
    } catch (e) {
      // Ignore
    }
  }
}
