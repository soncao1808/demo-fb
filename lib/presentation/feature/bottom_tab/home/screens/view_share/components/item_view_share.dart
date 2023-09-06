import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/data/models/post/user_post.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemViewShare extends StatefulWidget {
  final UserPost? item;

  const ItemViewShare({
    required this.item,
    super.key,
  });

  @override
  State<ItemViewShare> createState() => _ItemViewShareState();
}

class _ItemViewShareState extends State<ItemViewShare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Avatar(url: widget.item?.avatar ?? '', circular: 100),
                const SizedBox(
                  width: 4.0,
                ),
                Text(widget.item?.name ?? '')
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: context.colors.backgroundThirdary,
                borderRadius: BorderRadius.circular(8),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.9),
              child: SvgPicture.asset(AppIcons.icAddUser),
            ),
          )
        ],
      ),
    );
  }
}
