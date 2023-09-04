import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/search_post.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post_history/bloc/search_post_history_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post_history/bloc/search_post_history_state.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:flutter_svg/svg.dart';

class SearchHistory extends StatefulWidget {
  const SearchHistory({
    super.key,
  });

  @override
  State<SearchHistory> createState() => _SearchHistoryState();
}

class _SearchHistoryState extends State<SearchHistory> {
  final SearchPostHistoryPresenter _searchPostHistoryPresenter =
      injector.get<SearchPostHistoryPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<SearchPostHistoryPresenter, SearchPostHistoryState>(
        bloc: _searchPostHistoryPresenter,
        listenWhen:
            (SearchPostHistoryState previous, SearchPostHistoryState current) =>
                (previous.status != current.status),
        listener: (BuildContext context, SearchPostHistoryState state) {},
        builder: (BuildContext context, SearchPostHistoryState state) {
          return Container(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            color: context.colors.backgroundWhite,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      AppLocalizations.of(context)!.text_search_history,
                      style: AppTextStyles.labelBold14.copyWith(
                        color: context.colors.label,
                      ),
                    )),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        AppLocalizations.of(context)!.text_delete,
                        style: AppTextStyles.labelRegular12.copyWith(
                          color: context.colors.textPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...state.listHistory.map(
                        (e) => GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  AppIcons.icSearchBar,
                                  width: 20.0,
                                  height: 20.0,
                                  color: context.colors.textPrimary,
                                ),
                                const SizedBox(width: 12.0),
                                Expanded(
                                  child: Text(
                                    e,
                                    style:
                                        AppTextStyles.labelRegular14.copyWith(
                                      color: context.colors.label,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigationEventsHelper(const SearchPostPage());
                        },
                        child: const Text("Xem tất cả kết quả"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
}
