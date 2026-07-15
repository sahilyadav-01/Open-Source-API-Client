// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followers_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$followersRepositoryHash() =>
    r'd81466116d840722f301480eae414015e4ba52b3';

/// See also [followersRepository].
@ProviderFor(followersRepository)
final followersRepositoryProvider =
    AutoDisposeProvider<FollowersRepository>.internal(
      followersRepository,
      name: r'followersRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$followersRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FollowersRepositoryRef = AutoDisposeProviderRef<FollowersRepository>;
String _$followersControllerHash() =>
    r'99a292e0af254be101f062cbf20a814dd51792bd';

/// See also [FollowersController].
@ProviderFor(FollowersController)
final followersControllerProvider =
    AutoDisposeStreamNotifierProvider<
      FollowersController,
      List<GithubUser>
    >.internal(
      FollowersController.new,
      name: r'followersControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$followersControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$FollowersController = AutoDisposeStreamNotifier<List<GithubUser>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
