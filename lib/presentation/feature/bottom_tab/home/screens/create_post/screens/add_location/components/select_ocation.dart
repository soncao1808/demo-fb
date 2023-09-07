import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/location/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Selectlocation extends StatefulWidget {
  final Location? item;
  final Function? onRemove;

  const Selectlocation({
    this.item,
    this.onRemove,
    super.key,
  });

  @override
  State<Selectlocation> createState() => _SelectlocationState();
}

class _SelectlocationState extends State<Selectlocation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text:
                          "${AppLocalizations.of(context)!.text_create_post_in} ",
                      style: AppTextStyles.labelRegular14.copyWith(
                        color: context.colors.label,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: widget.item?.name ?? '',
                          style: AppTextStyles.labelBold16.copyWith(
                            color: context.colors.label,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                GestureDetector(
                  onTap: () {
                    widget.onRemove?.call();
                  },
                  child: Icon(
                    Icons.close,
                    color: context.colors.label,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
