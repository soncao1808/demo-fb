import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/event_detail/event_detail.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/owner_event/bloc/my_event_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/owner_event/bloc/my_event_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/owner_event/components/item_my_event.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/share/bottom_sheet_share.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListMyEvent extends StatefulWidget {
  const ListMyEvent({
    super.key,
  });

  @override
  State<ListMyEvent> createState() => _ListMyEventState();
}

class _ListMyEventState extends State<ListMyEvent> {
  final MyEventPresenter _myEventPresenter = injector.get<MyEventPresenter>();

  void _onShareTap() {
    BottomSheetHelper.showBottomSheet(
      body: const BottomSheetShare(),
    );
  }

  Widget renderContent(MyEventState state) {
    return CustomList(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      data: state.events,
      page: 1,
      totalPage: 16,
      item: (int index) => ItemMyEvent(
        item: state.events[index],
        onTap: () {
          navigationEventsHelper(const EventDetailPage());
        },
        onCareTap: () {
          _myEventPresenter.onUpdateStatusCareEvent(index);
        },
        onShareTap: () {
          _onShareTap();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<MyEventPresenter, MyEventState>(
      bloc: _myEventPresenter,
      listenWhen: (MyEventState previous, MyEventState current) =>
          (previous.events != current.events),
      listener: (BuildContext context, MyEventState state) {},
      builder: (BuildContext context, MyEventState state) {
        if (state.statusLoadingMyEvent) return const Center(child: Loading());

        if (state.events.isEmpty) return Container();

        return Container(
          child: renderContent(state),
        );
      });
}
