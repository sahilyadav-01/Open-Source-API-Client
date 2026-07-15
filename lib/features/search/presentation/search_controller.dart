import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/database/entities/search_history_entity.dart';
import '../../repositories/domain/github_repo.dart';
import '../data/search_repository.dart';
import '../../../core/database/isar_database.dart';

part 'search_controller.g.dart';

@riverpod
SearchRepository searchRepository(SearchRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  final isar = IsarDatabase().isar;
  
  return SearchRepository(
    apiClient: apiClient,
    isar: isar,
  );
}

@riverpod
class RecentSearchesController extends _$RecentSearchesController {
  @override
  FutureOr<List<SearchHistoryEntity>> build() async {
    return _fetchRecentSearches();
  }

  Future<List<SearchHistoryEntity>> _fetchRecentSearches() async {
    final repository = ref.read(searchRepositoryProvider);
    return repository.getRecentSearches();
  }

  Future<void> refreshSearches() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchRecentSearches());
  }

  Future<void> clearHistory() async {
    final repository = ref.read(searchRepositoryProvider);
    await repository.clearSearchHistory();
    await refreshSearches();
  }
}

@riverpod
class SearchQueryController extends _$SearchQueryController {
  Timer? _debounceTimer;

  @override
  AsyncValue<List<GithubRepo>> build() {
    return const AsyncValue.data([]);
  }

  void search(String query) {
    if (query.trim().isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }

    state = const AsyncValue.loading();

    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () async {
      try {
        final repository = ref.read(searchRepositoryProvider);
        final results = await repository.searchRepositories(query);
        
        // Save to recent searches
        await repository.saveSearchQuery(query);
        ref.read(recentSearchesControllerProvider.notifier).refreshSearches();

        state = AsyncValue.data(results);
      } catch (e, st) {
        state = AsyncValue.error(e, st);
      }
    });
  }

  void clearSearch() {
    _debounceTimer?.cancel();
    state = const AsyncValue.data([]);
  }
}
