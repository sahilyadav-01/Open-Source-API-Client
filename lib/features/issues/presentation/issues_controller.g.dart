// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issues_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$issuesControllerHash() => r'af92ca8edd9f759495984a2ffddbf85391c204fc';

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

abstract class _$IssuesController
    extends BuildlessAutoDisposeAsyncNotifier<List<IssueModel>> {
  late final String owner;
  late final String repo;

  FutureOr<List<IssueModel>> build(String owner, String repo);
}

/// See also [IssuesController].
@ProviderFor(IssuesController)
const issuesControllerProvider = IssuesControllerFamily();

/// See also [IssuesController].
class IssuesControllerFamily extends Family<AsyncValue<List<IssueModel>>> {
  /// See also [IssuesController].
  const IssuesControllerFamily();

  /// See also [IssuesController].
  IssuesControllerProvider call(String owner, String repo) {
    return IssuesControllerProvider(owner, repo);
  }

  @override
  IssuesControllerProvider getProviderOverride(
    covariant IssuesControllerProvider provider,
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
  String? get name => r'issuesControllerProvider';
}

/// See also [IssuesController].
class IssuesControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          IssuesController,
          List<IssueModel>
        > {
  /// See also [IssuesController].
  IssuesControllerProvider(String owner, String repo)
    : this._internal(
        () => IssuesController()
          ..owner = owner
          ..repo = repo,
        from: issuesControllerProvider,
        name: r'issuesControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$issuesControllerHash,
        dependencies: IssuesControllerFamily._dependencies,
        allTransitiveDependencies:
            IssuesControllerFamily._allTransitiveDependencies,
        owner: owner,
        repo: repo,
      );

  IssuesControllerProvider._internal(
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
  FutureOr<List<IssueModel>> runNotifierBuild(
    covariant IssuesController notifier,
  ) {
    return notifier.build(owner, repo);
  }

  @override
  Override overrideWith(IssuesController Function() create) {
    return ProviderOverride(
      origin: this,
      override: IssuesControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<IssuesController, List<IssueModel>>
  createElement() {
    return _IssuesControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IssuesControllerProvider &&
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
mixin IssuesControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<IssueModel>> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repo` of this provider.
  String get repo;
}

class _IssuesControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          IssuesController,
          List<IssueModel>
        >
    with IssuesControllerRef {
  _IssuesControllerProviderElement(super.provider);

  @override
  String get owner => (origin as IssuesControllerProvider).owner;
  @override
  String get repo => (origin as IssuesControllerProvider).repo;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
