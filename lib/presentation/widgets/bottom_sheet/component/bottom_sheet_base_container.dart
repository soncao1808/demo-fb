import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/cupertino.dart';

class BottomSheetBaseContainer extends StatelessWidget {
  const BottomSheetBaseContainer({
    super.key,
    required this.children
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: context.colors.backgroundWhite,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: children,
      ),
    );
  }
}
