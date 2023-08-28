import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:fbapp/data/models/event/event.dart';
import 'package:fbapp/injection/injector.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/bloc/events_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/bloc/events_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/content_item_event.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/custom_button_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemEvents extends StatefulWidget {
  const ItemEvents(
      {super.key,
      required this.item,
      required this.onTap,
      required this.onCareTap,
      required this.onJoinTap,
      required this.onShareTap});

  final Event item;
  final Function onTap;
  final Function onCareTap;
  final Function onJoinTap;
  final Function onShareTap;

  @override
  State<ItemEvents> createState() => _ItemEventsState();
}

class _ItemEventsState extends State<ItemEvents> {
  final EventsPresenter _eventsPresenter = injector.get<EventsPresenter>();

  @override
  Widget build(BuildContext context) => BlocConsumer<EventsPresenter, EventsState>(
      bloc: _eventsPresenter,
      listenWhen: (EventsState previous, EventsState current) =>
          (previous.selectedCategory != current.selectedCategory),
      listener: (BuildContext context, EventsState state) {},
      builder: (BuildContext context, EventsState state) {
        return GestureDetector(
            onTap: () {
              widget.onTap.call();
            },
            child: Column(
              children: [
                buildThumbnail(),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                      color: context.colors.backgroundWhite,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContentItemEvents(item: widget.item),
                      buildButton(),
                    ],
                  ),
                )
              ],
            ));
      });

  Widget buildThumbnail() {
    return ClipRRect(
      borderRadius:
          const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              AppImages.eventImageTest,
              height: 132.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton() {
    return Row(
      children: [
        Expanded(
          child: CustomButtonEvent(
            unSelectedIcon: AppIcons.icStarOutline,
            selectedIcon: AppIcons.icStarFill,
            title: AppLocalizations.of(context)?.text_e_common_care,
            isSelected: widget.item.care,
            onTap: () {
              widget.onCareTap.call();
            },
          ),
        ),
        const SizedBox(width: 4.0),
        Expanded(
          child: CustomButtonEvent(
            unSelectedIcon: AppIcons.icCheckCircleSvg,
            selectedIcon: AppIcons.icCheckCircleFill,
            title: AppLocalizations.of(context)?.text_e_common_will_be_join,
            isSelected: widget.item.join,
            onTap: () {
              widget.onJoinTap.call();
            },
          ),
        ),
        const SizedBox(width: 4.0),
        CustomButtonEvent(
          unSelectedIcon: AppIcons.icShare,
          onTap: () {
            widget.onShareTap.call();
          },
        )
      ],
    );
  }
}
