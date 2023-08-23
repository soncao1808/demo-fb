import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fbapp/presentation/widgets/loading.dart';

class ProgressIndicatorPlatformWidget extends StatelessWidget {
  const ProgressIndicatorPlatformWidget({
    this.sizeIconIOS = 18,
    this.verticalPadding = 30,
    Key? key,
  }) : super(key: key);
  final double sizeIconIOS;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalPadding),
          child: const Loading(),
        ),
      );
}
