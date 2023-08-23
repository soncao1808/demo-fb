// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendart_horizontal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendartHorizontalState {
  DateTime get focusDate => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendartHorizontalStateCopyWith<CalendartHorizontalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendartHorizontalStateCopyWith<$Res> {
  factory $CalendartHorizontalStateCopyWith(CalendartHorizontalState value,
          $Res Function(CalendartHorizontalState) then) =
      _$CalendartHorizontalStateCopyWithImpl<$Res, CalendartHorizontalState>;
  @useResult
  $Res call({DateTime focusDate, DateTime selectedDate});
}

/// @nodoc
class _$CalendartHorizontalStateCopyWithImpl<$Res,
        $Val extends CalendartHorizontalState>
    implements $CalendartHorizontalStateCopyWith<$Res> {
  _$CalendartHorizontalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusDate = null,
    Object? selectedDate = null,
  }) {
    return _then(_value.copyWith(
      focusDate: null == focusDate
          ? _value.focusDate
          : focusDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendartHorizontalStateCopyWith<$Res>
    implements $CalendartHorizontalStateCopyWith<$Res> {
  factory _$$_CalendartHorizontalStateCopyWith(
          _$_CalendartHorizontalState value,
          $Res Function(_$_CalendartHorizontalState) then) =
      __$$_CalendartHorizontalStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime focusDate, DateTime selectedDate});
}

/// @nodoc
class __$$_CalendartHorizontalStateCopyWithImpl<$Res>
    extends _$CalendartHorizontalStateCopyWithImpl<$Res,
        _$_CalendartHorizontalState>
    implements _$$_CalendartHorizontalStateCopyWith<$Res> {
  __$$_CalendartHorizontalStateCopyWithImpl(_$_CalendartHorizontalState _value,
      $Res Function(_$_CalendartHorizontalState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusDate = null,
    Object? selectedDate = null,
  }) {
    return _then(_$_CalendartHorizontalState(
      focusDate: null == focusDate
          ? _value.focusDate
          : focusDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_CalendartHorizontalState extends _CalendartHorizontalState {
  _$_CalendartHorizontalState(
      {required this.focusDate, required this.selectedDate})
      : super._();

  @override
  final DateTime focusDate;
  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'CalendartHorizontalState(focusDate: $focusDate, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendartHorizontalState &&
            (identical(other.focusDate, focusDate) ||
                other.focusDate == focusDate) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusDate, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendartHorizontalStateCopyWith<_$_CalendartHorizontalState>
      get copyWith => __$$_CalendartHorizontalStateCopyWithImpl<
          _$_CalendartHorizontalState>(this, _$identity);
}

abstract class _CalendartHorizontalState extends CalendartHorizontalState {
  factory _CalendartHorizontalState(
      {required final DateTime focusDate,
      required final DateTime selectedDate}) = _$_CalendartHorizontalState;
  _CalendartHorizontalState._() : super._();

  @override
  DateTime get focusDate;
  @override
  DateTime get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$_CalendartHorizontalStateCopyWith<_$_CalendartHorizontalState>
      get copyWith => throw _privateConstructorUsedError;
}
