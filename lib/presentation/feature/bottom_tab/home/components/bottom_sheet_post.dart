import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/account/bloc/account_presenter.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetPost extends StatelessWidget {
  BottomSheetPost({
    super.key,
  });

  final AccountPresenter _accountPresenter = injector.get<AccountPresenter>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: context.colors.backgroundSecondary,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Column(
            children: <Widget>[
              _ItemButton(
                onTap: () {
                  Navigator.pop(context);
                },
                title: AppLocalizations.of(context)!.text_post_report,
                icon: AppIcons.icReport,
              ),
              const Divider(),
              _ItemButton(
                onTap: () {
                  Navigator.pop(context);
                },
                title: AppLocalizations.of(context)!.text_post_copy,
                icon: AppIcons.icCopyToClipboard,
              ),
            ],
          ),
        ),
        SizedBox(height: 16 + MediaQuery.of(context).padding.bottom),
      ],
    );
  }
}

class _ItemButton extends StatelessWidget {
  const _ItemButton({
    required this.title,
    required this.icon,
    required this.onTap,
    this.color,
  });

  final String title;
  final String icon;
  final Function onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      child: GestureDetector(
        onTap: () => onTap(),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 20.0,
              height: 20.0,
            ),
            const SizedBox(width: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.labelRegular14.copyWith(
                color: color ?? context.colors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
