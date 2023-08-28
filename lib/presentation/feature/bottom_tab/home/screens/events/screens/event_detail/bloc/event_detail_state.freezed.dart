// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventDetailState {
  Event get event => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventDetailStateCopyWith<EventDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailStateCopyWith<$Res> {
  factory $EventDetailStateCopyWith(
          EventDetailState value, $Res Function(EventDetailState) then) =
      _$EventDetailStateCopyWithImpl<$Res, EventDetailState>;
  @useResult
  $Res call({Event event});
}

/// @nodoc
class _$EventDetailStateCopyWithImpl<$Res, $Val extends EventDetailState>
    implements $EventDetailStateCopyWith<$Res> {
  _$EventDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventDetailStateCopyWith<$Res>
    implements $EventDetailStateCopyWith<$Res> {
  factory _$$_EventDetailStateCopyWith(
          _$_EventDetailState value, $Res Function(_$_EventDetailState) then) =
      __$$_EventDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Event event});
}

/// @nodoc
class __$$_EventDetailStateCopyWithImpl<$Res>
    extends _$EventDetailStateCopyWithImpl<$Res, _$_EventDetailState>
    implements _$$_EventDetailStateCopyWith<$Res> {
  __$$_EventDetailStateCopyWithImpl(
      _$_EventDetailState _value, $Res Function(_$_EventDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_EventDetailState(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$_EventDetailState extends _EventDetailState {
  _$_EventDetailState({required this.event}) : super._();

  @override
  final Event event;

  @override
  String toString() {
    return 'EventDetailState(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDetailState &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDetailStateCopyWith<_$_EventDetailState> get copyWith =>
      __$$_EventDetailStateCopyWithImpl<_$_EventDetailState>(this, _$identity);
}

abstract class _EventDetailState extends EventDetailState {
  factory _EventDetailState({required final Event event}) = _$_EventDetailState;
  _EventDetailState._() : super._();

  @override
  Event get event;
  @override
  @JsonKey(ignore: true)
  _$$_EventDetailStateCopyWith<_$_EventDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
