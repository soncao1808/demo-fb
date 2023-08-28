import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

import 'item_search_history.dart';

class ListSearchEventHistory extends StatefulWidget {
  const ListSearchEventHistory({
    super.key,
  });

  @override
  State<ListSearchEventHistory> createState() => _ListSearchEventHistoryState();
}

class _ListSearchEventHistoryState extends State<ListSearchEventHistory> {
  final SearchEventPresenter _searchEventPresenter = injector.get<SearchEventPresenter>();

  Widget renderContent(SearchEventState state) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
                  onTap: () {
                    _searchEventPresenter.onDeleteSearchHistory();
                  },
                  child: Text(
                    AppLocalizations.of(context)!.text_delete,
                    style: AppTextStyles.labelRegular12.copyWith(
                      color: context.colors.textPrimary,
                    ),
                  )),
            ],
          ),
          const SizedBox(height: 16.0),
          ...state.searchHistory
              .map((String history) => ItemSearchEventHistory(
                    history: history,
                    onTap: () {
                      _searchEventPresenter.onSelectSearchHistory(history);
                    },
                  ))
              .toList(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<SearchEventPresenter, SearchEventState>(
      bloc: _searchEventPresenter,
      listenWhen: (SearchEventState previous, SearchEventState current) =>
          (previous.searchHistory != current.searchHistory),
      listener: (BuildContext context, SearchEventState state) {},
      builder: (BuildContext context, SearchEventState state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          color: context.colors.backgroundWhite,
          child: renderContent(state),
        );
      });
}
