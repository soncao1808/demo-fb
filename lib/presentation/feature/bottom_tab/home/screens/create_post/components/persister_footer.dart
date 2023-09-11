import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_location/add_location.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_react/add_react.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_tag/add_tag.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final CreatePostPresenter _createPostPresenter =
      injector.get<CreatePostPresenter>();

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<CreatePostPresenter, CreatePostState>(
      bloc: _createPostPresenter,
      listenWhen: (CreatePostState previous, CreatePostState current) =>
          previous.status != current.status,
      listener: (BuildContext context, CreatePostState state) {},
      builder: (BuildContext context, CreatePostState state) {
        List<Item> data = [
          Item(
            0,
            AppIcons.icCamera,
            AppLocalizations.of(context)!.text_create_post_add_media,
            () {
              _createPostPresenter.handleSelectMedias();
            },
          ),
          Item(
            0,
            AppIcons.icTag,
            AppLocalizations.of(context)!.text_create_post_tag_friend,
            () {
              navigationEventsHelper(AddTagPage(
                defaultTag: state.tagFriends,
              ));
            },
          ),
          Item(
            0,
            AppIcons.icLocation,
            AppLocalizations.of(context)!.text_create_post_add_location,
            () {
              navigationEventsHelper(AddLocationPage(
                defaultLocation: state.selectLocations,
              ));
            },
          ),
          Item(
            0,
            AppIcons.icReact,
            AppLocalizations.of(context)!.text_create_post_react,
            () {
              navigationEventsHelper(AddReactPage(
                defaultReact: state.selectReact,
              ));
            },
          ),
        ];
        return Container(
          color: context.colors.backgroundWhite,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...data.map(
                (e) => GestureDetector(
                  onTap: () => e.onTap(),
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
      },
    );
  }
}
