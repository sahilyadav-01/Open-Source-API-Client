import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/issue_model.dart';
import '../data/issues_repository.dart';

part 'issues_controller.g.dart';

@riverpod
class IssuesController extends _$IssuesController {
  @override
  FutureOr<List<IssueModel>> build(String owner, String repo) async {
    return _fetchIssues();
  }

  Future<List<IssueModel>> _fetchIssues() async {
    final repository = ref.read(issuesRepositoryProvider);
    return repository.getIssues(owner, repo);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchIssues());
  }
}
