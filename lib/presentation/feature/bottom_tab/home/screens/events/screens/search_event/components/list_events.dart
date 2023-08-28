import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/event_detail/event_detail.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/components/item_search_event_result.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/share/bottom_sheet_share.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSearchEventResult extends StatefulWidget {
  const ListSearchEventResult({
    super.key,
  });

  @override
  State<ListSearchEventResult> createState() => _ListSearchEventResultState();
}

class _ListSearchEventResultState extends State<ListSearchEventResult> {
  final SearchEventPresenter _eventsPresenter = injector.get<SearchEventPresenter>();

  void _onShareTap() {
    BottomSheetHelper.showBottomSheet(
      body: const BottomSheetShare(),
    );
  }

  Widget renderContent(SearchEventState state) {
    return CustomList(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      data: state.searchResult,
      page: 1,
      totalPage: 16,
      item: (int index) => ItemSearchEventResult(
        item: state.searchResult[index],
        onTap: () {
          navigationEventsHelper(const EventDetailPage());
        },
        onCareTap: () {
          _eventsPresenter.onUpdateStatusCareEvent(index);
        },
        onShareTap: () {
          _onShareTap();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<SearchEventPresenter, SearchEventState>(
      bloc: _eventsPresenter,
      listenWhen: (SearchEventState previous, SearchEventState current) =>
          (previous.searchResult != current.searchResult),
      listener: (BuildContext context, SearchEventState state) {},
      builder: (BuildContext context, SearchEventState state) {
        if (state.statusLoadingSearchEvent) return const Center(child: Loading());

        if (state.searchResult.isEmpty) return Container();

        return Container(
          child: renderContent(state),
        );
      });
}
