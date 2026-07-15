import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/api/api_client.dart';
import '../../../core/providers/core_providers.dart';
import 'pull_request_model.dart';

part 'pull_requests_repository.g.dart';

class PullRequestsRepository {
  final ApiClient _apiClient;

  PullRequestsRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<List<PullRequestModel>> getPullRequests(String owner, String repo, {int page = 1, int perPage = 30}) async {
    final response = await _apiClient.get(
      '/repos/$owner/$repo/pulls',
      queryParameters: {
        'state': 'open',
        'page': page,
        'per_page': perPage,
      },
    );

    if (response is List) {
      return response.map((json) => PullRequestModel.fromJson(json)).toList();
    }
    return [];
  }
}

@riverpod
PullRequestsRepository pullRequestsRepository(PullRequestsRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  return PullRequestsRepository(apiClient: apiClient);
}
