// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';

class CustomPopup extends ModalRoute {
  CustomPopup({
    this.message,
    this.body,
    this.opacity = 0.5,
    this.title = "Đóng",
    this.isCancle = false,
    this.onHandleConfirm,
  });

  final String? message;
  final String? title;
  final Widget? body;
  final double opacity;
  final bool isCancle;
  final VoidCallback? onHandleConfirm;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(opacity);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: _buildOverlayContent(context, body),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context, Widget? body) {
    if (body != null) {
      return body;
    }

    Widget renderBody() {
      return Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.cancel_outlined,
                size: 24,
                color: context.colors.textPrimary,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    message ?? '',
                    style: AppTextStyles.body1.copyWith(
                      color: context.colors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (isCancle)
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(
                              context,
                              AppLocalizations.of(context)!.text_common_cancel,
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: context.colors.backgroundSecondary,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                color: context.colors.textPrimary,
                              ),
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.text_common_cancel,
                              style: AppTextStyles.body1
                                  .copyWith(color: context.colors.textPrimary),
                            ),
                          ),
                        ),
                      GestureDetector(
                        onTap: () {
                          if (onHandleConfirm != null) {
                            return onHandleConfirm?.call();
                          }
                          Navigator.pop(context, title);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: context.colors.textPrimary,
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: context.colors.textPrimary,
                            ),
                          ),
                          child: Text(
                            title ??
                                AppLocalizations.of(context)!
                                    .text_common_dialog_ok,
                            style: AppTextStyles.body1
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return AlertDialog(
      content: renderBody(),
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}
