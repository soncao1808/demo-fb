import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/user_tag/user_tag.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:fbapp/presentation/widgets/checkbox.dart';
import 'package:flutter/material.dart';

class ItemTag extends StatefulWidget {
  final UserTag item;
  final Function(UserTag)? onSelect;
  final bool checked;

  const ItemTag({
    required this.item,
    this.onSelect,
    required this.checked,
    super.key,
  });

  @override
  State<ItemTag> createState() => _ItemTagState();
}

class _ItemTagState extends State<ItemTag> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onSelect?.call(widget.item);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Avatar(
                    url: widget.item.avatar ?? '',
                    circular: 50,
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Text(
                      widget.item.name ?? '',
                      style: AppTextStyles.labelBold14,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 12.0),
            CheckBoxCustom(
              checked: widget.checked,
              onChanged: () {
                widget.onSelect?.call(widget.item);
              },
              borderRadius: 5,
            )
          ],
        ),
      ),
    );
  }
}
