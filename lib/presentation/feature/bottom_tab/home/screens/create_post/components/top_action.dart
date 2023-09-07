import 'package:cached_network_image/cached_network_image.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/components/bottom_sheet_privacy.dart';
import 'package:fbapp/presentation/widgets/privacy_post/privacy_post.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopAction extends StatefulWidget {
  const TopAction({
    super.key,
  });

  @override
  State<TopAction> createState() => _TopActionState();
}

class _TopActionState extends State<TopAction> {
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
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10000.0),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
                  placeholder: (context, url) => Image.asset(
                    AppIcons.icAvatar,
                    width: 40.0,
                    height: 40.0,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Test name'),
                  const SizedBox(height: 8),
                  PrivacyPost(
                    privacy: state.selectPrivacy,
                    onTap: () {
                      BottomSheetHelper.showBottomSheet(
                        body: const BottomSheetPrivacy(),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
