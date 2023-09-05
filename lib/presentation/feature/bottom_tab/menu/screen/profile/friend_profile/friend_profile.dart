import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/bloc/friend_profile_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/bloc/friend_profile_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/followed/followed_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/follower/follower_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/personal_information/friend_information.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/profile/bottom_sheet_friend_optional.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class FriendProfilePage extends BasePage {
  const FriendProfilePage({super.key});

  @override
  State<FriendProfilePage> createState() => _FriendProfilePageState();
}

class _FriendProfilePageState extends BasePageState<FriendProfilePage> {
  final FriendProfilePresenter _friendProfilePresenter = injector.get<FriendProfilePresenter>();

  @override
  void initState() {
    _friendProfilePresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _friendProfilePresenter.resetState();
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
      label: 'HAHA food',
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<FriendProfilePresenter, FriendProfileState>(
        bloc: _friendProfilePresenter,
        listenWhen: (FriendProfileState previous, FriendProfileState current) =>
            (previous != current),
        listener: (BuildContext context, FriendProfileState state) {},
        builder: (BuildContext context, FriendProfileState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    title: 'Optional',
                    onPressed: () {
                      BottomSheetHelper.showBottomSheet(
                        body: const BottomSheetFriendOptional(),
                      );
                    },
                  ),
                  const SizedBox(height: 30),
                  PrimaryButton(
                    title: 'profile detail',
                    onPressed: () {
                      navigationEventsHelper(const FriendInformationPage());
                    },
                  ),
                  const SizedBox(height: 30),
                  PrimaryButton(
                    title: 'người theo dõi',
                    onPressed: () {
                      navigationEventsHelper(const FollowerPage());
                    },
                  ),
                  const SizedBox(height: 30),
                  PrimaryButton(
                    title: 'đã theo dõi',
                    onPressed: () {
                      navigationEventsHelper(const FollowedPage());
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
}
