import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/data/models/event/event_category.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/bloc/events_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/bloc/events_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/resources/app_text_styles.dart';

class ItemCategoryEvents extends StatefulWidget {
  const ItemCategoryEvents({super.key, required this.item, required this.onTap});

  final EventCategory item;
  final Function onTap;

  @override
  State<ItemCategoryEvents> createState() => _ItemCategoryEventsState();
}

class _ItemCategoryEventsState extends State<ItemCategoryEvents> {
  final EventsPresenter _eventsPresenter = injector.get<EventsPresenter>();

  @override
  Widget build(BuildContext context) => BlocConsumer<EventsPresenter, EventsState>(
      bloc: _eventsPresenter,
      listenWhen: (EventsState previous, EventsState current) =>
          (previous.selectedCategory != current.selectedCategory),
      listener: (BuildContext context, EventsState state) {},
      builder: (BuildContext context, EventsState state) {
        bool isSelected = state.selectedCategory?.id == widget.item.id;

        return GestureDetector(
            onTap: () {
              widget.onTap.call();
            },
            child: Container(
              height: 36.0,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              margin: const EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                  color: isSelected
                      ? context.colors.selectedBackground
                      : context.colors.unselectedBackground,
                  borderRadius: BorderRadius.circular(200.0)),
              alignment: Alignment.center,
              child: Text(
                widget.item.name ?? '',
                style: AppTextStyles.labelRegular14.copyWith(
                  color: isSelected ? context.colors.labelSecondary : context.colors.label,
                ),
              ),
            ));
      });
}
