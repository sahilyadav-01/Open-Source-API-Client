import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/profile_repository.dart';
import '../domain/github_user.dart';

part 'profile_controller.g.dart';

@riverpod
ProfileRepository profileRepository(ProfileRepositoryRef ref) {
  return ProfileRepository();
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
}
