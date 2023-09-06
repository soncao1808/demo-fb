// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_sticker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputStickerState {
  List<List<String>> get stickers => throw _privateConstructorUsedError;
  List<List<String>> get gifs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputStickerStateCopyWith<InputStickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputStickerStateCopyWith<$Res> {
  factory $InputStickerStateCopyWith(
          InputStickerState value, $Res Function(InputStickerState) then) =
      _$InputStickerStateCopyWithImpl<$Res, InputStickerState>;
  @useResult
  $Res call({List<List<String>> stickers, List<List<String>> gifs});
}

/// @nodoc
class _$InputStickerStateCopyWithImpl<$Res, $Val extends InputStickerState>
    implements $InputStickerStateCopyWith<$Res> {
  _$InputStickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stickers = null,
    Object? gifs = null,
  }) {
    return _then(_value.copyWith(
      stickers: null == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      gifs: null == gifs
          ? _value.gifs
          : gifs // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InputStickerStateCopyWith<$Res>
    implements $InputStickerStateCopyWith<$Res> {
  factory _$$_InputStickerStateCopyWith(_$_InputStickerState value,
          $Res Function(_$_InputStickerState) then) =
      __$$_InputStickerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<String>> stickers, List<List<String>> gifs});
}

/// @nodoc
class __$$_InputStickerStateCopyWithImpl<$Res>
    extends _$InputStickerStateCopyWithImpl<$Res, _$_InputStickerState>
    implements _$$_InputStickerStateCopyWith<$Res> {
  __$$_InputStickerStateCopyWithImpl(
      _$_InputStickerState _value, $Res Function(_$_InputStickerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stickers = null,
    Object? gifs = null,
  }) {
    return _then(_$_InputStickerState(
      stickers: null == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      gifs: null == gifs
          ? _value._gifs
          : gifs // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

class _$_InputStickerState extends _InputStickerState {
  _$_InputStickerState(
      {required final List<List<String>> stickers,
      required final List<List<String>> gifs})
      : _stickers = stickers,
        _gifs = gifs,
        super._();

  final List<List<String>> _stickers;
  @override
  List<List<String>> get stickers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stickers);
  }

  final List<List<String>> _gifs;
  @override
  List<List<String>> get gifs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gifs);
  }

  @override
  String toString() {
    return 'InputStickerState(stickers: $stickers, gifs: $gifs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputStickerState &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            const DeepCollectionEquality().equals(other._gifs, _gifs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stickers),
      const DeepCollectionEquality().hash(_gifs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputStickerStateCopyWith<_$_InputStickerState> get copyWith =>
      __$$_InputStickerStateCopyWithImpl<_$_InputStickerState>(
          this, _$identity);
}

abstract class _InputStickerState extends InputStickerState {
  factory _InputStickerState(
      {required final List<List<String>> stickers,
      required final List<List<String>> gifs}) = _$_InputStickerState;
  _InputStickerState._() : super._();

  @override
  List<List<String>> get stickers;
  @override
  List<List<String>> get gifs;
  @override
  @JsonKey(ignore: true)
  _$$_InputStickerStateCopyWith<_$_InputStickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
