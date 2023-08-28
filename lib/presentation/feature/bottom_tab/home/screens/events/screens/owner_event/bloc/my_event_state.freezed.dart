// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyEventState {
  List<Event> get events => throw _privateConstructorUsedError;
  bool get statusLoadingMyEvent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyEventStateCopyWith<MyEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyEventStateCopyWith<$Res> {
  factory $MyEventStateCopyWith(
          MyEventState value, $Res Function(MyEventState) then) =
      _$MyEventStateCopyWithImpl<$Res, MyEventState>;
  @useResult
  $Res call({List<Event> events, bool statusLoadingMyEvent});
}

/// @nodoc
class _$MyEventStateCopyWithImpl<$Res, $Val extends MyEventState>
    implements $MyEventStateCopyWith<$Res> {
  _$MyEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? statusLoadingMyEvent = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      statusLoadingMyEvent: null == statusLoadingMyEvent
          ? _value.statusLoadingMyEvent
          : statusLoadingMyEvent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyEventStateCopyWith<$Res>
    implements $MyEventStateCopyWith<$Res> {
  factory _$$_MyEventStateCopyWith(
          _$_MyEventState value, $Res Function(_$_MyEventState) then) =
      __$$_MyEventStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Event> events, bool statusLoadingMyEvent});
}

/// @nodoc
class __$$_MyEventStateCopyWithImpl<$Res>
    extends _$MyEventStateCopyWithImpl<$Res, _$_MyEventState>
    implements _$$_MyEventStateCopyWith<$Res> {
  __$$_MyEventStateCopyWithImpl(
      _$_MyEventState _value, $Res Function(_$_MyEventState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? statusLoadingMyEvent = null,
  }) {
    return _then(_$_MyEventState(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      statusLoadingMyEvent: null == statusLoadingMyEvent
          ? _value.statusLoadingMyEvent
          : statusLoadingMyEvent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MyEventState extends _MyEventState {
  _$_MyEventState(
      {required final List<Event> events, required this.statusLoadingMyEvent})
      : _events = events,
        super._();

  final List<Event> _events;
  @override
  List<Event> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final bool statusLoadingMyEvent;

  @override
  String toString() {
    return 'MyEventState(events: $events, statusLoadingMyEvent: $statusLoadingMyEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyEventState &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.statusLoadingMyEvent, statusLoadingMyEvent) ||
                other.statusLoadingMyEvent == statusLoadingMyEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_events), statusLoadingMyEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyEventStateCopyWith<_$_MyEventState> get copyWith =>
      __$$_MyEventStateCopyWithImpl<_$_MyEventState>(this, _$identity);
}

abstract class _MyEventState extends MyEventState {
  factory _MyEventState(
      {required final List<Event> events,
      required final bool statusLoadingMyEvent}) = _$_MyEventState;
  _MyEventState._() : super._();

  @override
  List<Event> get events;
  @override
  bool get statusLoadingMyEvent;
  @override
  @JsonKey(ignore: true)
  _$$_MyEventStateCopyWith<_$_MyEventState> get copyWith =>
      throw _privateConstructorUsedError;
}
