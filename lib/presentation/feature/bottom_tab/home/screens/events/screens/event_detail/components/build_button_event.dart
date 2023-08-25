import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/event_detail/bloc/event_detail_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/event_detail/bloc/event_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:flutter/material.dart';

import '../../../components/custom_button_event.dart';

class BuildButtonEventDetail extends StatefulWidget {
  const BuildButtonEventDetail({super.key});

  @override
  State<BuildButtonEventDetail> createState() => _BuildButtonEventDetailState();
}

class _BuildButtonEventDetailState extends State<BuildButtonEventDetail> {
  final EventDetailPresenter _presenter = injector.get<EventDetailPresenter>();

  @override
  Widget build(BuildContext context) => BlocConsumer<EventDetailPresenter, EventDetailState>(
      bloc: _presenter,
      listenWhen: (EventDetailState previous, EventDetailState current) =>
          (previous.event != current.event),
      listener: (BuildContext context, EventDetailState state) {},
      builder: (BuildContext context, EventDetailState state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                child: CustomButtonEvent(
                  unSelectedIcon: AppIcons.icStarOutline,
                  selectedIcon: AppIcons.icStarFill,
                  unSelectedIconColor: context.colors.selectedBackground,
                  title: AppLocalizations.of(context)?.text_e_common_care,
                  isSelected: state.event.care,
                  onTap: () {
                    _presenter.onUpdateCareEventStatus();
                  },
                ),
              ),
              const SizedBox(width: 4.0),
              Expanded(
                child: CustomButtonEvent(
                  unSelectedIcon: AppIcons.icCheckCircleSvg,
                  selectedIcon: AppIcons.icCheckCircleFill,
                  unSelectedIconColor: context.colors.selectedBackground,
                  title: AppLocalizations.of(context)?.text_e_common_will_be_join,
                  isSelected: state.event.join,
                  onTap: () {
                    _presenter.onUpdateJoinEventStatus();
                  },
                ),
              ),
              const SizedBox(width: 4.0),
              CustomButtonEvent(
                unSelectedIcon: AppIcons.icShare,
                onTap: () {
                  // widget.onShareTap.call();
                },
              )
            ],
          ),
        );
      });
}
