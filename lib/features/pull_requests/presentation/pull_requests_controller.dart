import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/pull_request_model.dart';
import '../data/pull_requests_repository.dart';

part 'pull_requests_controller.g.dart';

@riverpod
class PullRequestsController extends _$PullRequestsController {
  @override
  FutureOr<List<PullRequestModel>> build(String owner, String repo) async {
    return _fetchPullRequests();
  }

  Future<List<PullRequestModel>> _fetchPullRequests() async {
    final repository = ref.read(pullRequestsRepositoryProvider);
    return repository.getPullRequests(owner, repo);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchPullRequests());
  }
}
