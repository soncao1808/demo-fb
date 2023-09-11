import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/create_post.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/bloc/my_profile_state.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/profile/bottom_sheet_edit_profile.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_appbar_action.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';

class BuildMyProfileAppBar extends StatefulWidget {
  const BuildMyProfileAppBar({
    super.key,
    required this.state,
  });

  final MyProfileState state;

  @override
  State<BuildMyProfileAppBar> createState() => _BuildMyProfileAppBarState();
}

class _BuildMyProfileAppBarState extends State<BuildMyProfileAppBar> {

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundWhite,
      isAction: false,
      isBack: true,
      icBackColor: context.colors.label,
      label: widget.state.user?.getFullName() ?? '',
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
      actions: <Widget>[
        CustomAppBarAction(
          iconPath: AppIcons.icPlus,
          backgroundColor: context.colors.cloudGray,
          padding: const EdgeInsets.only(right: 12.0),
          onTap: () {
            navigationEventsHelper(const CreatePostPage());
          },
        ),
        CustomAppBarAction(
          iconPath: AppIcons.icMoreVertical,
          backgroundColor: context.colors.cloudGray,
          onTap: () {
            BottomSheetHelper.showBottomSheet(
              body: const BottomSheetEditProfile(),
            );
          },
        )
      ],
    );
  }
}
