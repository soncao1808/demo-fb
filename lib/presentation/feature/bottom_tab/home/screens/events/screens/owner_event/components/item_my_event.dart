import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:fbapp/data/models/event/event.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/owner_event/bloc/my_event_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/owner_event/bloc/my_event_state.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/content_item_event.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/custom_button_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemMyEvent extends StatefulWidget {
  const ItemMyEvent(
      {super.key,
      required this.item,
      required this.onTap,
      required this.onCareTap,
      required this.onShareTap});

  final Event item;
  final Function onTap;
  final Function onCareTap;
  final Function onShareTap;

  @override
  State<ItemMyEvent> createState() => _ItemMyEventState();
}

class _ItemMyEventState extends State<ItemMyEvent> {
  final MyEventPresenter _myEventPresenter = injector.get<MyEventPresenter>();

  @override
  Widget build(BuildContext context) => BlocConsumer<MyEventPresenter, MyEventState>(
      bloc: _myEventPresenter,
      listenWhen: (MyEventState previous, MyEventState current) =>
          (previous.events != current.events),
      listener: (BuildContext context, MyEventState state) {},
      builder: (BuildContext context, MyEventState state) {
        return GestureDetector(
            onTap: () {
              widget.onTap.call();
            },
            child: Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 8.0),
              decoration: BoxDecoration(
                color: context.colors.backgroundWhite,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildThumbnail(),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContentItemEvents(item: widget.item),
                        buildButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ));
      });

  Widget buildThumbnail() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Image.asset(
        AppImages.eventImageTest,
        height: 65.0,
        width: 65.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildButton() {
    return Row(
      children: [
        Expanded(
          child: CustomButtonEvent(
            unSelectedIcon: AppIcons.icStarOutline,
            selectedIcon: AppIcons.icStarOutline,
            title: AppLocalizations.of(context)?.text_e_common_care,
            isSelected: widget.item.care,
            onTap: () {
              widget.onCareTap.call();
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
