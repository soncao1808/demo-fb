// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPostState {
  SearchPostPageStatus get status => throw _privateConstructorUsedError;
  List<Post> get listPost => throw _privateConstructorUsedError;
  List<User> get listUser => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  int get tabSelect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPostStateCopyWith<SearchPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPostStateCopyWith<$Res> {
  factory $SearchPostStateCopyWith(
          SearchPostState value, $Res Function(SearchPostState) then) =
      _$SearchPostStateCopyWithImpl<$Res, SearchPostState>;
  @useResult
  $Res call(
      {SearchPostPageStatus status,
      List<Post> listPost,
      List<User> listUser,
      String searchText,
      int tabSelect});
}

/// @nodoc
class _$SearchPostStateCopyWithImpl<$Res, $Val extends SearchPostState>
    implements $SearchPostStateCopyWith<$Res> {
  _$SearchPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listPost = null,
    Object? listUser = null,
    Object? searchText = null,
    Object? tabSelect = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchPostPageStatus,
      listPost: null == listPost
          ? _value.listPost
          : listPost // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      listUser: null == listUser
          ? _value.listUser
          : listUser // ignore: cast_nullable_to_non_nullable
              as List<User>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      tabSelect: null == tabSelect
          ? _value.tabSelect
          : tabSelect // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchPostStateCopyWith<$Res>
    implements $SearchPostStateCopyWith<$Res> {
  factory _$$_SearchPostStateCopyWith(
          _$_SearchPostState value, $Res Function(_$_SearchPostState) then) =
      __$$_SearchPostStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchPostPageStatus status,
      List<Post> listPost,
      List<User> listUser,
      String searchText,
      int tabSelect});
}

/// @nodoc
class __$$_SearchPostStateCopyWithImpl<$Res>
    extends _$SearchPostStateCopyWithImpl<$Res, _$_SearchPostState>
    implements _$$_SearchPostStateCopyWith<$Res> {
  __$$_SearchPostStateCopyWithImpl(
      _$_SearchPostState _value, $Res Function(_$_SearchPostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listPost = null,
    Object? listUser = null,
    Object? searchText = null,
    Object? tabSelect = null,
  }) {
    return _then(_$_SearchPostState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchPostPageStatus,
      listPost: null == listPost
          ? _value._listPost
          : listPost // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      listUser: null == listUser
          ? _value._listUser
          : listUser // ignore: cast_nullable_to_non_nullable
              as List<User>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      tabSelect: null == tabSelect
          ? _value.tabSelect
          : tabSelect // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchPostState extends _SearchPostState {
  _$_SearchPostState(
      {required this.status,
      required final List<Post> listPost,
      required final List<User> listUser,
      required this.searchText,
      required this.tabSelect})
      : _listPost = listPost,
        _listUser = listUser,
        super._();

  @override
  final SearchPostPageStatus status;
  final List<Post> _listPost;
  @override
  List<Post> get listPost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPost);
  }

  final List<User> _listUser;
  @override
  List<User> get listUser {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listUser);
  }

  @override
  final String searchText;
  @override
  final int tabSelect;

  @override
  String toString() {
    return 'SearchPostState(status: $status, listPost: $listPost, listUser: $listUser, searchText: $searchText, tabSelect: $tabSelect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPostState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._listPost, _listPost) &&
            const DeepCollectionEquality().equals(other._listUser, _listUser) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.tabSelect, tabSelect) ||
                other.tabSelect == tabSelect));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_listPost),
      const DeepCollectionEquality().hash(_listUser),
      searchText,
      tabSelect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPostStateCopyWith<_$_SearchPostState> get copyWith =>
      __$$_SearchPostStateCopyWithImpl<_$_SearchPostState>(this, _$identity);
}

abstract class _SearchPostState extends SearchPostState {
  factory _SearchPostState(
      {required final SearchPostPageStatus status,
      required final List<Post> listPost,
      required final List<User> listUser,
      required final String searchText,
      required final int tabSelect}) = _$_SearchPostState;
  _SearchPostState._() : super._();

  @override
  SearchPostPageStatus get status;
  @override
  List<Post> get listPost;
  @override
  List<User> get listUser;
  @override
  String get searchText;
  @override
  int get tabSelect;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPostStateCopyWith<_$_SearchPostState> get copyWith =>
      throw _privateConstructorUsedError;
}
