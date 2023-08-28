// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEventState {
  List<Event> get searchResult => throw _privateConstructorUsedError;
  List<String> get searchHistory => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  bool get statusSearchInputting => throw _privateConstructorUsedError;
  bool get statusLoadingSearchEvent => throw _privateConstructorUsedError;
  bool get statusHaveSearchResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventStateCopyWith<SearchEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventStateCopyWith<$Res> {
  factory $SearchEventStateCopyWith(
          SearchEventState value, $Res Function(SearchEventState) then) =
      _$SearchEventStateCopyWithImpl<$Res, SearchEventState>;
  @useResult
  $Res call(
      {List<Event> searchResult,
      List<String> searchHistory,
      String searchText,
      bool statusSearchInputting,
      bool statusLoadingSearchEvent,
      bool statusHaveSearchResult});
}

/// @nodoc
class _$SearchEventStateCopyWithImpl<$Res, $Val extends SearchEventState>
    implements $SearchEventStateCopyWith<$Res> {
  _$SearchEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? searchHistory = null,
    Object? searchText = null,
    Object? statusSearchInputting = null,
    Object? statusLoadingSearchEvent = null,
    Object? statusHaveSearchResult = null,
  }) {
    return _then(_value.copyWith(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      searchHistory: null == searchHistory
          ? _value.searchHistory
          : searchHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      statusSearchInputting: null == statusSearchInputting
          ? _value.statusSearchInputting
          : statusSearchInputting // ignore: cast_nullable_to_non_nullable
              as bool,
      statusLoadingSearchEvent: null == statusLoadingSearchEvent
          ? _value.statusLoadingSearchEvent
          : statusLoadingSearchEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      statusHaveSearchResult: null == statusHaveSearchResult
          ? _value.statusHaveSearchResult
          : statusHaveSearchResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchEventStateCopyWith<$Res>
    implements $SearchEventStateCopyWith<$Res> {
  factory _$$_SearchEventStateCopyWith(
          _$_SearchEventState value, $Res Function(_$_SearchEventState) then) =
      __$$_SearchEventStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Event> searchResult,
      List<String> searchHistory,
      String searchText,
      bool statusSearchInputting,
      bool statusLoadingSearchEvent,
      bool statusHaveSearchResult});
}

/// @nodoc
class __$$_SearchEventStateCopyWithImpl<$Res>
    extends _$SearchEventStateCopyWithImpl<$Res, _$_SearchEventState>
    implements _$$_SearchEventStateCopyWith<$Res> {
  __$$_SearchEventStateCopyWithImpl(
      _$_SearchEventState _value, $Res Function(_$_SearchEventState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? searchHistory = null,
    Object? searchText = null,
    Object? statusSearchInputting = null,
    Object? statusLoadingSearchEvent = null,
    Object? statusHaveSearchResult = null,
  }) {
    return _then(_$_SearchEventState(
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      searchHistory: null == searchHistory
          ? _value._searchHistory
          : searchHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      statusSearchInputting: null == statusSearchInputting
          ? _value.statusSearchInputting
          : statusSearchInputting // ignore: cast_nullable_to_non_nullable
              as bool,
      statusLoadingSearchEvent: null == statusLoadingSearchEvent
          ? _value.statusLoadingSearchEvent
          : statusLoadingSearchEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      statusHaveSearchResult: null == statusHaveSearchResult
          ? _value.statusHaveSearchResult
          : statusHaveSearchResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchEventState extends _SearchEventState {
  _$_SearchEventState(
      {required final List<Event> searchResult,
      required final List<String> searchHistory,
      required this.searchText,
      required this.statusSearchInputting,
      required this.statusLoadingSearchEvent,
      required this.statusHaveSearchResult})
      : _searchResult = searchResult,
        _searchHistory = searchHistory,
        super._();

  final List<Event> _searchResult;
  @override
  List<Event> get searchResult {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  final List<String> _searchHistory;
  @override
  List<String> get searchHistory {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchHistory);
  }

  @override
  final String searchText;
  @override
  final bool statusSearchInputting;
  @override
  final bool statusLoadingSearchEvent;
  @override
  final bool statusHaveSearchResult;

  @override
  String toString() {
    return 'SearchEventState(searchResult: $searchResult, searchHistory: $searchHistory, searchText: $searchText, statusSearchInputting: $statusSearchInputting, statusLoadingSearchEvent: $statusLoadingSearchEvent, statusHaveSearchResult: $statusHaveSearchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchEventState &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult) &&
            const DeepCollectionEquality()
                .equals(other._searchHistory, _searchHistory) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.statusSearchInputting, statusSearchInputting) ||
                other.statusSearchInputting == statusSearchInputting) &&
            (identical(
                    other.statusLoadingSearchEvent, statusLoadingSearchEvent) ||
                other.statusLoadingSearchEvent == statusLoadingSearchEvent) &&
            (identical(other.statusHaveSearchResult, statusHaveSearchResult) ||
                other.statusHaveSearchResult == statusHaveSearchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchResult),
      const DeepCollectionEquality().hash(_searchHistory),
      searchText,
      statusSearchInputting,
      statusLoadingSearchEvent,
      statusHaveSearchResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchEventStateCopyWith<_$_SearchEventState> get copyWith =>
      __$$_SearchEventStateCopyWithImpl<_$_SearchEventState>(this, _$identity);
}

abstract class _SearchEventState extends SearchEventState {
  factory _SearchEventState(
      {required final List<Event> searchResult,
      required final List<String> searchHistory,
      required final String searchText,
      required final bool statusSearchInputting,
      required final bool statusLoadingSearchEvent,
      required final bool statusHaveSearchResult}) = _$_SearchEventState;
  _SearchEventState._() : super._();

  @override
  List<Event> get searchResult;
  @override
  List<String> get searchHistory;
  @override
  String get searchText;
  @override
  bool get statusSearchInputting;
  @override
  bool get statusLoadingSearchEvent;
  @override
  bool get statusHaveSearchResult;
  @override
  @JsonKey(ignore: true)
  _$$_SearchEventStateCopyWith<_$_SearchEventState> get copyWith =>
      throw _privateConstructorUsedError;
}
