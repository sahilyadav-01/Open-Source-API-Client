// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$followingRepositoryHash() =>
    r'3a7a972460596602a353636d9ac989c7db8c9fb2';

/// See also [followingRepository].
@ProviderFor(followingRepository)
final followingRepositoryProvider =
    AutoDisposeProvider<FollowingRepository>.internal(
      followingRepository,
      name: r'followingRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$followingRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FollowingRepositoryRef = AutoDisposeProviderRef<FollowingRepository>;
String _$followingControllerHash() =>
    r'9b60b07b2602f98c99c3c0d2aecc8447ca4f654a';

/// See also [FollowingController].
@ProviderFor(FollowingController)
final followingControllerProvider =
    AutoDisposeStreamNotifierProvider<
      FollowingController,
      List<GithubUser>
    >.internal(
      FollowingController.new,
      name: r'followingControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$followingControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$FollowingController = AutoDisposeStreamNotifier<List<GithubUser>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
