import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/location/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemLocation extends StatefulWidget {
  final Location item;
  final Function(Location)? onSelect;

  const ItemLocation({
    required this.item,
    this.onSelect,
    super.key,
  });

  @override
  State<ItemLocation> createState() => _ItemLocationState();
}

class _ItemLocationState extends State<ItemLocation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: context.colors.cloudGray,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SvgPicture.asset(
                      AppIcons.icLocation,
                      width: 20,
                      height: 20,
                      color: context.colors.textSecondary,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.name ?? '',
                        style: AppTextStyles.labelBold14,
                      ),
                      const SizedBox(height: 4.0),
                      Text(widget.item.description ?? ''),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
