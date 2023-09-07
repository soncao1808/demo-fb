import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class Item {
  late int id;
  late String icon;
  late String name;
  late Function onTap;

  Item(this.id, this.icon, this.name, this.onTap);
}

class PersisterFooter extends StatefulWidget {
  const PersisterFooter({
    super.key,
  });

  @override
  State<PersisterFooter> createState() => _PersisterFooterState();
}

class _PersisterFooterState extends State<PersisterFooter> {
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    List<Item> data = [
      Item(
        0,
        AppIcons.icCamera,
        AppLocalizations.of(context)!.text_create_post_add_media,
        () {},
      ),
      Item(
        0,
        AppIcons.icTag,
        AppLocalizations.of(context)!.text_create_post_tag_friend,
        () {},
      ),
      Item(
        0,
        AppIcons.icLocation,
        AppLocalizations.of(context)!.text_create_post_add_location,
        () {},
      ),
      Item(
        0,
        AppIcons.icReact,
        AppLocalizations.of(context)!.text_create_post_react,
        () {},
      ),
    ];

    return Container(
      color: context.colors.backgroundWhite,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: padding.bottom, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...data.map(
            (e) => GestureDetector(
              onTap: e.onTap(),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 1,
                    color: context.colors.cloudGray,
                  ),
                  color: context.colors.backgroundWhite,
                ),
                child: SvgPicture.asset(
                  e.icon,
                  width: 35,
                  height: 35,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
