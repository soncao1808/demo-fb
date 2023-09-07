import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';

class PersisterHeader extends StatefulWidget {
  const PersisterHeader({
    super.key,
  });

  @override
  State<PersisterHeader> createState() => _PersisterHeaderState();
}

class _PersisterHeaderState extends State<PersisterHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: MediaQuery.of(context).size.width / 2 - 16,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          const BoxShadow(blurRadius: 1.0),
          BoxShadow(
            color: context.colors.cloudGray,
            offset: const Offset(0.0, 0.75),
          ),
          const BoxShadow(color: Colors.white, offset: Offset(0.0, 20)),
        ],
        color: context.colors.backgroundWhite,
      ),
      child: Container(
        height: 5,
        width: 80,
        decoration: BoxDecoration(
          color: context.colors.lightGray,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
