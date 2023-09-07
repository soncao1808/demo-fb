import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopupError extends StatelessWidget {
  const PopupError({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: context.colors.backgroundSecondary.withOpacity(0),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2 - 100,
          right: 0,
          left: 0,
          child: Container(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(
                    AppIcons.icXCircleFill,
                    color: context.colors.error,
                    width: 20.0,
                    height: 20.0,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    error,
                    style: AppTextStyles.labelRegular12.copyWith(
                      color: context.colors.backgroundSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
