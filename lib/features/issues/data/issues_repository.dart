import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/api/api_client.dart';
import '../../../core/providers/core_providers.dart';
import 'issue_model.dart';

part 'issues_repository.g.dart';

class IssuesRepository {
  final ApiClient _apiClient;

  IssuesRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<List<IssueModel>> getIssues(String owner, String repo, {int page = 1, int perPage = 30}) async {
    final response = await _apiClient.get(
      '/repos/$owner/$repo/issues',
      queryParameters: {
        'state': 'open',
        'page': page,
        'per_page': perPage,
        // GitHub API returns PRs as issues, so we can't filter out PRs strictly via query params in the REST API,
        // but we can filter them client-side if needed.
      },
    );

    if (response is List) {
      // Filter out pull requests (they have a 'pull_request' key)
      final issuesList = response.where((item) => item['pull_request'] == null).toList();
      return issuesList.map((json) => IssueModel.fromJson(json)).toList();
    }
    return [];
  }
}

@riverpod
IssuesRepository issuesRepository(IssuesRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  return IssuesRepository(apiClient: apiClient);
}
