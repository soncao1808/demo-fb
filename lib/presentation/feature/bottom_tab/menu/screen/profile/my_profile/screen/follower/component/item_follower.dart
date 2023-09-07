import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ItemFollower extends StatefulWidget {
  const ItemFollower({
    super.key,
    required this.item,
    required this.onTap,
    required this.onAddFriendTap,
    this.isLast = false,
  });

  final FriendUiModel item;
  final Function onTap;
  final Function onAddFriendTap;
  final bool isLast;

  @override
  State<ItemFollower> createState() => _ItemFollowerState();
}

class _ItemFollowerState extends State<ItemFollower> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap.call();
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 16.0,
          top: 16.0,
          right: 16.0,
          bottom: widget.isLast ? 16.0 : 0,
        ),
        color: context.colors.backgroundWhite,
        child: Row(
          children: [
            Avatar(
              url: widget.item.avatar ?? '',
              width: 40.0,
              height: 40.0,
              circular: 200.0,
            ),
            const SizedBox(width: 7.0),
            Expanded(
              child: Text(
                widget.item.getFullName(),
                style: AppTextStyles.labelBold14.copyWith(
                  color: context.colors.label,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            if (!widget.item.isFriend)
              PrimaryButton(
                title: '',
                icon: AppIcons.icAddFriend,
                isLoading: false,
                removeHeight: true,
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                borderColor: context.colors.selectedBackground,
                backgroundColor: context.colors.selectedBackground,
                textColor: context.colors.labelSecondary,
                onPressed: () {
                  widget.onAddFriendTap.call();
                },
              )
          ],
        ),
      ),
    );
  }
}
