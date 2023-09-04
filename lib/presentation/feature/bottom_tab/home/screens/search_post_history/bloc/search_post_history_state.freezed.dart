// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_post_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPostHistoryState {
  SearchPostHistoryPageStatus get status => throw _privateConstructorUsedError;
  List<String> get listHistory => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPostHistoryStateCopyWith<SearchPostHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPostHistoryStateCopyWith<$Res> {
  factory $SearchPostHistoryStateCopyWith(SearchPostHistoryState value,
          $Res Function(SearchPostHistoryState) then) =
      _$SearchPostHistoryStateCopyWithImpl<$Res, SearchPostHistoryState>;
  @useResult
  $Res call(
      {SearchPostHistoryPageStatus status,
      List<String> listHistory,
      String searchText});
}

/// @nodoc
class _$SearchPostHistoryStateCopyWithImpl<$Res,
        $Val extends SearchPostHistoryState>
    implements $SearchPostHistoryStateCopyWith<$Res> {
  _$SearchPostHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listHistory = null,
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchPostHistoryPageStatus,
      listHistory: null == listHistory
          ? _value.listHistory
          : listHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchPostHistoryStateCopyWith<$Res>
    implements $SearchPostHistoryStateCopyWith<$Res> {
  factory _$$_SearchPostHistoryStateCopyWith(_$_SearchPostHistoryState value,
          $Res Function(_$_SearchPostHistoryState) then) =
      __$$_SearchPostHistoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchPostHistoryPageStatus status,
      List<String> listHistory,
      String searchText});
}

/// @nodoc
class __$$_SearchPostHistoryStateCopyWithImpl<$Res>
    extends _$SearchPostHistoryStateCopyWithImpl<$Res,
        _$_SearchPostHistoryState>
    implements _$$_SearchPostHistoryStateCopyWith<$Res> {
  __$$_SearchPostHistoryStateCopyWithImpl(_$_SearchPostHistoryState _value,
      $Res Function(_$_SearchPostHistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listHistory = null,
    Object? searchText = null,
  }) {
    return _then(_$_SearchPostHistoryState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchPostHistoryPageStatus,
      listHistory: null == listHistory
          ? _value._listHistory
          : listHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchPostHistoryState extends _SearchPostHistoryState {
  _$_SearchPostHistoryState(
      {required this.status,
      required final List<String> listHistory,
      required this.searchText})
      : _listHistory = listHistory,
        super._();

  @override
  final SearchPostHistoryPageStatus status;
  final List<String> _listHistory;
  @override
  List<String> get listHistory {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listHistory);
  }

  @override
  final String searchText;

  @override
  String toString() {
    return 'SearchPostHistoryState(status: $status, listHistory: $listHistory, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPostHistoryState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listHistory, _listHistory) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_listHistory), searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPostHistoryStateCopyWith<_$_SearchPostHistoryState> get copyWith =>
      __$$_SearchPostHistoryStateCopyWithImpl<_$_SearchPostHistoryState>(
          this, _$identity);
}

abstract class _SearchPostHistoryState extends SearchPostHistoryState {
  factory _SearchPostHistoryState(
      {required final SearchPostHistoryPageStatus status,
      required final List<String> listHistory,
      required final String searchText}) = _$_SearchPostHistoryState;
  _SearchPostHistoryState._() : super._();

  @override
  SearchPostHistoryPageStatus get status;
  @override
  List<String> get listHistory;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPostHistoryStateCopyWith<_$_SearchPostHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
