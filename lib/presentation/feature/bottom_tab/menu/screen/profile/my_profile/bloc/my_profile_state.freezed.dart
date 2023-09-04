// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyProfileState {
  UserUiModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyProfileStateCopyWith<MyProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfileStateCopyWith<$Res> {
  factory $MyProfileStateCopyWith(
          MyProfileState value, $Res Function(MyProfileState) then) =
      _$MyProfileStateCopyWithImpl<$Res, MyProfileState>;
  @useResult
  $Res call({UserUiModel? user});
}

/// @nodoc
class _$MyProfileStateCopyWithImpl<$Res, $Val extends MyProfileState>
    implements $MyProfileStateCopyWith<$Res> {
  _$MyProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserUiModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyProfileStateCopyWith<$Res>
    implements $MyProfileStateCopyWith<$Res> {
  factory _$$_MyProfileStateCopyWith(
          _$_MyProfileState value, $Res Function(_$_MyProfileState) then) =
      __$$_MyProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserUiModel? user});
}

/// @nodoc
class __$$_MyProfileStateCopyWithImpl<$Res>
    extends _$MyProfileStateCopyWithImpl<$Res, _$_MyProfileState>
    implements _$$_MyProfileStateCopyWith<$Res> {
  __$$_MyProfileStateCopyWithImpl(
      _$_MyProfileState _value, $Res Function(_$_MyProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_MyProfileState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserUiModel?,
    ));
  }
}

/// @nodoc

class _$_MyProfileState extends _MyProfileState {
  _$_MyProfileState({this.user}) : super._();

  @override
  final UserUiModel? user;

  @override
  String toString() {
    return 'MyProfileState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyProfileState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyProfileStateCopyWith<_$_MyProfileState> get copyWith =>
      __$$_MyProfileStateCopyWithImpl<_$_MyProfileState>(this, _$identity);
}

abstract class _MyProfileState extends MyProfileState {
  factory _MyProfileState({final UserUiModel? user}) = _$_MyProfileState;
  _MyProfileState._() : super._();

  @override
  UserUiModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_MyProfileStateCopyWith<_$_MyProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
