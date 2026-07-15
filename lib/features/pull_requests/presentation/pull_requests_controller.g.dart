// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_requests_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pullRequestsControllerHash() =>
    r'62938c5ca3c17ca4ca35a15fcc9bcd3c176d2238';

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

abstract class _$PullRequestsController
    extends BuildlessAutoDisposeAsyncNotifier<List<PullRequestModel>> {
  late final String owner;
  late final String repo;

  FutureOr<List<PullRequestModel>> build(String owner, String repo);
}

/// See also [PullRequestsController].
@ProviderFor(PullRequestsController)
const pullRequestsControllerProvider = PullRequestsControllerFamily();

/// See also [PullRequestsController].
class PullRequestsControllerFamily
    extends Family<AsyncValue<List<PullRequestModel>>> {
  /// See also [PullRequestsController].
  const PullRequestsControllerFamily();

  /// See also [PullRequestsController].
  PullRequestsControllerProvider call(String owner, String repo) {
    return PullRequestsControllerProvider(owner, repo);
  }

  @override
  PullRequestsControllerProvider getProviderOverride(
    covariant PullRequestsControllerProvider provider,
  ) {
    return call(provider.owner, provider.repo);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pullRequestsControllerProvider';
}

/// See also [PullRequestsController].
class PullRequestsControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          PullRequestsController,
          List<PullRequestModel>
        > {
  /// See also [PullRequestsController].
  PullRequestsControllerProvider(String owner, String repo)
    : this._internal(
        () => PullRequestsController()
          ..owner = owner
          ..repo = repo,
        from: pullRequestsControllerProvider,
        name: r'pullRequestsControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$pullRequestsControllerHash,
        dependencies: PullRequestsControllerFamily._dependencies,
        allTransitiveDependencies:
            PullRequestsControllerFamily._allTransitiveDependencies,
        owner: owner,
        repo: repo,
      );

  PullRequestsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repo,
  }) : super.internal();

  final String owner;
  final String repo;

  @override
  FutureOr<List<PullRequestModel>> runNotifierBuild(
    covariant PullRequestsController notifier,
  ) {
    return notifier.build(owner, repo);
  }

  @override
  Override overrideWith(PullRequestsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PullRequestsControllerProvider._internal(
        () => create()
          ..owner = owner
          ..repo = repo,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repo: repo,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    PullRequestsController,
    List<PullRequestModel>
  >
  createElement() {
    return _PullRequestsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PullRequestsControllerProvider &&
        other.owner == owner &&
        other.repo == repo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PullRequestsControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<PullRequestModel>> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repo` of this provider.
  String get repo;
}

class _PullRequestsControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          PullRequestsController,
          List<PullRequestModel>
        >
    with PullRequestsControllerRef {
  _PullRequestsControllerProviderElement(super.provider);

  @override
  String get owner => (origin as PullRequestsControllerProvider).owner;
  @override
  String get repo => (origin as PullRequestsControllerProvider).repo;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
