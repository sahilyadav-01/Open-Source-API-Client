// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$githubRepoRepositoryHash() =>
    r'e9cf541b4f0d656211bf358d63ce3a0f965941fd';

/// See also [githubRepoRepository].
@ProviderFor(githubRepoRepository)
final githubRepoRepositoryProvider =
    AutoDisposeProvider<GithubRepoRepository>.internal(
      githubRepoRepository,
      name: r'githubRepoRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$githubRepoRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GithubRepoRepositoryRef = AutoDisposeProviderRef<GithubRepoRepository>;
String _$reposControllerHash() => r'c8367fcc1a2ab3f76ba5d3660734500497a31679';

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

abstract class _$ReposController
    extends BuildlessAutoDisposeStreamNotifier<List<GithubRepo>> {
  late final String username;

  Stream<List<GithubRepo>> build(String username);
}

/// See also [ReposController].
@ProviderFor(ReposController)
const reposControllerProvider = ReposControllerFamily();

/// See also [ReposController].
class ReposControllerFamily extends Family<AsyncValue<List<GithubRepo>>> {
  /// See also [ReposController].
  const ReposControllerFamily();

  /// See also [ReposController].
  ReposControllerProvider call(String username) {
    return ReposControllerProvider(username);
  }

  @override
  ReposControllerProvider getProviderOverride(
    covariant ReposControllerProvider provider,
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
  String? get name => r'reposControllerProvider';
}

/// See also [ReposController].
class ReposControllerProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          ReposController,
          List<GithubRepo>
        > {
  /// See also [ReposController].
  ReposControllerProvider(String username)
    : this._internal(
        () => ReposController()..username = username,
        from: reposControllerProvider,
        name: r'reposControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$reposControllerHash,
        dependencies: ReposControllerFamily._dependencies,
        allTransitiveDependencies:
            ReposControllerFamily._allTransitiveDependencies,
        username: username,
      );

  ReposControllerProvider._internal(
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
  Stream<List<GithubRepo>> runNotifierBuild(
    covariant ReposController notifier,
  ) {
    return notifier.build(username);
  }

  @override
  Override overrideWith(ReposController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReposControllerProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<ReposController, List<GithubRepo>>
  createElement() {
    return _ReposControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReposControllerProvider && other.username == username;
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
mixin ReposControllerRef
    on AutoDisposeStreamNotifierProviderRef<List<GithubRepo>> {
  /// The parameter `username` of this provider.
  String get username;
}

class _ReposControllerProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          ReposController,
          List<GithubRepo>
        >
    with ReposControllerRef {
  _ReposControllerProviderElement(super.provider);

  @override
  String get username => (origin as ReposControllerProvider).username;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
