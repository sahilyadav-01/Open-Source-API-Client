import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/repo_detail_repository.dart';
import '../../../core/providers/core_providers.dart';

part 'repo_detail_controller.g.dart';

@riverpod
RepoDetailRepository repoDetailRepository(RepoDetailRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  return RepoDetailRepository(apiClient: apiClient);
}

@riverpod
class RepoReadmeController extends _$RepoReadmeController {
  @override
  FutureOr<String?> build(String owner, String repoName) {
    return ref.read(repoDetailRepositoryProvider).fetchReadme(owner, repoName);
  }
}
