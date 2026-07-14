// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileRepositoryHash() => r'a418040ab411f107fba532de8de16ac2d7b772cf';

/// See also [profileRepository].
@ProviderFor(profileRepository)
final profileRepositoryProvider =
    AutoDisposeProvider<ProfileRepository>.internal(
      profileRepository,
      name: r'profileRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$profileRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProfileRepositoryRef = AutoDisposeProviderRef<ProfileRepository>;
String _$profileControllerHash() => r'4487a594aa07f30ef2774c57278989ea18909c6d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProfileController
    extends BuildlessAutoDisposeStreamNotifier<GithubUser?> {
  late final String username;

  Stream<GithubUser?> build(String username);
}

/// See also [ProfileController].
@ProviderFor(ProfileController)
const profileControllerProvider = ProfileControllerFamily();

/// See also [ProfileController].
class ProfileControllerFamily extends Family<AsyncValue<GithubUser?>> {
  /// See also [ProfileController].
  const ProfileControllerFamily();

  /// See also [ProfileController].
  ProfileControllerProvider call(String username) {
    return ProfileControllerProvider(username);
  }

  @override
  ProfileControllerProvider getProviderOverride(
    covariant ProfileControllerProvider provider,
  ) {
    return call(provider.username);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'profileControllerProvider';
}

/// See also [ProfileController].
class ProfileControllerProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<ProfileController, GithubUser?> {
  /// See also [ProfileController].
  ProfileControllerProvider(String username)
    : this._internal(
        () => ProfileController()..username = username,
        from: profileControllerProvider,
        name: r'profileControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$profileControllerHash,
        dependencies: ProfileControllerFamily._dependencies,
        allTransitiveDependencies:
            ProfileControllerFamily._allTransitiveDependencies,
        username: username,
      );

  ProfileControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final String username;

  @override
  Stream<GithubUser?> runNotifierBuild(covariant ProfileController notifier) {
    return notifier.build(username);
  }

  @override
  Override overrideWith(ProfileController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileControllerProvider._internal(
        () => create()..username = username,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<ProfileController, GithubUser?>
  createElement() {
    return _ProfileControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileControllerProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileControllerRef
    on AutoDisposeStreamNotifierProviderRef<GithubUser?> {
  /// The parameter `username` of this provider.
  String get username;
}

class _ProfileControllerProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<ProfileController, GithubUser?>
    with ProfileControllerRef {
  _ProfileControllerProviderElement(super.provider);

  @override
  String get username => (origin as ProfileControllerProvider).username;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
