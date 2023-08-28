import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:fbapp/data/models/event/event.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_state.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/content_item_event.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/custom_button_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemSearchEventResult extends StatefulWidget {
  const ItemSearchEventResult(
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
  State<ItemSearchEventResult> createState() => _ItemSearchEventResultState();
}

class _ItemSearchEventResultState extends State<ItemSearchEventResult> {
  final SearchEventPresenter _searchEventsPresenter = injector.get<SearchEventPresenter>();

  @override
  Widget build(BuildContext context) => BlocConsumer<SearchEventPresenter, SearchEventState>(
      bloc: _searchEventsPresenter,
      listenWhen: (SearchEventState previous, SearchEventState current) =>
          (previous.searchResult != current.searchResult),
      listener: (BuildContext context, SearchEventState state) {},
      builder: (BuildContext context, SearchEventState state) {
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
            selectedIcon: AppIcons.icStarFill,
            title: AppLocalizations.of(context)?.text_e_common_care,
            isSelected: widget.item.care,
            onTap: () {
              widget.onCareTap.call();
            },
          ),
        ),
      ],
    );
  }
}
