// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_like_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewLikeState {
  ViewLikePageStatus get status => throw _privateConstructorUsedError;
  List<UserPost> get listViewLike => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewLikeStateCopyWith<ViewLikeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewLikeStateCopyWith<$Res> {
  factory $ViewLikeStateCopyWith(
          ViewLikeState value, $Res Function(ViewLikeState) then) =
      _$ViewLikeStateCopyWithImpl<$Res, ViewLikeState>;
  @useResult
  $Res call({ViewLikePageStatus status, List<UserPost> listViewLike});
}

/// @nodoc
class _$ViewLikeStateCopyWithImpl<$Res, $Val extends ViewLikeState>
    implements $ViewLikeStateCopyWith<$Res> {
  _$ViewLikeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listViewLike = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ViewLikePageStatus,
      listViewLike: null == listViewLike
          ? _value.listViewLike
          : listViewLike // ignore: cast_nullable_to_non_nullable
              as List<UserPost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewLikeStateCopyWith<$Res>
    implements $ViewLikeStateCopyWith<$Res> {
  factory _$$_ViewLikeStateCopyWith(
          _$_ViewLikeState value, $Res Function(_$_ViewLikeState) then) =
      __$$_ViewLikeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewLikePageStatus status, List<UserPost> listViewLike});
}

/// @nodoc
class __$$_ViewLikeStateCopyWithImpl<$Res>
    extends _$ViewLikeStateCopyWithImpl<$Res, _$_ViewLikeState>
    implements _$$_ViewLikeStateCopyWith<$Res> {
  __$$_ViewLikeStateCopyWithImpl(
      _$_ViewLikeState _value, $Res Function(_$_ViewLikeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listViewLike = null,
  }) {
    return _then(_$_ViewLikeState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ViewLikePageStatus,
      listViewLike: null == listViewLike
          ? _value._listViewLike
          : listViewLike // ignore: cast_nullable_to_non_nullable
              as List<UserPost>,
    ));
  }
}

/// @nodoc

class _$_ViewLikeState extends _ViewLikeState {
  _$_ViewLikeState(
      {required this.status, required final List<UserPost> listViewLike})
      : _listViewLike = listViewLike,
        super._();

  @override
  final ViewLikePageStatus status;
  final List<UserPost> _listViewLike;
  @override
  List<UserPost> get listViewLike {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listViewLike);
  }

  @override
  String toString() {
    return 'ViewLikeState(status: $status, listViewLike: $listViewLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewLikeState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listViewLike, _listViewLike));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_listViewLike));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewLikeStateCopyWith<_$_ViewLikeState> get copyWith =>
      __$$_ViewLikeStateCopyWithImpl<_$_ViewLikeState>(this, _$identity);
}

abstract class _ViewLikeState extends ViewLikeState {
  factory _ViewLikeState(
      {required final ViewLikePageStatus status,
      required final List<UserPost> listViewLike}) = _$_ViewLikeState;
  _ViewLikeState._() : super._();

  @override
  ViewLikePageStatus get status;
  @override
  List<UserPost> get listViewLike;
  @override
  @JsonKey(ignore: true)
  _$$_ViewLikeStateCopyWith<_$_ViewLikeState> get copyWith =>
      throw _privateConstructorUsedError;
}
