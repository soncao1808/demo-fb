import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/build_header_background.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/bloc/my_profile_state.dart';
import 'package:fbapp/presentation/feature/image_view/image_view_page.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/image_picker/bottom_sheet_image_picker.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/profile/bottom_sheet_edit_avatar.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/profile/bottom_sheet_edit_profile_background.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildMyProfileHeader extends StatefulWidget {
  const BuildMyProfileHeader({
    super.key,
    required this.state,
  });

  final MyProfileState state;

  @override
  State<BuildMyProfileHeader> createState() => _BuildMyProfileHeaderState();
}

class _BuildMyProfileHeaderState extends State<BuildMyProfileHeader> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BuildHeaderBackground(url: widget.state.user?.background ?? ''),
        Positioned(
          top: 12.0,
          right: 12.0,
          child: buildIconEditBackground(widget.state),
        ),
        Positioned(
          bottom: 0,
          left: 16,
          child: Stack(
            children: [
              Avatar(
                url: widget.state.user?.avatar ?? '',
                width: 152.0,
                height: 152.0,
                borderWidth: 5.0,
                circular: 200.0,
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: buildIconEditAvatar(widget.state),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildIconEditAvatar(MyProfileState state) {
    return GestureDetector(
      onTap: () {
        BottomSheetHelper.showBottomSheet(
          body: BottomSheetEditAvatar(
            onView: () {
              navigationEventsHelper(
                ImageViewPage(image: state.user?.avatar ?? ''),
              );
            },
            onEdit: () {
              BottomSheetHelper.showBottomSheet(
                body: const BottomSheetImagePicker(),
              );
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: context.colors.backgroundWhite,
          borderRadius: BorderRadius.circular(200),
          border: Border.all(
            width: 2,
            color: context.colors.unselectedBackground,
          ),
        ),
        child: SvgPicture.asset(
          AppIcons.icCamera,
          width: 23.0,
          height: 23.0,
        ),
      ),
    );
  }

  Widget buildIconEditBackground(MyProfileState state) {
    return GestureDetector(
      onTap: () {
        BottomSheetHelper.showBottomSheet(
          body: BottomSheetEditBackground(
            onView: () {
              navigationEventsHelper(
                ImageViewPage(image: state.user?.background ?? ''),
              );
            },
            onEdit: () {
              BottomSheetHelper.showBottomSheet(
                body: const BottomSheetImagePicker(),
              );
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: context.colors.textPrimary.withAlpha(50),
          borderRadius: BorderRadius.circular(200),
        ),
        child: SvgPicture.asset(
          AppIcons.icCamera,
          color: context.colors.backgroundWhite,
          width: 16.0,
          height: 16.0,
        ),
      ),
    );
  }
}
