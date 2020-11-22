// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomePageStateTearOff {
  const _$HomePageStateTearOff();

// ignore: unused_element
  _HomepageState call(
      {int count = 0,
      String todo,
      List<Map<String, String>> todoItem = const [],
      bool isDone = false}) {
    return _HomepageState(
      count: count,
      todo: todo,
      todoItem: todoItem,
      isDone: isDone,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomePageState = _$HomePageStateTearOff();

/// @nodoc
mixin _$HomePageState {
  int get count;
  String get todo;
  List<Map<String, String>> get todoItem;
  bool get isDone;

  $HomePageStateCopyWith<HomePageState> get copyWith;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      String todo,
      List<Map<String, String>> todoItem,
      bool isDone});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object todo = freezed,
    Object todoItem = freezed,
    Object isDone = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      todo: todo == freezed ? _value.todo : todo as String,
      todoItem: todoItem == freezed
          ? _value.todoItem
          : todoItem as List<Map<String, String>>,
      isDone: isDone == freezed ? _value.isDone : isDone as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomepageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$HomepageStateCopyWith(
          _HomepageState value, $Res Function(_HomepageState) then) =
      __$HomepageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      String todo,
      List<Map<String, String>> todoItem,
      bool isDone});
}

/// @nodoc
class __$HomepageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$HomepageStateCopyWith<$Res> {
  __$HomepageStateCopyWithImpl(
      _HomepageState _value, $Res Function(_HomepageState) _then)
      : super(_value, (v) => _then(v as _HomepageState));

  @override
  _HomepageState get _value => super._value as _HomepageState;

  @override
  $Res call({
    Object count = freezed,
    Object todo = freezed,
    Object todoItem = freezed,
    Object isDone = freezed,
  }) {
    return _then(_HomepageState(
      count: count == freezed ? _value.count : count as int,
      todo: todo == freezed ? _value.todo : todo as String,
      todoItem: todoItem == freezed
          ? _value.todoItem
          : todoItem as List<Map<String, String>>,
      isDone: isDone == freezed ? _value.isDone : isDone as bool,
    ));
  }
}

/// @nodoc
class _$_HomepageState implements _HomepageState {
  const _$_HomepageState(
      {this.count = 0,
      this.todo,
      this.todoItem = const [],
      this.isDone = false})
      : assert(count != null),
        assert(todoItem != null),
        assert(isDone != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @override
  final String todo;
  @JsonKey(defaultValue: const [])
  @override
  final List<Map<String, String>> todoItem;
  @JsonKey(defaultValue: false)
  @override
  final bool isDone;

  @override
  String toString() {
    return 'HomePageState(count: $count, todo: $todo, todoItem: $todoItem, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomepageState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)) &&
            (identical(other.todoItem, todoItem) ||
                const DeepCollectionEquality()
                    .equals(other.todoItem, todoItem)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(todo) ^
      const DeepCollectionEquality().hash(todoItem) ^
      const DeepCollectionEquality().hash(isDone);

  @override
  _$HomepageStateCopyWith<_HomepageState> get copyWith =>
      __$HomepageStateCopyWithImpl<_HomepageState>(this, _$identity);
}

abstract class _HomepageState implements HomePageState {
  const factory _HomepageState(
      {int count,
      String todo,
      List<Map<String, String>> todoItem,
      bool isDone}) = _$_HomepageState;

  @override
  int get count;
  @override
  String get todo;
  @override
  List<Map<String, String>> get todoItem;
  @override
  bool get isDone;
  @override
  _$HomepageStateCopyWith<_HomepageState> get copyWith;
}
