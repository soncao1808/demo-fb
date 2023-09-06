// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_share_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewShareState {
  ViewSharePageStatus get status => throw _privateConstructorUsedError;
  List<UserPost> get listViewShare => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewShareStateCopyWith<ViewShareState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewShareStateCopyWith<$Res> {
  factory $ViewShareStateCopyWith(
          ViewShareState value, $Res Function(ViewShareState) then) =
      _$ViewShareStateCopyWithImpl<$Res, ViewShareState>;
  @useResult
  $Res call({ViewSharePageStatus status, List<UserPost> listViewShare});
}

/// @nodoc
class _$ViewShareStateCopyWithImpl<$Res, $Val extends ViewShareState>
    implements $ViewShareStateCopyWith<$Res> {
  _$ViewShareStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listViewShare = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ViewSharePageStatus,
      listViewShare: null == listViewShare
          ? _value.listViewShare
          : listViewShare // ignore: cast_nullable_to_non_nullable
              as List<UserPost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewShareStateCopyWith<$Res>
    implements $ViewShareStateCopyWith<$Res> {
  factory _$$_ViewShareStateCopyWith(
          _$_ViewShareState value, $Res Function(_$_ViewShareState) then) =
      __$$_ViewShareStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewSharePageStatus status, List<UserPost> listViewShare});
}

/// @nodoc
class __$$_ViewShareStateCopyWithImpl<$Res>
    extends _$ViewShareStateCopyWithImpl<$Res, _$_ViewShareState>
    implements _$$_ViewShareStateCopyWith<$Res> {
  __$$_ViewShareStateCopyWithImpl(
      _$_ViewShareState _value, $Res Function(_$_ViewShareState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listViewShare = null,
  }) {
    return _then(_$_ViewShareState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ViewSharePageStatus,
      listViewShare: null == listViewShare
          ? _value._listViewShare
          : listViewShare // ignore: cast_nullable_to_non_nullable
              as List<UserPost>,
    ));
  }
}

/// @nodoc

class _$_ViewShareState extends _ViewShareState {
  _$_ViewShareState(
      {required this.status, required final List<UserPost> listViewShare})
      : _listViewShare = listViewShare,
        super._();

  @override
  final ViewSharePageStatus status;
  final List<UserPost> _listViewShare;
  @override
  List<UserPost> get listViewShare {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listViewShare);
  }

  @override
  String toString() {
    return 'ViewShareState(status: $status, listViewShare: $listViewShare)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewShareState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listViewShare, _listViewShare));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_listViewShare));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewShareStateCopyWith<_$_ViewShareState> get copyWith =>
      __$$_ViewShareStateCopyWithImpl<_$_ViewShareState>(this, _$identity);
}

abstract class _ViewShareState extends ViewShareState {
  factory _ViewShareState(
      {required final ViewSharePageStatus status,
      required final List<UserPost> listViewShare}) = _$_ViewShareState;
  _ViewShareState._() : super._();

  @override
  ViewSharePageStatus get status;
  @override
  List<UserPost> get listViewShare;
  @override
  @JsonKey(ignore: true)
  _$$_ViewShareStateCopyWith<_$_ViewShareState> get copyWith =>
      throw _privateConstructorUsedError;
}
