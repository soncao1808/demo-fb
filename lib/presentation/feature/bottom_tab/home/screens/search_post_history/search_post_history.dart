/* N-09 post search */
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_search_bar.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/search_post_history_presenter.dart';
import 'bloc/search_post_history_state.dart';
import 'components/search_history.dart';

class SearchPostHistoryPage extends BasePage {
  const SearchPostHistoryPage({
    super.key,
  });

  @override
  State<SearchPostHistoryPage> createState() => _SearchPostHistoryPageState();
}

class _SearchPostHistoryPageState extends BasePageState<SearchPostHistoryPage> {
  final SearchPostHistoryPresenter _searchPostHistoryPresenter =
      injector.get<SearchPostHistoryPresenter>();

  @override
  void initState() {
    _searchPostHistoryPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _searchPostHistoryPresenter.resetState();
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
        BlocConsumer<SearchPostHistoryPresenter, SearchPostHistoryState>(
          bloc: _searchPostHistoryPresenter,
          listenWhen: (SearchPostHistoryState previous,
                  SearchPostHistoryState current) =>
              previous.status != current.status,
          listener: (BuildContext context, SearchPostHistoryState state) {},
          builder: (context, state) {
            return Expanded(
              child: CustomSearchBar(
                hintText: AppLocalizations.of(context)!.text_common_search,
                value: state.searchText,
                onChange: (String text) {
                  _searchPostHistoryPresenter.onChangingSearchText(
                      onChanging: true, changingText: text);
                },
                onSummited: (String text) {},
                unFocus: (bool focus) {},
              ),
            );
          },
        )
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<SearchPostHistoryPresenter, SearchPostHistoryState>(
        bloc: _searchPostHistoryPresenter,
        listenWhen:
            (SearchPostHistoryState previous, SearchPostHistoryState current) =>
                previous.status != current.status,
        listener: (BuildContext context, SearchPostHistoryState state) {},
        builder: (BuildContext context, SearchPostHistoryState state) {
          if (state.status == SearchPostHistoryPageStatus.searchPostLoading) {
            return const Loading();
          }
          return BaseContainer(
            backgroundColor: context.colors.backgroundWhite,
            hasBackgroundImage: false,
            body: const SearchHistory(),
          );
        },
      );
}
