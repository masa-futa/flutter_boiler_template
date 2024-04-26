// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewState {
  List<TodoViewState> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res, HomeViewState>;
  @useResult
  $Res call({List<TodoViewState> todos});
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoViewState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeViewStateImplCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$$HomeViewStateImplCopyWith(
          _$HomeViewStateImpl value, $Res Function(_$HomeViewStateImpl) then) =
      __$$HomeViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoViewState> todos});
}

/// @nodoc
class __$$HomeViewStateImplCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$HomeViewStateImpl>
    implements _$$HomeViewStateImplCopyWith<$Res> {
  __$$HomeViewStateImplCopyWithImpl(
      _$HomeViewStateImpl _value, $Res Function(_$HomeViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$HomeViewStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoViewState>,
    ));
  }
}

/// @nodoc

class _$HomeViewStateImpl implements _HomeViewState {
  _$HomeViewStateImpl({required final List<TodoViewState> todos})
      : _todos = todos;

  final List<TodoViewState> _todos;
  @override
  List<TodoViewState> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'HomeViewState(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      __$$HomeViewStateImplCopyWithImpl<_$HomeViewStateImpl>(this, _$identity);
}

abstract class _HomeViewState implements HomeViewState {
  factory _HomeViewState({required final List<TodoViewState> todos}) =
      _$HomeViewStateImpl;

  @override
  List<TodoViewState> get todos;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoViewState {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoViewStateCopyWith<TodoViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoViewStateCopyWith<$Res> {
  factory $TodoViewStateCopyWith(
          TodoViewState value, $Res Function(TodoViewState) then) =
      _$TodoViewStateCopyWithImpl<$Res, TodoViewState>;
  @useResult
  $Res call({int? id, String title, String message, bool done, bool isDeleted});
}

/// @nodoc
class _$TodoViewStateCopyWithImpl<$Res, $Val extends TodoViewState>
    implements $TodoViewStateCopyWith<$Res> {
  _$TodoViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? message = null,
    Object? done = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoViewStateImplCopyWith<$Res>
    implements $TodoViewStateCopyWith<$Res> {
  factory _$$TodoViewStateImplCopyWith(
          _$TodoViewStateImpl value, $Res Function(_$TodoViewStateImpl) then) =
      __$$TodoViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String title, String message, bool done, bool isDeleted});
}

/// @nodoc
class __$$TodoViewStateImplCopyWithImpl<$Res>
    extends _$TodoViewStateCopyWithImpl<$Res, _$TodoViewStateImpl>
    implements _$$TodoViewStateImplCopyWith<$Res> {
  __$$TodoViewStateImplCopyWithImpl(
      _$TodoViewStateImpl _value, $Res Function(_$TodoViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? message = null,
    Object? done = null,
    Object? isDeleted = null,
  }) {
    return _then(_$TodoViewStateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoViewStateImpl implements _TodoViewState {
  _$TodoViewStateImpl(
      {this.id,
      required this.title,
      required this.message,
      required this.done,
      this.isDeleted = false});

  @override
  final int? id;
  @override
  final String title;
  @override
  final String message;
  @override
  final bool done;
  @override
  @JsonKey()
  final bool isDeleted;

  @override
  String toString() {
    return 'TodoViewState(id: $id, title: $title, message: $message, done: $done, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoViewStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, message, done, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoViewStateImplCopyWith<_$TodoViewStateImpl> get copyWith =>
      __$$TodoViewStateImplCopyWithImpl<_$TodoViewStateImpl>(this, _$identity);
}

abstract class _TodoViewState implements TodoViewState {
  factory _TodoViewState(
      {final int? id,
      required final String title,
      required final String message,
      required final bool done,
      final bool isDeleted}) = _$TodoViewStateImpl;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get message;
  @override
  bool get done;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$TodoViewStateImplCopyWith<_$TodoViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
