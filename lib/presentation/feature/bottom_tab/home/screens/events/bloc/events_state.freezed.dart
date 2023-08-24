// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'events_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsState {
  List<Event> get listEvents => throw _privateConstructorUsedError;
  List<EventCategory> get listEventCategory =>
      throw _privateConstructorUsedError;
  EventCategory? get selectedCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsStateCopyWith<EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
  @useResult
  $Res call(
      {List<Event> listEvents,
      List<EventCategory> listEventCategory,
      EventCategory? selectedCategory});
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listEvents = null,
    Object? listEventCategory = null,
    Object? selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      listEvents: null == listEvents
          ? _value.listEvents
          : listEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      listEventCategory: null == listEventCategory
          ? _value.listEventCategory
          : listEventCategory // ignore: cast_nullable_to_non_nullable
              as List<EventCategory>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as EventCategory?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventsStateCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$_EventsStateCopyWith(
          _$_EventsState value, $Res Function(_$_EventsState) then) =
      __$$_EventsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Event> listEvents,
      List<EventCategory> listEventCategory,
      EventCategory? selectedCategory});
}

/// @nodoc
class __$$_EventsStateCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$_EventsState>
    implements _$$_EventsStateCopyWith<$Res> {
  __$$_EventsStateCopyWithImpl(
      _$_EventsState _value, $Res Function(_$_EventsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listEvents = null,
    Object? listEventCategory = null,
    Object? selectedCategory = freezed,
  }) {
    return _then(_$_EventsState(
      listEvents: null == listEvents
          ? _value._listEvents
          : listEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      listEventCategory: null == listEventCategory
          ? _value._listEventCategory
          : listEventCategory // ignore: cast_nullable_to_non_nullable
              as List<EventCategory>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as EventCategory?,
    ));
  }
}

/// @nodoc

class _$_EventsState extends _EventsState {
  _$_EventsState(
      {required final List<Event> listEvents,
      required final List<EventCategory> listEventCategory,
      this.selectedCategory})
      : _listEvents = listEvents,
        _listEventCategory = listEventCategory,
        super._();

  final List<Event> _listEvents;
  @override
  List<Event> get listEvents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listEvents);
  }

  final List<EventCategory> _listEventCategory;
  @override
  List<EventCategory> get listEventCategory {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listEventCategory);
  }

  @override
  final EventCategory? selectedCategory;

  @override
  String toString() {
    return 'EventsState(listEvents: $listEvents, listEventCategory: $listEventCategory, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsState &&
            const DeepCollectionEquality()
                .equals(other._listEvents, _listEvents) &&
            const DeepCollectionEquality()
                .equals(other._listEventCategory, _listEventCategory) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listEvents),
      const DeepCollectionEquality().hash(_listEventCategory),
      selectedCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsStateCopyWith<_$_EventsState> get copyWith =>
      __$$_EventsStateCopyWithImpl<_$_EventsState>(this, _$identity);
}

abstract class _EventsState extends EventsState {
  factory _EventsState(
      {required final List<Event> listEvents,
      required final List<EventCategory> listEventCategory,
      final EventCategory? selectedCategory}) = _$_EventsState;
  _EventsState._() : super._();

  @override
  List<Event> get listEvents;
  @override
  List<EventCategory> get listEventCategory;
  @override
  EventCategory? get selectedCategory;
  @override
  @JsonKey(ignore: true)
  _$$_EventsStateCopyWith<_$_EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}
