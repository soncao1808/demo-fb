// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountState {
  bool get isStatusLogout => throw _privateConstructorUsedError;
  bool get isStatusLoadingUploadImage => throw _privateConstructorUsedError;
  String get urlImage => throw _privateConstructorUsedError;
  User? get infoUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call(
      {bool isStatusLogout,
      bool isStatusLoadingUploadImage,
      String urlImage,
      User? infoUser});

  $UserCopyWith<$Res>? get infoUser;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStatusLogout = null,
    Object? isStatusLoadingUploadImage = null,
    Object? urlImage = null,
    Object? infoUser = freezed,
  }) {
    return _then(_value.copyWith(
      isStatusLogout: null == isStatusLogout
          ? _value.isStatusLogout
          : isStatusLogout // ignore: cast_nullable_to_non_nullable
              as bool,
      isStatusLoadingUploadImage: null == isStatusLoadingUploadImage
          ? _value.isStatusLoadingUploadImage
          : isStatusLoadingUploadImage // ignore: cast_nullable_to_non_nullable
              as bool,
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      infoUser: freezed == infoUser
          ? _value.infoUser
          : infoUser // ignore: cast_nullable_to_non_nullable
              as User?,
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
abstract class _$$_AccountStateCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_AccountStateCopyWith(
          _$_AccountState value, $Res Function(_$_AccountState) then) =
      __$$_AccountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isStatusLogout,
      bool isStatusLoadingUploadImage,
      String urlImage,
      User? infoUser});

  @override
  $UserCopyWith<$Res>? get infoUser;
}

/// @nodoc
class __$$_AccountStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountState>
    implements _$$_AccountStateCopyWith<$Res> {
  __$$_AccountStateCopyWithImpl(
      _$_AccountState _value, $Res Function(_$_AccountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStatusLogout = null,
    Object? isStatusLoadingUploadImage = null,
    Object? urlImage = null,
    Object? infoUser = freezed,
  }) {
    return _then(_$_AccountState(
      isStatusLogout: null == isStatusLogout
          ? _value.isStatusLogout
          : isStatusLogout // ignore: cast_nullable_to_non_nullable
              as bool,
      isStatusLoadingUploadImage: null == isStatusLoadingUploadImage
          ? _value.isStatusLoadingUploadImage
          : isStatusLoadingUploadImage // ignore: cast_nullable_to_non_nullable
              as bool,
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      infoUser: freezed == infoUser
          ? _value.infoUser
          : infoUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_AccountState extends _AccountState {
  _$_AccountState(
      {required this.isStatusLogout,
      required this.isStatusLoadingUploadImage,
      required this.urlImage,
      required this.infoUser})
      : super._();

  @override
  final bool isStatusLogout;
  @override
  final bool isStatusLoadingUploadImage;
  @override
  final String urlImage;
  @override
  final User? infoUser;

  @override
  String toString() {
    return 'AccountState(isStatusLogout: $isStatusLogout, isStatusLoadingUploadImage: $isStatusLoadingUploadImage, urlImage: $urlImage, infoUser: $infoUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountState &&
            (identical(other.isStatusLogout, isStatusLogout) ||
                other.isStatusLogout == isStatusLogout) &&
            (identical(other.isStatusLoadingUploadImage,
                    isStatusLoadingUploadImage) ||
                other.isStatusLoadingUploadImage ==
                    isStatusLoadingUploadImage) &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage) &&
            (identical(other.infoUser, infoUser) ||
                other.infoUser == infoUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isStatusLogout,
      isStatusLoadingUploadImage, urlImage, infoUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountStateCopyWith<_$_AccountState> get copyWith =>
      __$$_AccountStateCopyWithImpl<_$_AccountState>(this, _$identity);
}

abstract class _AccountState extends AccountState {
  factory _AccountState(
      {required final bool isStatusLogout,
      required final bool isStatusLoadingUploadImage,
      required final String urlImage,
      required final User? infoUser}) = _$_AccountState;
  _AccountState._() : super._();

  @override
  bool get isStatusLogout;
  @override
  bool get isStatusLoadingUploadImage;
  @override
  String get urlImage;
  @override
  User? get infoUser;
  @override
  @JsonKey(ignore: true)
  _$$_AccountStateCopyWith<_$_AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
