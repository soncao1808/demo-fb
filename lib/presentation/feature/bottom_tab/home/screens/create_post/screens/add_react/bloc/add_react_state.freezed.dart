// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_react_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddReactState {
  AddReactPageStatus get status => throw _privateConstructorUsedError;
  List<React> get listReact => throw _privateConstructorUsedError;
  String get searchValue => throw _privateConstructorUsedError;
  React? get selectReact => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddReactStateCopyWith<AddReactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReactStateCopyWith<$Res> {
  factory $AddReactStateCopyWith(
          AddReactState value, $Res Function(AddReactState) then) =
      _$AddReactStateCopyWithImpl<$Res, AddReactState>;
  @useResult
  $Res call(
      {AddReactPageStatus status,
      List<React> listReact,
      String searchValue,
      React? selectReact});
}

/// @nodoc
class _$AddReactStateCopyWithImpl<$Res, $Val extends AddReactState>
    implements $AddReactStateCopyWith<$Res> {
  _$AddReactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listReact = null,
    Object? searchValue = null,
    Object? selectReact = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddReactPageStatus,
      listReact: null == listReact
          ? _value.listReact
          : listReact // ignore: cast_nullable_to_non_nullable
              as List<React>,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectReact: freezed == selectReact
          ? _value.selectReact
          : selectReact // ignore: cast_nullable_to_non_nullable
              as React?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddReactStateCopyWith<$Res>
    implements $AddReactStateCopyWith<$Res> {
  factory _$$_AddReactStateCopyWith(
          _$_AddReactState value, $Res Function(_$_AddReactState) then) =
      __$$_AddReactStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddReactPageStatus status,
      List<React> listReact,
      String searchValue,
      React? selectReact});
}

/// @nodoc
class __$$_AddReactStateCopyWithImpl<$Res>
    extends _$AddReactStateCopyWithImpl<$Res, _$_AddReactState>
    implements _$$_AddReactStateCopyWith<$Res> {
  __$$_AddReactStateCopyWithImpl(
      _$_AddReactState _value, $Res Function(_$_AddReactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listReact = null,
    Object? searchValue = null,
    Object? selectReact = freezed,
  }) {
    return _then(_$_AddReactState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddReactPageStatus,
      listReact: null == listReact
          ? _value._listReact
          : listReact // ignore: cast_nullable_to_non_nullable
              as List<React>,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectReact: freezed == selectReact
          ? _value.selectReact
          : selectReact // ignore: cast_nullable_to_non_nullable
              as React?,
    ));
  }
}

/// @nodoc

class _$_AddReactState extends _AddReactState {
  _$_AddReactState(
      {required this.status,
      required final List<React> listReact,
      required this.searchValue,
      required this.selectReact})
      : _listReact = listReact,
        super._();

  @override
  final AddReactPageStatus status;
  final List<React> _listReact;
  @override
  List<React> get listReact {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listReact);
  }

  @override
  final String searchValue;
  @override
  final React? selectReact;

  @override
  String toString() {
    return 'AddReactState(status: $status, listReact: $listReact, searchValue: $searchValue, selectReact: $selectReact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddReactState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listReact, _listReact) &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue) &&
            (identical(other.selectReact, selectReact) ||
                other.selectReact == selectReact));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_listReact),
      searchValue,
      selectReact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddReactStateCopyWith<_$_AddReactState> get copyWith =>
      __$$_AddReactStateCopyWithImpl<_$_AddReactState>(this, _$identity);
}

abstract class _AddReactState extends AddReactState {
  factory _AddReactState(
      {required final AddReactPageStatus status,
      required final List<React> listReact,
      required final String searchValue,
      required final React? selectReact}) = _$_AddReactState;
  _AddReactState._() : super._();

  @override
  AddReactPageStatus get status;
  @override
  List<React> get listReact;
  @override
  String get searchValue;
  @override
  React? get selectReact;
  @override
  @JsonKey(ignore: true)
  _$$_AddReactStateCopyWith<_$_AddReactState> get copyWith =>
      throw _privateConstructorUsedError;
}
