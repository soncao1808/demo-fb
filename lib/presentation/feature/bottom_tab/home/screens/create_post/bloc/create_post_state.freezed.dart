// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePostState {
  CreatePostPageStatus get status => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get selectPrivacy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePostStateCopyWith<CreatePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostStateCopyWith<$Res> {
  factory $CreatePostStateCopyWith(
          CreatePostState value, $Res Function(CreatePostState) then) =
      _$CreatePostStateCopyWithImpl<$Res, CreatePostState>;
  @useResult
  $Res call({CreatePostPageStatus status, String content, int selectPrivacy});
}

/// @nodoc
class _$CreatePostStateCopyWithImpl<$Res, $Val extends CreatePostState>
    implements $CreatePostStateCopyWith<$Res> {
  _$CreatePostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = null,
    Object? selectPrivacy = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreatePostPageStatus,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      selectPrivacy: null == selectPrivacy
          ? _value.selectPrivacy
          : selectPrivacy // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePostStateCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$_CreatePostStateCopyWith(
          _$_CreatePostState value, $Res Function(_$_CreatePostState) then) =
      __$$_CreatePostStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatePostPageStatus status, String content, int selectPrivacy});
}

/// @nodoc
class __$$_CreatePostStateCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$_CreatePostState>
    implements _$$_CreatePostStateCopyWith<$Res> {
  __$$_CreatePostStateCopyWithImpl(
      _$_CreatePostState _value, $Res Function(_$_CreatePostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = null,
    Object? selectPrivacy = null,
  }) {
    return _then(_$_CreatePostState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreatePostPageStatus,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      selectPrivacy: null == selectPrivacy
          ? _value.selectPrivacy
          : selectPrivacy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreatePostState extends _CreatePostState {
  _$_CreatePostState(
      {required this.status,
      required this.content,
      required this.selectPrivacy})
      : super._();

  @override
  final CreatePostPageStatus status;
  @override
  final String content;
  @override
  final int selectPrivacy;

  @override
  String toString() {
    return 'CreatePostState(status: $status, content: $content, selectPrivacy: $selectPrivacy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePostState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.selectPrivacy, selectPrivacy) ||
                other.selectPrivacy == selectPrivacy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, content, selectPrivacy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePostStateCopyWith<_$_CreatePostState> get copyWith =>
      __$$_CreatePostStateCopyWithImpl<_$_CreatePostState>(this, _$identity);
}

abstract class _CreatePostState extends CreatePostState {
  factory _CreatePostState(
      {required final CreatePostPageStatus status,
      required final String content,
      required final int selectPrivacy}) = _$_CreatePostState;
  _CreatePostState._() : super._();

  @override
  CreatePostPageStatus get status;
  @override
  String get content;
  @override
  int get selectPrivacy;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePostStateCopyWith<_$_CreatePostState> get copyWith =>
      throw _privateConstructorUsedError;
}
