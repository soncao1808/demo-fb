import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_state.dart';
import 'package:fbapp/presentation/widgets/checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class Item {
  late int id;
  late String icon;
  late String name;

  Item(this.id, this.icon, this.name);
}

class BottomSheetPrivacy extends StatefulWidget {
  const BottomSheetPrivacy({
    super.key,
  });

  @override
  State<BottomSheetPrivacy> createState() => _BottomSheetPrivacyState();
}

class _BottomSheetPrivacyState extends State<BottomSheetPrivacy> {
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
        List<Item> data = <Item>[
          Item(
            0,
            AppIcons.icPrivacyPublic,
            AppLocalizations.of(context)!.text_create_post_public,
          ),
          Item(
            1,
            AppIcons.icPrivacyFriend,
            AppLocalizations.of(context)!.text_create_post_friend,
          ),
          Item(
            2,
            AppIcons.icPrivacyPrivate,
            AppLocalizations.of(context)!.text_create_post_private,
          ),
        ];
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.text_create_post_privacy_title,
                style: AppTextStyles.labelBold16,
              ),
              const SizedBox(height: 12),
              Text(
                AppLocalizations.of(context)!.text_create_post_privacy_view,
                style: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.textPrimary,
                ),
              ),
              const SizedBox(height: 16.0),
              Column(
                children: [
                  ...data.map(
                    (e) => GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              e.icon,
                              width: 20.0,
                              height: 20.0,
                              color: Colors.black87,
                            ),
                            const SizedBox(width: 12.0),
                            Expanded(
                              child: Text(
                                e.name,
                                style: AppTextStyles.labelRegular14.copyWith(
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12.0),
                            CheckBoxCustom(
                              isCheckBox: state.selectPrivacy == e.id,
                              onChanged: (bool val) {
                                _createPostPresenter.updateSelectPrivacy(e.id);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
