import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/react/react.dart';
import 'package:flutter/material.dart';

class ItemReact extends StatefulWidget {
  final React item;
  final Function(React)? onSelect;

  const ItemReact({
    required this.item,
    this.onSelect,
    super.key,
  });

  @override
  State<ItemReact> createState() => _ItemReactState();
}

class _ItemReactState extends State<ItemReact> {
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
                  Text(
                    widget.item.emoji ?? '',
                    style: AppTextStyles.labelBold27,
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Text(
                      widget.item.name ?? '',
                      style: AppTextStyles.labelBold14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
