import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  const TagList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Container(
          color: const Color.fromRGBO(237, 237, 238, 1),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: const FittedBox(
            child: Text(
              "24時間営業",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
      itemCount: 100,
    );
  }
}
