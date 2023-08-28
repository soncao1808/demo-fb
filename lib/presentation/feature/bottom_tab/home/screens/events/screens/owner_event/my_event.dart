/* E-04-c my event */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/owner_event/bloc/my_event_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/owner_event/components/list_events.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/my_event_presenter.dart';

class MyEventPage extends BasePage {
  const MyEventPage({super.key});

  @override
  State<MyEventPage> createState() => _SearchEventPageState();
}

class _SearchEventPageState extends BasePageState<MyEventPage> {
  final MyEventPresenter _myEventPresenter = injector.get<MyEventPresenter>();

  @override
  void initState() {
    _myEventPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _myEventPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundWhite,
      isBack: true,
      icBackColor: context.colors.label,
      isCenterTitle: true,
      label: AppLocalizations.of(context)!.text_my_event,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) => BlocConsumer<MyEventPresenter, MyEventState>(
        bloc: _myEventPresenter,
        listenWhen: (MyEventState previous, MyEventState current) =>
            (previous.events != current.events),
        listener: (BuildContext context, MyEventState state) {},
        builder: (BuildContext context, MyEventState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            hasBackgroundImage: true,
            body: const ListMyEvent(),
          );
        },
      );
}
