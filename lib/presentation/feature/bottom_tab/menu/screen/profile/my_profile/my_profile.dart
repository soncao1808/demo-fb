/* A-01 my page */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/bloc/my_profile_presenter.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/profile/bottom_sheet_edit_profile.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/my_profile_state.dart';

class MyProfilePage extends BasePage {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends BasePageState<MyProfilePage> {
  final MyProfilePresenter _myProfilePresenter = injector.get<MyProfilePresenter>();

  @override
  void initState() {
    _myProfilePresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _myProfilePresenter.resetState();
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
  Widget buildBody(BuildContext context) => BlocConsumer<MyProfilePresenter, MyProfileState>(
        bloc: _myProfilePresenter,
        listenWhen: (MyProfileState previous, MyProfileState current) => (previous != current),
        listener: (BuildContext context, MyProfileState state) {},
        builder: (BuildContext context, MyProfileState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            body: Center(
              child: PrimaryButton(
                title: 'open bottom profile',
                onPressed: () {
                  BottomSheetHelper.showBottomSheet(
                    body: const BottomSheetEditProfile(),
                  );
                },
              ),
            ),
          );
        },
      );
}
