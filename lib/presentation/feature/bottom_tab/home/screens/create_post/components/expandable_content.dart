import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_location/add_location.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
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

class ExpandableContent extends StatefulWidget {
  const ExpandableContent({
    super.key,
  });

  @override
  State<ExpandableContent> createState() => _ExpandableContentState();
}

class _ExpandableContentState extends State<ExpandableContent> {
  @override
  Widget build(BuildContext context) {
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
        () {
          navigationEventsHelper(const AddLocationPage());
        },
      ),
      Item(
        0,
        AppIcons.icReact,
        AppLocalizations.of(context)!.text_create_post_react,
        () {},
      ),
    ];
    return Column(
      children: [
        ...data.map((e) {
          return GestureDetector(
            onTap: () {
              e.onTap();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Row(
                children: [
                  SvgPicture.asset(
                    e.icon,
                    width: 35,
                    height: 35,
                  ),
                  const SizedBox(width: 12),
                  Text(e.name, style: AppTextStyles.labelRegular16)
                ],
              ),
            ),
          );
        })
      ],
    );
  }
}
