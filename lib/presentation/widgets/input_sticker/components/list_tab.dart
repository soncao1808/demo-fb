import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';

class ListTab extends StatelessWidget {
  final int tabSelect;
  final Function setTabSelect;
  const ListTab({
    super.key,
    required this.tabSelect,
    required this.setTabSelect,
  });

  @override
  Widget build(BuildContext context) {
    final data = ['Sticker', 'Gif'];

    return Container(
      color: context.colors.backgroundWhite,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...data.map(
                (e) => Container(
                  margin: data[0] == e
                      ? EdgeInsets.zero
                      : const EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    border: tabSelect != -1 && data[tabSelect] == e
                        ? Border(
                            bottom: BorderSide(
                              color: context.colors.backgroundPrimary,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          )
                        : null,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      int findIndex =
                          data.indexWhere((element) => element == e);
                      setTabSelect(findIndex);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 60,
                      ),
                      child: Text(
                        e,
                        style: AppTextStyles.labelBold16.copyWith(
                          color: tabSelect != -1 && data[tabSelect] == e
                              ? context.colors.backgroundPrimary
                              : context.colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
