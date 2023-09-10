// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_tag_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTagState {
  AddTagPageStatus get status => throw _privateConstructorUsedError;
  List<UserTag> get listTag => throw _privateConstructorUsedError;
  String get searchValue => throw _privateConstructorUsedError;
  List<UserTag> get selectTag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTagStateCopyWith<AddTagState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTagStateCopyWith<$Res> {
  factory $AddTagStateCopyWith(
          AddTagState value, $Res Function(AddTagState) then) =
      _$AddTagStateCopyWithImpl<$Res, AddTagState>;
  @useResult
  $Res call(
      {AddTagPageStatus status,
      List<UserTag> listTag,
      String searchValue,
      List<UserTag> selectTag});
}

/// @nodoc
class _$AddTagStateCopyWithImpl<$Res, $Val extends AddTagState>
    implements $AddTagStateCopyWith<$Res> {
  _$AddTagStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listTag = null,
    Object? searchValue = null,
    Object? selectTag = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddTagPageStatus,
      listTag: null == listTag
          ? _value.listTag
          : listTag // ignore: cast_nullable_to_non_nullable
              as List<UserTag>,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectTag: null == selectTag
          ? _value.selectTag
          : selectTag // ignore: cast_nullable_to_non_nullable
              as List<UserTag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddTagStateCopyWith<$Res>
    implements $AddTagStateCopyWith<$Res> {
  factory _$$_AddTagStateCopyWith(
          _$_AddTagState value, $Res Function(_$_AddTagState) then) =
      __$$_AddTagStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddTagPageStatus status,
      List<UserTag> listTag,
      String searchValue,
      List<UserTag> selectTag});
}

/// @nodoc
class __$$_AddTagStateCopyWithImpl<$Res>
    extends _$AddTagStateCopyWithImpl<$Res, _$_AddTagState>
    implements _$$_AddTagStateCopyWith<$Res> {
  __$$_AddTagStateCopyWithImpl(
      _$_AddTagState _value, $Res Function(_$_AddTagState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listTag = null,
    Object? searchValue = null,
    Object? selectTag = null,
  }) {
    return _then(_$_AddTagState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddTagPageStatus,
      listTag: null == listTag
          ? _value._listTag
          : listTag // ignore: cast_nullable_to_non_nullable
              as List<UserTag>,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectTag: null == selectTag
          ? _value._selectTag
          : selectTag // ignore: cast_nullable_to_non_nullable
              as List<UserTag>,
    ));
  }
}

/// @nodoc

class _$_AddTagState extends _AddTagState {
  _$_AddTagState(
      {required this.status,
      required final List<UserTag> listTag,
      required this.searchValue,
      required final List<UserTag> selectTag})
      : _listTag = listTag,
        _selectTag = selectTag,
        super._();

  @override
  final AddTagPageStatus status;
  final List<UserTag> _listTag;
  @override
  List<UserTag> get listTag {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTag);
  }

  @override
  final String searchValue;
  final List<UserTag> _selectTag;
  @override
  List<UserTag> get selectTag {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectTag);
  }

  @override
  String toString() {
    return 'AddTagState(status: $status, listTag: $listTag, searchValue: $searchValue, selectTag: $selectTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTagState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._listTag, _listTag) &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue) &&
            const DeepCollectionEquality()
                .equals(other._selectTag, _selectTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_listTag),
      searchValue,
      const DeepCollectionEquality().hash(_selectTag));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTagStateCopyWith<_$_AddTagState> get copyWith =>
      __$$_AddTagStateCopyWithImpl<_$_AddTagState>(this, _$identity);
}

abstract class _AddTagState extends AddTagState {
  factory _AddTagState(
      {required final AddTagPageStatus status,
      required final List<UserTag> listTag,
      required final String searchValue,
      required final List<UserTag> selectTag}) = _$_AddTagState;
  _AddTagState._() : super._();

  @override
  AddTagPageStatus get status;
  @override
  List<UserTag> get listTag;
  @override
  String get searchValue;
  @override
  List<UserTag> get selectTag;
  @override
  @JsonKey(ignore: true)
  _$$_AddTagStateCopyWith<_$_AddTagState> get copyWith =>
      throw _privateConstructorUsedError;
}
