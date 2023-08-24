import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';

class CustomEventPage extends StatelessWidget {
  final Widget body;

  const CustomEventPage({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Container(
                    color: context.colors.background,
                    child: Image.asset(
                AppImages.eventBackground,
                fit: BoxFit.fitHeight,
              ),
                  ))
            ],
          ),
          body
        ],
      ),
    );
  }
}
