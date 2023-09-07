// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_follower_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyFollowerState {
  List<FriendUiModel> get friends => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyFollowerStateCopyWith<MyFollowerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFollowerStateCopyWith<$Res> {
  factory $MyFollowerStateCopyWith(
          MyFollowerState value, $Res Function(MyFollowerState) then) =
      _$MyFollowerStateCopyWithImpl<$Res, MyFollowerState>;
  @useResult
  $Res call({List<FriendUiModel> friends, String searchText});
}

/// @nodoc
class _$MyFollowerStateCopyWithImpl<$Res, $Val extends MyFollowerState>
    implements $MyFollowerStateCopyWith<$Res> {
  _$MyFollowerStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_MyFollowerStateCopyWith<$Res>
    implements $MyFollowerStateCopyWith<$Res> {
  factory _$$_MyFollowerStateCopyWith(
          _$_MyFollowerState value, $Res Function(_$_MyFollowerState) then) =
      __$$_MyFollowerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FriendUiModel> friends, String searchText});
}

/// @nodoc
class __$$_MyFollowerStateCopyWithImpl<$Res>
    extends _$MyFollowerStateCopyWithImpl<$Res, _$_MyFollowerState>
    implements _$$_MyFollowerStateCopyWith<$Res> {
  __$$_MyFollowerStateCopyWithImpl(
      _$_MyFollowerState _value, $Res Function(_$_MyFollowerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
    Object? searchText = null,
  }) {
    return _then(_$_MyFollowerState(
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

class _$_MyFollowerState extends _MyFollowerState {
  _$_MyFollowerState(
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
    return 'MyFollowerState(friends: $friends, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyFollowerState &&
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
  _$$_MyFollowerStateCopyWith<_$_MyFollowerState> get copyWith =>
      __$$_MyFollowerStateCopyWithImpl<_$_MyFollowerState>(this, _$identity);
}

abstract class _MyFollowerState extends MyFollowerState {
  factory _MyFollowerState(
      {required final List<FriendUiModel> friends,
      required final String searchText}) = _$_MyFollowerState;
  _MyFollowerState._() : super._();

  @override
  List<FriendUiModel> get friends;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$_MyFollowerStateCopyWith<_$_MyFollowerState> get copyWith =>
      throw _privateConstructorUsedError;
}
