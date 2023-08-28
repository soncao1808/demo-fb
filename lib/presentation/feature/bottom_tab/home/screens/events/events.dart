/* E-01 events */
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/list_category_events.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/list_events.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/owner_event/my_event.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/search_event.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_appbar_action.dart';
import 'package:flutter/material.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/resources/resources.dart';
import 'bloc/events_presenter.dart';
import 'bloc/events_state.dart';

class EventsPage extends BasePage {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends BasePageState<EventsPage> {
  final EventsPresenter _eventsPresenter = injector.get<EventsPresenter>();

  @override
  void initState() {
    _eventsPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _eventsPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundPrimary,
      isAction: false,
      isBack: true,
      icBackColor: context.colors.labelSecondary,
      label: AppLocalizations.of(context)!.text_common_event,
      labelStyle: AppTextStyles.labelBold20.copyWith(
        color: context.colors.labelSecondary,
      ),
      actions: <Widget>[
        CustomAppBarAction(
          iconPath: AppIcons.icSearch,
          padding: const EdgeInsets.only(right: 12.0),
          onTap: () {
            navigationEventsHelper(const SearchEventPage());
          },
        ),
        CustomAppBarAction(
          iconPath: AppIcons.icCalendar,
          onTap: () {
            navigationEventsHelper(const MyEventPage());
          },
        )
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) => BlocConsumer<EventsPresenter, EventsState>(
        bloc: _eventsPresenter,
        listenWhen: (EventsState previous, EventsState current) =>
            (previous.listEventCategory != current.listEventCategory) ||
            (previous.listEvents != current.listEvents) ||
            (previous.selectedCategory != current.selectedCategory),
        listener: (BuildContext context, EventsState state) {},
        builder: (BuildContext context, EventsState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            hasBackgroundImage: true,
            body: Column(
              children: const [
                ListCategoryEvents(),
                Expanded(child: ListEvents()),
              ],
            ),
          );
        },
      );
}
