import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/bloc/friend_profile_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/profile/bottom_sheet_friend_optional.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_appbar_action.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';

class BuildFriendProfileAppBar extends StatelessWidget {
  const BuildFriendProfileAppBar({
    super.key,
    required this.state,
  });

  final FriendProfileState state;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundWhite,
      isAction: false,
      isBack: true,
      icBackColor: context.colors.label,
      label: state.user?.getFullName() ?? '',
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
      actions: <Widget>[
        CustomAppBarAction(
          iconPath: AppIcons.icMoreVertical,
          backgroundColor: context.colors.cloudGray,
          onTap: () {
            BottomSheetHelper.showBottomSheet(
              body: const BottomSheetFriendOptional(),
            );
          },
        )
      ],
    );
  }
}
