import 'package:cached_network_image/cached_network_image.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/components/bottom_sheet_privacy.dart';
import 'package:fbapp/presentation/widgets/privacy_post/privacy_post.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          previous.status != current.status ||
          previous.selectLocations != current.selectLocations ||
          previous.tagFriends != current.tagFriends ||
          previous.selectReact != current.selectReact,
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      overflow: TextOverflow.clip,
                      text: TextSpan(
                        text: "Test Name",
                        style: AppTextStyles.labelRegular14.copyWith(
                          color: context.colors.label,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: state.selectReact != null
                                ? " ${AppLocalizations.of(context)!.text_create_post_doing.toLowerCase()} ${state.selectReact?.emoji ?? ''} ${AppLocalizations.of(context)!.text_create_post_feeling.toLowerCase()} ${state.selectReact?.name ?? ''}"
                                : '',
                          ),
                          TextSpan(
                            text: state.tagFriends.isNotEmpty
                                ? " ${AppLocalizations.of(context)!.text_create_post_with.toLowerCase()} "
                                : '',
                          ),
                          TextSpan(
                            text: state.tagFriends.isNotEmpty
                                ? state.tagFriends.map((e) => e.name).join(', ')
                                : '',
                            style: AppTextStyles.labelBold14.copyWith(
                              color: context.colors.label,
                            ),
                          ),
                          TextSpan(
                            text: state.selectLocations != null
                                ? " ${AppLocalizations.of(context)!.text_create_post_in.toLowerCase()} "
                                : '',
                          ),
                          TextSpan(
                            text: state.selectLocations != null
                                ? state.selectLocations?.name ?? ''
                                : '',
                            style: AppTextStyles.labelBold14.copyWith(
                              color: context.colors.label,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
