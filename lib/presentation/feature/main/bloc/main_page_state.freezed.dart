// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageState {
  MainPageBottom get tabItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res, MainPageState>;
  @useResult
  $Res call({MainPageBottom tabItem});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res, $Val extends MainPageState>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabItem = null,
  }) {
    return _then(_value.copyWith(
      tabItem: null == tabItem
          ? _value.tabItem
          : tabItem // ignore: cast_nullable_to_non_nullable
              as MainPageBottom,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainPageStateCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$$_MainPageStateCopyWith(
          _$_MainPageState value, $Res Function(_$_MainPageState) then) =
      __$$_MainPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainPageBottom tabItem});
}

/// @nodoc
class __$$_MainPageStateCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res, _$_MainPageState>
    implements _$$_MainPageStateCopyWith<$Res> {
  __$$_MainPageStateCopyWithImpl(
      _$_MainPageState _value, $Res Function(_$_MainPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabItem = null,
  }) {
    return _then(_$_MainPageState(
      tabItem: null == tabItem
          ? _value.tabItem
          : tabItem // ignore: cast_nullable_to_non_nullable
              as MainPageBottom,
    ));
  }
}

/// @nodoc

class _$_MainPageState extends _MainPageState {
  _$_MainPageState({required this.tabItem}) : super._();

  @override
  final MainPageBottom tabItem;

  @override
  String toString() {
    return 'MainPageState(tabItem: $tabItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPageState &&
            (identical(other.tabItem, tabItem) || other.tabItem == tabItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      __$$_MainPageStateCopyWithImpl<_$_MainPageState>(this, _$identity);
}

abstract class _MainPageState extends MainPageState {
  factory _MainPageState({required final MainPageBottom tabItem}) =
      _$_MainPageState;
  _MainPageState._() : super._();

  @override
  MainPageBottom get tabItem;
  @override
  @JsonKey(ignore: true)
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
