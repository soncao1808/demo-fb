// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddLocationState {
  AddLocationPageStatus get status => throw _privateConstructorUsedError;
  List<Location> get listLocation => throw _privateConstructorUsedError;
  String get searchValue => throw _privateConstructorUsedError;
  Location? get selectLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddLocationStateCopyWith<AddLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddLocationStateCopyWith<$Res> {
  factory $AddLocationStateCopyWith(
          AddLocationState value, $Res Function(AddLocationState) then) =
      _$AddLocationStateCopyWithImpl<$Res, AddLocationState>;
  @useResult
  $Res call(
      {AddLocationPageStatus status,
      List<Location> listLocation,
      String searchValue,
      Location? selectLocation});
}

/// @nodoc
class _$AddLocationStateCopyWithImpl<$Res, $Val extends AddLocationState>
    implements $AddLocationStateCopyWith<$Res> {
  _$AddLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listLocation = null,
    Object? searchValue = null,
    Object? selectLocation = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddLocationPageStatus,
      listLocation: null == listLocation
          ? _value.listLocation
          : listLocation // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectLocation: freezed == selectLocation
          ? _value.selectLocation
          : selectLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddLocationStateCopyWith<$Res>
    implements $AddLocationStateCopyWith<$Res> {
  factory _$$_AddLocationStateCopyWith(
          _$_AddLocationState value, $Res Function(_$_AddLocationState) then) =
      __$$_AddLocationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddLocationPageStatus status,
      List<Location> listLocation,
      String searchValue,
      Location? selectLocation});
}

/// @nodoc
class __$$_AddLocationStateCopyWithImpl<$Res>
    extends _$AddLocationStateCopyWithImpl<$Res, _$_AddLocationState>
    implements _$$_AddLocationStateCopyWith<$Res> {
  __$$_AddLocationStateCopyWithImpl(
      _$_AddLocationState _value, $Res Function(_$_AddLocationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listLocation = null,
    Object? searchValue = null,
    Object? selectLocation = freezed,
  }) {
    return _then(_$_AddLocationState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddLocationPageStatus,
      listLocation: null == listLocation
          ? _value._listLocation
          : listLocation // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectLocation: freezed == selectLocation
          ? _value.selectLocation
          : selectLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc

class _$_AddLocationState extends _AddLocationState {
  _$_AddLocationState(
      {required this.status,
      required final List<Location> listLocation,
      required this.searchValue,
      required this.selectLocation})
      : _listLocation = listLocation,
        super._();

  @override
  final AddLocationPageStatus status;
  final List<Location> _listLocation;
  @override
  List<Location> get listLocation {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listLocation);
  }

  @override
  final String searchValue;
  @override
  final Location? selectLocation;

  @override
  String toString() {
    return 'AddLocationState(status: $status, listLocation: $listLocation, searchValue: $searchValue, selectLocation: $selectLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddLocationState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listLocation, _listLocation) &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue) &&
            (identical(other.selectLocation, selectLocation) ||
                other.selectLocation == selectLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_listLocation),
      searchValue,
      selectLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddLocationStateCopyWith<_$_AddLocationState> get copyWith =>
      __$$_AddLocationStateCopyWithImpl<_$_AddLocationState>(this, _$identity);
}

abstract class _AddLocationState extends AddLocationState {
  factory _AddLocationState(
      {required final AddLocationPageStatus status,
      required final List<Location> listLocation,
      required final String searchValue,
      required final Location? selectLocation}) = _$_AddLocationState;
  _AddLocationState._() : super._();

  @override
  AddLocationPageStatus get status;
  @override
  List<Location> get listLocation;
  @override
  String get searchValue;
  @override
  Location? get selectLocation;
  @override
  @JsonKey(ignore: true)
  _$$_AddLocationStateCopyWith<_$_AddLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
