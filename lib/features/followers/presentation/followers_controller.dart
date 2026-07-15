import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/followers_repository.dart';
import '../../profile/domain/github_user.dart';
import '../../../core/providers/core_providers.dart';
import '../../auth/presentation/auth_controller.dart';

part 'followers_controller.g.dart';

@riverpod
FollowersRepository followersRepository(FollowersRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  final isar = ref.watch(isarProvider);
  return FollowersRepository(apiClient: apiClient, isar: isar);
}

@riverpod
class FollowersController extends _$FollowersController {
  @override
  Stream<List<GithubUser>> build() {
    final username = ref.watch(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
    
    // Background sync
    ref.read(followersRepositoryProvider).syncFollowers(username).catchError((_) {});

    return ref.read(followersRepositoryProvider).watchFollowers(username);
  }

  Future<void> loadMore(int page) async {
    final username = ref.read(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
    try {
      await ref.read(followersRepositoryProvider).syncFollowers(username, page: page);
    } catch (e) {
      // Ignore
    }
  }

  Future<void> refresh() async {
    final username = ref.read(authControllerProvider).valueOrNull ?? 'sahilyadav-01';
    try {
      await ref.read(followersRepositoryProvider).syncFollowers(username, page: 1);
    } catch (e) {
      // Ignore
    }
  }
}
