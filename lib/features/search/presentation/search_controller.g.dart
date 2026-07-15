// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchRepositoryHash() => r'055475b5454117e7603fc231d7119cc66a5d48fe';

/// See also [searchRepository].
@ProviderFor(searchRepository)
final searchRepositoryProvider = AutoDisposeProvider<SearchRepository>.internal(
  searchRepository,
  name: r'searchRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SearchRepositoryRef = AutoDisposeProviderRef<SearchRepository>;
String _$recentSearchesControllerHash() =>
    r'870c5f97e6306a9cd87a966e3d69ee2bd492558e';

/// See also [RecentSearchesController].
@ProviderFor(RecentSearchesController)
final recentSearchesControllerProvider =
    AutoDisposeAsyncNotifierProvider<
      RecentSearchesController,
      List<SearchHistoryEntity>
    >.internal(
      RecentSearchesController.new,
      name: r'recentSearchesControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$recentSearchesControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$RecentSearchesController =
    AutoDisposeAsyncNotifier<List<SearchHistoryEntity>>;
String _$searchQueryControllerHash() =>
    r'f5d9ce44863196af5f04ae3a4df01e31ea4b7195';

/// See also [SearchQueryController].
@ProviderFor(SearchQueryController)
final searchQueryControllerProvider =
    AutoDisposeNotifierProvider<
      SearchQueryController,
      AsyncValue<List<GithubRepo>>
    >.internal(
      SearchQueryController.new,
      name: r'searchQueryControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$searchQueryControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SearchQueryController =
    AutoDisposeNotifier<AsyncValue<List<GithubRepo>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
