import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/profile_repository.dart';
import '../domain/github_user.dart';

import '../../../core/providers/core_providers.dart';

part 'profile_controller.g.dart';

@riverpod
ProfileRepository profileRepository(ProfileRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  final isar = ref.watch(isarProvider);
  return ProfileRepository(apiClient: apiClient, isar: isar);
}

@riverpod
class ProfileController extends _$ProfileController {
  @override
  Stream<GithubUser?> build(String username) {
    // Start background sync
    ref.read(profileRepositoryProvider).syncUser(username).catchError((_) {
      // Ignored for offline-first resilience
    });

    // Return the stream from Isar
    return ref.read(profileRepositoryProvider).watchUser(username);
  }

  Future<void> refresh() async {
    try {
      await ref.read(profileRepositoryProvider).syncUser(username);
    } catch (e) {
      // Ignore
    }
  }
}
