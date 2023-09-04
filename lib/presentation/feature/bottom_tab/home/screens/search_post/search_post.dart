/* N-10 search post */
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/components/list_tab.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/components/list_user.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_search_bar.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/search_post_presenter.dart';
import 'bloc/search_post_state.dart';
import 'components/list_post.dart';

class SearchPostPage extends BasePage {
  const SearchPostPage({
    super.key,
  });

  @override
  State<SearchPostPage> createState() => _SearchPostPageState();
}

class _SearchPostPageState extends BasePageState<SearchPostPage> {
  final SearchPostPresenter _searchPostPresenter =
      injector.get<SearchPostPresenter>();

  @override
  void initState() {
    _searchPostPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _searchPostPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundWhite,
      isBack: true,
      icBackColor: context.colors.label,
      actions: <Widget>[
        BlocConsumer<SearchPostPresenter, SearchPostState>(
          bloc: _searchPostPresenter,
          listenWhen: (SearchPostState previous, SearchPostState current) =>
              previous.status != current.status,
          listener: (BuildContext context, SearchPostState state) {},
          builder: (context, state) {
            return Expanded(
              child: CustomSearchBar(
                hintText: AppLocalizations.of(context)!.text_common_search,
                value: state.searchText,
                onChange: (String text) {
                  _searchPostPresenter.onChangingSearchText(
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
      BlocConsumer<SearchPostPresenter, SearchPostState>(
        bloc: _searchPostPresenter,
        listenWhen: (SearchPostState previous, SearchPostState current) =>
            previous.status != current.status,
        listener: (BuildContext context, SearchPostState state) {},
        builder: (BuildContext context, SearchPostState state) {
          if (state.status == SearchPostPageStatus.searchPostLoading) {
            return const Loading();
          }
          return BaseContainer(
            backgroundColor: context.colors.backgroundWhite,
            hasBackgroundImage: false,
            body: Column(
              children: [
                const ListTab(),
                state.tabSelect == 0
                    ? const Expanded(child: ListPost())
                    : const Expanded(child: ListUser())
              ],
            ),
          );
        },
      );
}
