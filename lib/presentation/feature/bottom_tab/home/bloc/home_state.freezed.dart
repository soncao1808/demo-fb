// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  HomePageStatus get status => throw _privateConstructorUsedError;
  User? get infoUser => throw _privateConstructorUsedError;
  List<Post> get listPost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomePageStatus status, User? infoUser, List<Post> listPost});

  $UserCopyWith<$Res>? get infoUser;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? infoUser = freezed,
    Object? listPost = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomePageStatus,
      infoUser: freezed == infoUser
          ? _value.infoUser
          : infoUser // ignore: cast_nullable_to_non_nullable
              as User?,
      listPost: null == listPost
          ? _value.listPost
          : listPost // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get infoUser {
    if (_value.infoUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.infoUser!, (value) {
      return _then(_value.copyWith(infoUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomePageStatus status, User? infoUser, List<Post> listPost});

  @override
  $UserCopyWith<$Res>? get infoUser;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? infoUser = freezed,
    Object? listPost = null,
  }) {
    return _then(_$_HomeState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomePageStatus,
      infoUser: freezed == infoUser
          ? _value.infoUser
          : infoUser // ignore: cast_nullable_to_non_nullable
              as User?,
      listPost: null == listPost
          ? _value._listPost
          : listPost // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_HomeState extends _HomeState {
  _$_HomeState(
      {required this.status,
      required this.infoUser,
      required final List<Post> listPost})
      : _listPost = listPost,
        super._();

  @override
  final HomePageStatus status;
  @override
  final User? infoUser;
  final List<Post> _listPost;
  @override
  List<Post> get listPost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPost);
  }

  @override
  String toString() {
    return 'HomeState(status: $status, infoUser: $infoUser, listPost: $listPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.infoUser, infoUser) ||
                other.infoUser == infoUser) &&
            const DeepCollectionEquality().equals(other._listPost, _listPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, infoUser,
      const DeepCollectionEquality().hash(_listPost));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  factory _HomeState(
      {required final HomePageStatus status,
      required final User? infoUser,
      required final List<Post> listPost}) = _$_HomeState;
  _HomeState._() : super._();

  @override
  HomePageStatus get status;
  @override
  User? get infoUser;
  @override
  List<Post> get listPost;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
