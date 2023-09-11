/* E-04 search event */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/components/list_events.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/components/list_search_history.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'bloc/search_event_presenter.dart';

class SearchEventPage extends BasePage {
  const SearchEventPage({super.key});

  @override
  State<SearchEventPage> createState() => _SearchEventPageState();
}

class _SearchEventPageState extends BasePageState<SearchEventPage> {
  final SearchEventPresenter _searchEventPresenter = injector.get<SearchEventPresenter>();
  final KeyboardVisibilityController _keyboardVisibilityController = KeyboardVisibilityController();

  @override
  void initState() {
    _searchEventPresenter.init();
    _keyboardVisibilityController.onChange.listen((event) {
      if (!_keyboardVisibilityController.isVisible) {
        _searchEventPresenter.onChangingSearchText(onChanging: false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchEventPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundWhite,
      isBack: true,
      icBackColor: context.colors.label,
      fullWidthAction: true,
      actions: <Widget>[
        BlocConsumer<SearchEventPresenter, SearchEventState>(
          bloc: _searchEventPresenter,
          listener: (BuildContext context, SearchEventState state) {},
          builder: (context, state) {
            return Expanded(
                child: CustomSearchBar(
              hintText: 'Tìm kiếm sự kiện',
              value: state.searchText,
              onChange: (String text) {
                _searchEventPresenter.onChangingSearchText(onChanging: true, changingText: text);
              },
              onSummited: (String text) {
                _searchEventPresenter.onSearchSummit(text);
              },
              unFocus: (bool focus) {
                _searchEventPresenter.onChangingSearchText(onChanging: false);
              },
            ));
          },
        )
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) => BlocConsumer<SearchEventPresenter, SearchEventState>(
        bloc: _searchEventPresenter,
        listenWhen: (SearchEventState previous, SearchEventState current) =>
            (previous.searchResult != current.searchResult),
        listener: (BuildContext context, SearchEventState state) {},
        builder: (BuildContext context, SearchEventState state) {
          return KeyboardVisibilityBuilder(
              controller: _keyboardVisibilityController,
              builder: (context, isKeyboardVisible) {
                return BaseContainer(
                  backgroundColor: context.colors.background,
                  hasBackgroundImage: true,
                  body: state.statusSearchInputting
                      ? const ListSearchEventHistory()
                      : (!state.statusHaveSearchResult)
                          ? const ListSearchEventHistory()
                          : const ListSearchEventResult(),
                );
              });
        },
      );
}
