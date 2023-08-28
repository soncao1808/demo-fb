import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/data/models/event/event_category.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/bloc/events_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/bloc/events_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/item_category_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCategoryEvents extends StatefulWidget {
  const ListCategoryEvents({
    super.key,
  });

  @override
  State<ListCategoryEvents> createState() => _ListCategoryEventsState();
}

class _ListCategoryEventsState extends State<ListCategoryEvents> {
  final EventsPresenter _eventsPresenter = injector.get<EventsPresenter>();

  Widget renderContent(EventsState state) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(width: 16.0),
          ...state.listEventCategory
              .map((EventCategory eventCategory) => ItemCategoryEvents(
                    item: eventCategory,
                    onTap: () {
                      _eventsPresenter.onSelectCategory(eventCategory);
                    },
                  ))
              .toList(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<EventsPresenter, EventsState>(
      bloc: _eventsPresenter,
      listenWhen: (EventsState previous, EventsState current) =>
          (previous.listEventCategory != current.listEventCategory),
      listener: (BuildContext context, EventsState state) {},
      builder: (BuildContext context, EventsState state) {
        if (state.listEventCategory.isEmpty) return Container();

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          color: context.colors.backgroundWhite,
          child: renderContent(state),
        );
      });
}
