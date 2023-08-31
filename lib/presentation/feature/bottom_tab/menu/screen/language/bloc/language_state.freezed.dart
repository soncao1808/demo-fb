// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'language_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LanguageState {
  bool get isLanguageSelecter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
  @useResult
  $Res call({bool isLanguageSelecter});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLanguageSelecter = null,
  }) {
    return _then(_value.copyWith(
      isLanguageSelecter: null == isLanguageSelecter
          ? _value.isLanguageSelecter
          : isLanguageSelecter // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageStateCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$_LanguageStateCopyWith(
          _$_LanguageState value, $Res Function(_$_LanguageState) then) =
      __$$_LanguageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLanguageSelecter});
}

/// @nodoc
class __$$_LanguageStateCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$_LanguageState>
    implements _$$_LanguageStateCopyWith<$Res> {
  __$$_LanguageStateCopyWithImpl(
      _$_LanguageState _value, $Res Function(_$_LanguageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLanguageSelecter = null,
  }) {
    return _then(_$_LanguageState(
      isLanguageSelecter: null == isLanguageSelecter
          ? _value.isLanguageSelecter
          : isLanguageSelecter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LanguageState extends _LanguageState {
  _$_LanguageState({required this.isLanguageSelecter}) : super._();

  @override
  final bool isLanguageSelecter;

  @override
  String toString() {
    return 'LanguageState(isLanguageSelecter: $isLanguageSelecter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageState &&
            (identical(other.isLanguageSelecter, isLanguageSelecter) ||
                other.isLanguageSelecter == isLanguageSelecter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLanguageSelecter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageStateCopyWith<_$_LanguageState> get copyWith =>
      __$$_LanguageStateCopyWithImpl<_$_LanguageState>(this, _$identity);
}

abstract class _LanguageState extends LanguageState {
  factory _LanguageState({required final bool isLanguageSelecter}) =
      _$_LanguageState;
  _LanguageState._() : super._();

  @override
  bool get isLanguageSelecter;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageStateCopyWith<_$_LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}
