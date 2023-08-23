import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';

class PopupSuccess extends StatelessWidget {
  final String title;
  const PopupSuccess({super.key, required this.title});

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
              margin: const EdgeInsets.symmetric(horizontal: 70),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    AppIcons.icCheckCircle,
                    width: 20.0,
                    height: 20.0,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    title,
                    style: AppTextStyles.labelRegular12.copyWith(
                      color: context.colors.backgroundSecondary,
                    ),
                    textAlign: TextAlign.center,
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
