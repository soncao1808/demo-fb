// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostDetailState {
  PostDetailPageStatus get status => throw _privateConstructorUsedError;
  Post? get postDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostDetailStateCopyWith<PostDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailStateCopyWith<$Res> {
  factory $PostDetailStateCopyWith(
          PostDetailState value, $Res Function(PostDetailState) then) =
      _$PostDetailStateCopyWithImpl<$Res, PostDetailState>;
  @useResult
  $Res call({PostDetailPageStatus status, Post? postDetail});
}

/// @nodoc
class _$PostDetailStateCopyWithImpl<$Res, $Val extends PostDetailState>
    implements $PostDetailStateCopyWith<$Res> {
  _$PostDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? postDetail = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostDetailPageStatus,
      postDetail: freezed == postDetail
          ? _value.postDetail
          : postDetail // ignore: cast_nullable_to_non_nullable
              as Post?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostDetailStateCopyWith<$Res>
    implements $PostDetailStateCopyWith<$Res> {
  factory _$$_PostDetailStateCopyWith(
          _$_PostDetailState value, $Res Function(_$_PostDetailState) then) =
      __$$_PostDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostDetailPageStatus status, Post? postDetail});
}

/// @nodoc
class __$$_PostDetailStateCopyWithImpl<$Res>
    extends _$PostDetailStateCopyWithImpl<$Res, _$_PostDetailState>
    implements _$$_PostDetailStateCopyWith<$Res> {
  __$$_PostDetailStateCopyWithImpl(
      _$_PostDetailState _value, $Res Function(_$_PostDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? postDetail = freezed,
  }) {
    return _then(_$_PostDetailState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostDetailPageStatus,
      postDetail: freezed == postDetail
          ? _value.postDetail
          : postDetail // ignore: cast_nullable_to_non_nullable
              as Post?,
    ));
  }
}

/// @nodoc

class _$_PostDetailState extends _PostDetailState {
  _$_PostDetailState({required this.status, required this.postDetail})
      : super._();

  @override
  final PostDetailPageStatus status;
  @override
  final Post? postDetail;

  @override
  String toString() {
    return 'PostDetailState(status: $status, postDetail: $postDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostDetailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.postDetail, postDetail) ||
                other.postDetail == postDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, postDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostDetailStateCopyWith<_$_PostDetailState> get copyWith =>
      __$$_PostDetailStateCopyWithImpl<_$_PostDetailState>(this, _$identity);
}

abstract class _PostDetailState extends PostDetailState {
  factory _PostDetailState(
      {required final PostDetailPageStatus status,
      required final Post? postDetail}) = _$_PostDetailState;
  _PostDetailState._() : super._();

  @override
  PostDetailPageStatus get status;
  @override
  Post? get postDetail;
  @override
  @JsonKey(ignore: true)
  _$$_PostDetailStateCopyWith<_$_PostDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
