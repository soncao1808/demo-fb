import 'package:fbapp/data/models/user_tag/user_tag.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';

class SelectTag extends StatefulWidget {
  final List<UserTag> data;
  final Function(UserTag)? onRemove;

  const SelectTag({
    required this.data,
    this.onRemove,
    super.key,
  });

  @override
  State<SelectTag> createState() => _SelectTagState();
}

class _SelectTagState extends State<SelectTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: SingleChildScrollView(
        child: Row(
          children: [
            ...widget.data.map(
              (e) => Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Column(
                      children: [
                        Avatar(
                          url: e.avatar ?? '',
                          circular: 60,
                          width: 60,
                          height: 60,
                        ),
                        Text(e.name ?? ''),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -5,
                    right: -5,
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1.0),
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(1000.0),
                        onTap: () {
                          widget.onRemove?.call(e);
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.black87,
                          size: 15,
                        ),
                      ),
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
