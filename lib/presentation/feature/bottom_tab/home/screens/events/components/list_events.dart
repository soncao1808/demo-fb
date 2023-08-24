import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/bloc/events_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/bloc/events_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/item_event.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListEvents extends StatefulWidget {
  const ListEvents({
    super.key,
  });

  @override
  State<ListEvents> createState() => _ListEventsState();
}

class _ListEventsState extends State<ListEvents> {
  final EventsPresenter _eventsPresenter = injector.get<EventsPresenter>();

  Widget renderContent(EventsState state) {
    return CustomList(
      padding: EdgeInsets.zero,
      data: state.listEvents,
      page: 1,
      totalPage: 16,
      item: (int index) => ItemEvents(
        item: state.listEvents[index],
        onTap: () {},
        onCareTap: () {
          _eventsPresenter.onUpdateStatusCareEvent(index);
        },
        onJoinTap: () {
          _eventsPresenter.onUpdateStatusJoinEvent(index);
        },
        onShareTap: () {},
      ),

    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<EventsPresenter, EventsState>(
      bloc: _eventsPresenter,
      listenWhen: (EventsState previous, EventsState current) =>
      (previous.listEvents != current.listEvents),
      listener: (BuildContext context, EventsState state) {},
      builder: (BuildContext context, EventsState state) {
        if (state.listEvents.isEmpty) return Container();

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: renderContent(state),
        );
      });
}
