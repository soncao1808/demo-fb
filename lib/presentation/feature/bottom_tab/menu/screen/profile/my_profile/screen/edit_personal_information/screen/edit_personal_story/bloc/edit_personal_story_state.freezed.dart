// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_personal_story_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditPersonalStoryState {
  String? get story => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPersonalStoryStateCopyWith<EditPersonalStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPersonalStoryStateCopyWith<$Res> {
  factory $EditPersonalStoryStateCopyWith(EditPersonalStoryState value,
          $Res Function(EditPersonalStoryState) then) =
      _$EditPersonalStoryStateCopyWithImpl<$Res, EditPersonalStoryState>;
  @useResult
  $Res call({String? story});
}

/// @nodoc
class _$EditPersonalStoryStateCopyWithImpl<$Res,
        $Val extends EditPersonalStoryState>
    implements $EditPersonalStoryStateCopyWith<$Res> {
  _$EditPersonalStoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = freezed,
  }) {
    return _then(_value.copyWith(
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditPersonalStoryStateCopyWith<$Res>
    implements $EditPersonalStoryStateCopyWith<$Res> {
  factory _$$_EditPersonalStoryStateCopyWith(_$_EditPersonalStoryState value,
          $Res Function(_$_EditPersonalStoryState) then) =
      __$$_EditPersonalStoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? story});
}

/// @nodoc
class __$$_EditPersonalStoryStateCopyWithImpl<$Res>
    extends _$EditPersonalStoryStateCopyWithImpl<$Res,
        _$_EditPersonalStoryState>
    implements _$$_EditPersonalStoryStateCopyWith<$Res> {
  __$$_EditPersonalStoryStateCopyWithImpl(_$_EditPersonalStoryState _value,
      $Res Function(_$_EditPersonalStoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = freezed,
  }) {
    return _then(_$_EditPersonalStoryState(
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EditPersonalStoryState extends _EditPersonalStoryState {
  _$_EditPersonalStoryState({this.story}) : super._();

  @override
  final String? story;

  @override
  String toString() {
    return 'EditPersonalStoryState(story: $story)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPersonalStoryState &&
            (identical(other.story, story) || other.story == story));
  }

  @override
  int get hashCode => Object.hash(runtimeType, story);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPersonalStoryStateCopyWith<_$_EditPersonalStoryState> get copyWith =>
      __$$_EditPersonalStoryStateCopyWithImpl<_$_EditPersonalStoryState>(
          this, _$identity);
}

abstract class _EditPersonalStoryState extends EditPersonalStoryState {
  factory _EditPersonalStoryState({final String? story}) =
      _$_EditPersonalStoryState;
  _EditPersonalStoryState._() : super._();

  @override
  String? get story;
  @override
  @JsonKey(ignore: true)
  _$$_EditPersonalStoryStateCopyWith<_$_EditPersonalStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
