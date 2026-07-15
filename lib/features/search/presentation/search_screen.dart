import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'search_controller.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchResults = ref.watch(searchQueryControllerProvider);
    final recentSearches = ref.watch(recentSearchesControllerProvider);
    final isQueryEmpty = _searchController.text.trim().isEmpty;

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Search Repositories...',
            border: InputBorder.none,
            suffixIcon: _searchController.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _searchController.clear();
                      ref.read(searchQueryControllerProvider.notifier).clearSearch();
                      setState(() {});
                    },
                  )
                : null,
          ),
          onChanged: (val) {
            setState(() {});
            ref.read(searchQueryControllerProvider.notifier).search(val);
          },
        ),
      ),
      body: isQueryEmpty
          ? _buildRecentSearches(recentSearches)
          : _buildSearchResults(searchResults),
    );
  }

  Widget _buildRecentSearches(AsyncValue recentSearchesAsync) {
    return recentSearchesAsync.when(
      data: (searches) {
        if (searches.isEmpty) {
          return const Center(child: Text('No recent searches.'));
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Recent Searches', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {
                      ref.read(recentSearchesControllerProvider.notifier).clearHistory();
                    },
                    child: const Text('Clear'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: searches.length,
                itemBuilder: (context, index) {
                  final search = searches[index];
                  return ListTile(
                    leading: const Icon(Icons.history),
                    title: Text(search.query ?? ''),
                    onTap: () {
                      _searchController.text = search.query ?? '';
                      setState(() {});
                      ref.read(searchQueryControllerProvider.notifier).search(search.query ?? '');
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text('Error: $e')),
    );
  }

  Widget _buildSearchResults(AsyncValue searchResultsAsync) {
    return searchResultsAsync.when(
      data: (results) {
        if (results.isEmpty) {
          return const Center(child: Text('No repositories found.'));
        }
        return ListView.builder(
          itemCount: results.length,
          itemBuilder: (context, index) {
            final repo = results[index];
            return ListTile(
              leading: const Icon(Icons.source),
              title: Text(repo.name),
              subtitle: Text(repo.owner?.login ?? ''),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.star, size: 16),
                  const SizedBox(width: 4),
                  Text('${repo.stargazersCount}'),
                ],
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text('Error: $e')),
    );
  }
}
