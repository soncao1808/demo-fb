import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DefaultProfileContainer extends StatelessWidget {
  const DefaultProfileContainer({
    super.key,
    this.child = const [],
    this.title = '',
    this.onEditTap,
    this.haveHeader = true,
    this.enableEdit = true
  });

  final List<Widget> child;
  final String title;
  final Function? onEditTap;
  final bool haveHeader;
  final bool enableEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.backgroundWhite,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          if (haveHeader) Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppTextStyles.labelBold14.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ),
              if (enableEdit) GestureDetector(
                onTap: () {
                  onEditTap?.call();
                },
                child: Text(
                  AppLocalizations.of(context)!.text_edit,
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.textCerulean,
                  ),
                ),
              )
            ],
          ),
          if (haveHeader && child.isNotEmpty) const SizedBox(height: 8.0),
          ...child.toList()
        ],
      ),
    );
  }
}
