import 'package:isar_community/isar.dart';
import '../../../core/api/api_client.dart';
import '../../../core/database/entities/search_history_entity.dart';
import '../../repositories/domain/github_repo.dart';

class SearchRepository {
  final ApiClient _apiClient;
  final Isar _isar;

  SearchRepository({
    required ApiClient apiClient,
    required Isar isar,
  })  : _apiClient = apiClient,
        _isar = isar;

  Future<List<GithubRepo>> searchRepositories(String query, {int page = 1}) async {
    if (query.trim().isEmpty) return [];

    final response = await _apiClient.get(
      '/search/repositories',
      queryParameters: {
        'q': query,
        'page': page,
        'per_page': 30,
      },
    );

    if (response != null && response['items'] != null) {
      final items = response['items'] as List;
      return items.map((json) => GithubRepo.fromJson(json)).toList();
    }
    return [];
  }

  Future<void> saveSearchQuery(String query) async {
    if (query.trim().isEmpty) return;
    
    final entity = SearchHistoryEntity()
      ..query = query
      ..timestamp = DateTime.now();

    await _isar.writeTxn(() async {
      await _isar.searchHistoryEntitys.put(entity);
    });
  }

  Future<List<SearchHistoryEntity>> getRecentSearches() async {
    final searches = await _isar.searchHistoryEntitys.where().sortByTimestampDesc().limit(10).findAll();
    return searches;
  }

  Future<void> clearSearchHistory() async {
    await _isar.writeTxn(() async {
      await _isar.searchHistoryEntitys.clear();
    });
  }
}
