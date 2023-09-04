// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_personal_information_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditPersonalInformationState {
  UserUiModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPersonalInformationStateCopyWith<EditPersonalInformationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPersonalInformationStateCopyWith<$Res> {
  factory $EditPersonalInformationStateCopyWith(
          EditPersonalInformationState value,
          $Res Function(EditPersonalInformationState) then) =
      _$EditPersonalInformationStateCopyWithImpl<$Res,
          EditPersonalInformationState>;
  @useResult
  $Res call({UserUiModel? user});
}

/// @nodoc
class _$EditPersonalInformationStateCopyWithImpl<$Res,
        $Val extends EditPersonalInformationState>
    implements $EditPersonalInformationStateCopyWith<$Res> {
  _$EditPersonalInformationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_EditPersonalInformationStateCopyWith<$Res>
    implements $EditPersonalInformationStateCopyWith<$Res> {
  factory _$$_EditPersonalInformationStateCopyWith(
          _$_EditPersonalInformationState value,
          $Res Function(_$_EditPersonalInformationState) then) =
      __$$_EditPersonalInformationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserUiModel? user});
}

/// @nodoc
class __$$_EditPersonalInformationStateCopyWithImpl<$Res>
    extends _$EditPersonalInformationStateCopyWithImpl<$Res,
        _$_EditPersonalInformationState>
    implements _$$_EditPersonalInformationStateCopyWith<$Res> {
  __$$_EditPersonalInformationStateCopyWithImpl(
      _$_EditPersonalInformationState _value,
      $Res Function(_$_EditPersonalInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_EditPersonalInformationState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserUiModel?,
    ));
  }
}

/// @nodoc

class _$_EditPersonalInformationState extends _EditPersonalInformationState {
  _$_EditPersonalInformationState({this.user}) : super._();

  @override
  final UserUiModel? user;

  @override
  String toString() {
    return 'EditPersonalInformationState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPersonalInformationState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPersonalInformationStateCopyWith<_$_EditPersonalInformationState>
      get copyWith => __$$_EditPersonalInformationStateCopyWithImpl<
          _$_EditPersonalInformationState>(this, _$identity);
}

abstract class _EditPersonalInformationState
    extends EditPersonalInformationState {
  factory _EditPersonalInformationState({final UserUiModel? user}) =
      _$_EditPersonalInformationState;
  _EditPersonalInformationState._() : super._();

  @override
  UserUiModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_EditPersonalInformationStateCopyWith<_$_EditPersonalInformationState>
      get copyWith => throw _privateConstructorUsedError;
}
