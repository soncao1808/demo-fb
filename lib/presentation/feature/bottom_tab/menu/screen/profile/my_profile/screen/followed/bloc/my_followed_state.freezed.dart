// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_followed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyFollowedState {
  List<FriendUiModel> get friends => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyFollowedStateCopyWith<MyFollowedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFollowedStateCopyWith<$Res> {
  factory $MyFollowedStateCopyWith(
          MyFollowedState value, $Res Function(MyFollowedState) then) =
      _$MyFollowedStateCopyWithImpl<$Res, MyFollowedState>;
  @useResult
  $Res call({List<FriendUiModel> friends, String searchText});
}

/// @nodoc
class _$MyFollowedStateCopyWithImpl<$Res, $Val extends MyFollowedState>
    implements $MyFollowedStateCopyWith<$Res> {
  _$MyFollowedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<FriendUiModel>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyFollowedStateCopyWith<$Res>
    implements $MyFollowedStateCopyWith<$Res> {
  factory _$$_MyFollowedStateCopyWith(
          _$_MyFollowedState value, $Res Function(_$_MyFollowedState) then) =
      __$$_MyFollowedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FriendUiModel> friends, String searchText});
}

/// @nodoc
class __$$_MyFollowedStateCopyWithImpl<$Res>
    extends _$MyFollowedStateCopyWithImpl<$Res, _$_MyFollowedState>
    implements _$$_MyFollowedStateCopyWith<$Res> {
  __$$_MyFollowedStateCopyWithImpl(
      _$_MyFollowedState _value, $Res Function(_$_MyFollowedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
    Object? searchText = null,
  }) {
    return _then(_$_MyFollowedState(
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<FriendUiModel>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MyFollowedState extends _MyFollowedState {
  _$_MyFollowedState(
      {required final List<FriendUiModel> friends, required this.searchText})
      : _friends = friends,
        super._();

  final List<FriendUiModel> _friends;
  @override
  List<FriendUiModel> get friends {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  @override
  final String searchText;

  @override
  String toString() {
    return 'MyFollowedState(friends: $friends, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyFollowedState &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_friends), searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyFollowedStateCopyWith<_$_MyFollowedState> get copyWith =>
      __$$_MyFollowedStateCopyWithImpl<_$_MyFollowedState>(this, _$identity);
}

abstract class _MyFollowedState extends MyFollowedState {
  factory _MyFollowedState(
      {required final List<FriendUiModel> friends,
      required final String searchText}) = _$_MyFollowedState;
  _MyFollowedState._() : super._();

  @override
  List<FriendUiModel> get friends;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$_MyFollowedStateCopyWith<_$_MyFollowedState> get copyWith =>
      throw _privateConstructorUsedError;
}
