// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuState {
  bool get isStatusLogout => throw _privateConstructorUsedError;
  User? get infoUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call({bool isStatusLogout, User? infoUser});

  $UserCopyWith<$Res>? get infoUser;
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStatusLogout = null,
    Object? infoUser = freezed,
  }) {
    return _then(_value.copyWith(
      isStatusLogout: null == isStatusLogout
          ? _value.isStatusLogout
          : isStatusLogout // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$$_MenuStateCopyWith(
          _$_MenuState value, $Res Function(_$_MenuState) then) =
      __$$_MenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isStatusLogout, User? infoUser});

  @override
  $UserCopyWith<$Res>? get infoUser;
}

/// @nodoc
class __$$_MenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_MenuState>
    implements _$$_MenuStateCopyWith<$Res> {
  __$$_MenuStateCopyWithImpl(
      _$_MenuState _value, $Res Function(_$_MenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStatusLogout = null,
    Object? infoUser = freezed,
  }) {
    return _then(_$_MenuState(
      isStatusLogout: null == isStatusLogout
          ? _value.isStatusLogout
          : isStatusLogout // ignore: cast_nullable_to_non_nullable
              as bool,
      infoUser: freezed == infoUser
          ? _value.infoUser
          : infoUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_MenuState extends _MenuState {
  _$_MenuState({required this.isStatusLogout, required this.infoUser})
      : super._();

  @override
  final bool isStatusLogout;
  @override
  final User? infoUser;

  @override
  String toString() {
    return 'MenuState(isStatusLogout: $isStatusLogout, infoUser: $infoUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuState &&
            (identical(other.isStatusLogout, isStatusLogout) ||
                other.isStatusLogout == isStatusLogout) &&
            (identical(other.infoUser, infoUser) ||
                other.infoUser == infoUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isStatusLogout, infoUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuStateCopyWith<_$_MenuState> get copyWith =>
      __$$_MenuStateCopyWithImpl<_$_MenuState>(this, _$identity);
}

abstract class _MenuState extends MenuState {
  factory _MenuState(
      {required final bool isStatusLogout,
      required final User? infoUser}) = _$_MenuState;
  _MenuState._() : super._();

  @override
  bool get isStatusLogout;
  @override
  User? get infoUser;
  @override
  @JsonKey(ignore: true)
  _$$_MenuStateCopyWith<_$_MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
