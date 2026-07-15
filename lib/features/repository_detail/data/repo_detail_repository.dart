import '../../../core/api/api_client.dart';
import '../../../core/exceptions/app_exceptions.dart';

class RepoDetailRepository {
  final ApiClient _apiClient;

  RepoDetailRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<String?> fetchReadme(String owner, String repoName) async {
    try {
      final response = await _apiClient.get(
        '/repos/$owner/$repoName/readme',
        headers: {
          'Accept': 'application/vnd.github.v3.raw',
        },
      );
      // The response data is a string when we request raw content
      if (response is String) {
        return response;
      }
      return null;
    } on NotFoundException {
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
