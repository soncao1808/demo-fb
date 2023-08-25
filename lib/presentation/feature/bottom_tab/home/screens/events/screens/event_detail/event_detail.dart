/* E-03 event detail */
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/content_item_event.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/components/custom_event_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/event_detail/components/build_content.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/event_detail_presenter.dart';
import 'bloc/event_detail_state.dart';
import 'components/build_app_bar.dart';
import 'components/build_button_event.dart';

class EventDetailPage extends BasePage {
  const EventDetailPage({super.key});

  @override
  State<EventDetailPage> createState() => _EventDetailPageState();
}

class _EventDetailPageState extends BasePageState<EventDetailPage> {
  final EventDetailPresenter _eventsPresenter = injector.get<EventDetailPresenter>();

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
  Widget buildBody(BuildContext context) {
    return BlocConsumer<EventDetailPresenter, EventDetailState>(
      bloc: _eventsPresenter,
      listenWhen: (EventDetailState previous, EventDetailState current) =>
          (previous.event != current.event),
      listener: (BuildContext context, EventDetailState state) {},
      builder: (BuildContext context, EventDetailState state) {
        return CustomEventPage(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                const BuildEventDetailAppBar(),
              ];
            },
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 4.0),
                  ContentItemEvents(
                    item: state.event,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    centerHorizontal: true,
                  ),
                  const BuildButtonEventDetail(),
                  BuildEventDetailContent(content: state.event.content ?? ''),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
