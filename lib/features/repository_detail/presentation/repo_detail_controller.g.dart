// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repoDetailRepositoryHash() =>
    r'172ee70d29614be2c834d18a794cc447f09580f9';

/// See also [repoDetailRepository].
@ProviderFor(repoDetailRepository)
final repoDetailRepositoryProvider =
    AutoDisposeProvider<RepoDetailRepository>.internal(
      repoDetailRepository,
      name: r'repoDetailRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$repoDetailRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RepoDetailRepositoryRef = AutoDisposeProviderRef<RepoDetailRepository>;
String _$repoReadmeControllerHash() =>
    r'd1407ce04dc6793d8ff10fc1c44deefb575c462f';

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

abstract class _$RepoReadmeController
    extends BuildlessAutoDisposeAsyncNotifier<String?> {
  late final String owner;
  late final String repoName;

  FutureOr<String?> build(String owner, String repoName);
}

/// See also [RepoReadmeController].
@ProviderFor(RepoReadmeController)
const repoReadmeControllerProvider = RepoReadmeControllerFamily();

/// See also [RepoReadmeController].
class RepoReadmeControllerFamily extends Family<AsyncValue<String?>> {
  /// See also [RepoReadmeController].
  const RepoReadmeControllerFamily();

  /// See also [RepoReadmeController].
  RepoReadmeControllerProvider call(String owner, String repoName) {
    return RepoReadmeControllerProvider(owner, repoName);
  }

  @override
  RepoReadmeControllerProvider getProviderOverride(
    covariant RepoReadmeControllerProvider provider,
  ) {
    return call(provider.owner, provider.repoName);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repoReadmeControllerProvider';
}

/// See also [RepoReadmeController].
class RepoReadmeControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<RepoReadmeController, String?> {
  /// See also [RepoReadmeController].
  RepoReadmeControllerProvider(String owner, String repoName)
    : this._internal(
        () => RepoReadmeController()
          ..owner = owner
          ..repoName = repoName,
        from: repoReadmeControllerProvider,
        name: r'repoReadmeControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$repoReadmeControllerHash,
        dependencies: RepoReadmeControllerFamily._dependencies,
        allTransitiveDependencies:
            RepoReadmeControllerFamily._allTransitiveDependencies,
        owner: owner,
        repoName: repoName,
      );

  RepoReadmeControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repoName,
  }) : super.internal();

  final String owner;
  final String repoName;

  @override
  FutureOr<String?> runNotifierBuild(covariant RepoReadmeController notifier) {
    return notifier.build(owner, repoName);
  }

  @override
  Override overrideWith(RepoReadmeController Function() create) {
    return ProviderOverride(
      origin: this,
      override: RepoReadmeControllerProvider._internal(
        () => create()
          ..owner = owner
          ..repoName = repoName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repoName: repoName,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RepoReadmeController, String?>
  createElement() {
    return _RepoReadmeControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoReadmeControllerProvider &&
        other.owner == owner &&
        other.repoName == repoName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repoName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RepoReadmeControllerRef on AutoDisposeAsyncNotifierProviderRef<String?> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repoName` of this provider.
  String get repoName;
}

class _RepoReadmeControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<RepoReadmeController, String?>
    with RepoReadmeControllerRef {
  _RepoReadmeControllerProviderElement(super.provider);

  @override
  String get owner => (origin as RepoReadmeControllerProvider).owner;
  @override
  String get repoName => (origin as RepoReadmeControllerProvider).repoName;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
