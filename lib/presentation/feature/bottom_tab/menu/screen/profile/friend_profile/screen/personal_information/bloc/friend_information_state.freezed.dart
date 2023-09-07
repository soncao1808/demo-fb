// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_information_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendInformationState {
  FriendUiModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendInformationStateCopyWith<FriendInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendInformationStateCopyWith<$Res> {
  factory $FriendInformationStateCopyWith(FriendInformationState value,
          $Res Function(FriendInformationState) then) =
      _$FriendInformationStateCopyWithImpl<$Res, FriendInformationState>;
  @useResult
  $Res call({FriendUiModel? user});
}

/// @nodoc
class _$FriendInformationStateCopyWithImpl<$Res,
        $Val extends FriendInformationState>
    implements $FriendInformationStateCopyWith<$Res> {
  _$FriendInformationStateCopyWithImpl(this._value, this._then);

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
              as FriendUiModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendInformationStateCopyWith<$Res>
    implements $FriendInformationStateCopyWith<$Res> {
  factory _$$_FriendInformationStateCopyWith(_$_FriendInformationState value,
          $Res Function(_$_FriendInformationState) then) =
      __$$_FriendInformationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FriendUiModel? user});
}

/// @nodoc
class __$$_FriendInformationStateCopyWithImpl<$Res>
    extends _$FriendInformationStateCopyWithImpl<$Res,
        _$_FriendInformationState>
    implements _$$_FriendInformationStateCopyWith<$Res> {
  __$$_FriendInformationStateCopyWithImpl(_$_FriendInformationState _value,
      $Res Function(_$_FriendInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_FriendInformationState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FriendUiModel?,
    ));
  }
}

/// @nodoc

class _$_FriendInformationState extends _FriendInformationState {
  _$_FriendInformationState({this.user}) : super._();

  @override
  final FriendUiModel? user;

  @override
  String toString() {
    return 'FriendInformationState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendInformationState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendInformationStateCopyWith<_$_FriendInformationState> get copyWith =>
      __$$_FriendInformationStateCopyWithImpl<_$_FriendInformationState>(
          this, _$identity);
}

abstract class _FriendInformationState extends FriendInformationState {
  factory _FriendInformationState({final FriendUiModel? user}) =
      _$_FriendInformationState;
  _FriendInformationState._() : super._();

  @override
  FriendUiModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_FriendInformationStateCopyWith<_$_FriendInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}
