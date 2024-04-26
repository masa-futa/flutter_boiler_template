// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_todo_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addTodoViewModelHash() => r'44883ff32ec6d9e0e25a4d16e095a29d9ff5e425';

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

abstract class _$AddTodoViewModel
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final String title;
  late final String message;

  FutureOr<void> build({
    required String title,
    required String message,
  });
}

/// See also [AddTodoViewModel].
@ProviderFor(AddTodoViewModel)
const addTodoViewModelProvider = AddTodoViewModelFamily();

/// See also [AddTodoViewModel].
class AddTodoViewModelFamily extends Family<AsyncValue<void>> {
  /// See also [AddTodoViewModel].
  const AddTodoViewModelFamily();

  /// See also [AddTodoViewModel].
  AddTodoViewModelProvider call({
    required String title,
    required String message,
  }) {
    return AddTodoViewModelProvider(
      title: title,
      message: message,
    );
  }

  @override
  AddTodoViewModelProvider getProviderOverride(
    covariant AddTodoViewModelProvider provider,
  ) {
    return call(
      title: provider.title,
      message: provider.message,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addTodoViewModelProvider';
}

/// See also [AddTodoViewModel].
class AddTodoViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AddTodoViewModel, void> {
  /// See also [AddTodoViewModel].
  AddTodoViewModelProvider({
    required String title,
    required String message,
  }) : this._internal(
          () => AddTodoViewModel()
            ..title = title
            ..message = message,
          from: addTodoViewModelProvider,
          name: r'addTodoViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addTodoViewModelHash,
          dependencies: AddTodoViewModelFamily._dependencies,
          allTransitiveDependencies:
              AddTodoViewModelFamily._allTransitiveDependencies,
          title: title,
          message: message,
        );

  AddTodoViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
    required this.message,
  }) : super.internal();

  final String title;
  final String message;

  @override
  FutureOr<void> runNotifierBuild(
    covariant AddTodoViewModel notifier,
  ) {
    return notifier.build(
      title: title,
      message: message,
    );
  }

  @override
  Override overrideWith(AddTodoViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddTodoViewModelProvider._internal(
        () => create()
          ..title = title
          ..message = message,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
        message: message,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AddTodoViewModel, void>
      createElement() {
    return _AddTodoViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddTodoViewModelProvider &&
        other.title == title &&
        other.message == message;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, message.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddTodoViewModelRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `title` of this provider.
  String get title;

  /// The parameter `message` of this provider.
  String get message;
}

class _AddTodoViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AddTodoViewModel, void>
    with AddTodoViewModelRef {
  _AddTodoViewModelProviderElement(super.provider);

  @override
  String get title => (origin as AddTodoViewModelProvider).title;
  @override
  String get message => (origin as AddTodoViewModelProvider).message;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
