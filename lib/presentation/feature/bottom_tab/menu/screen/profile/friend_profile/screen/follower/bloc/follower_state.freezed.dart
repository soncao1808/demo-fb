// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'follower_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FollowerState {
  List<FriendUiModel> get friends => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowerStateCopyWith<FollowerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerStateCopyWith<$Res> {
  factory $FollowerStateCopyWith(
          FollowerState value, $Res Function(FollowerState) then) =
      _$FollowerStateCopyWithImpl<$Res, FollowerState>;
  @useResult
  $Res call({List<FriendUiModel> friends, String searchText});
}

/// @nodoc
class _$FollowerStateCopyWithImpl<$Res, $Val extends FollowerState>
    implements $FollowerStateCopyWith<$Res> {
  _$FollowerStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_FollowerStateCopyWith<$Res>
    implements $FollowerStateCopyWith<$Res> {
  factory _$$_FollowerStateCopyWith(
          _$_FollowerState value, $Res Function(_$_FollowerState) then) =
      __$$_FollowerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FriendUiModel> friends, String searchText});
}

/// @nodoc
class __$$_FollowerStateCopyWithImpl<$Res>
    extends _$FollowerStateCopyWithImpl<$Res, _$_FollowerState>
    implements _$$_FollowerStateCopyWith<$Res> {
  __$$_FollowerStateCopyWithImpl(
      _$_FollowerState _value, $Res Function(_$_FollowerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
    Object? searchText = null,
  }) {
    return _then(_$_FollowerState(
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

class _$_FollowerState extends _FollowerState {
  _$_FollowerState(
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
    return 'FollowerState(friends: $friends, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowerState &&
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
  _$$_FollowerStateCopyWith<_$_FollowerState> get copyWith =>
      __$$_FollowerStateCopyWithImpl<_$_FollowerState>(this, _$identity);
}

abstract class _FollowerState extends FollowerState {
  factory _FollowerState(
      {required final List<FriendUiModel> friends,
      required final String searchText}) = _$_FollowerState;
  _FollowerState._() : super._();

  @override
  List<FriendUiModel> get friends;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$_FollowerStateCopyWith<_$_FollowerState> get copyWith =>
      throw _privateConstructorUsedError;
}
