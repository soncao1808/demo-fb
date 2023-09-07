import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';

class ItemFollowed extends StatefulWidget {
  const ItemFollowed({
    super.key,
    required this.item,
    required this.onTap,
    required this.onFollowTap,
    this.isLast = false,
  });

  final FriendUiModel item;
  final Function onTap;
  final Function onFollowTap;
  final bool isLast;

  @override
  State<ItemFollowed> createState() => _ItemFollowedState();
}

class _ItemFollowedState extends State<ItemFollowed> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap.call();
      },
      behavior: HitTestBehavior.opaque,
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
          ],
        ),
      ),
    );
  }
}
