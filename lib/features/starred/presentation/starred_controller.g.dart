// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starred_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$starredRepositoryHash() => r'39021a3236d1bc2fd597669edede5dd6ca3c8e77';

/// See also [starredRepository].
@ProviderFor(starredRepository)
final starredRepositoryProvider =
    AutoDisposeProvider<StarredRepository>.internal(
      starredRepository,
      name: r'starredRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$starredRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StarredRepositoryRef = AutoDisposeProviderRef<StarredRepository>;
String _$starredControllerHash() => r'2f20e067a75d9f8869b6dd52a5265975dae9d2c0';

/// See also [StarredController].
@ProviderFor(StarredController)
final starredControllerProvider =
    AutoDisposeStreamNotifierProvider<
      StarredController,
      List<GithubRepo>
    >.internal(
      StarredController.new,
      name: r'starredControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$starredControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$StarredController = AutoDisposeStreamNotifier<List<GithubRepo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
