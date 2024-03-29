import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/account/components/bottom_sheet_update_avatar.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/bloc/menu_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/bloc/menu_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/my_profile.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemProfileWidget extends BasePage {
  const ItemProfileWidget({super.key});

  @override
  State<ItemProfileWidget> createState() => _ItemProfileWidgetState();
}

class _ItemProfileWidgetState extends State<ItemProfileWidget> {
  final MenuPresenter _accountPresenter = injector.get<MenuPresenter>();

  void _onTapAvatar() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => BottomSheetUpdateAvatar(),
    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<MenuPresenter, MenuState>(
        bloc: _accountPresenter,
        listener: (BuildContext context, MenuState state) {},
        builder: (BuildContext context, MenuState state) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              navigationEventsHelper(const MyProfilePage());
            },
            child: Container(
              padding: const EdgeInsets.only(
                top: 12.0,
                right: 16.0,
                left: 16.0,
                bottom: 12.0,
              ),
              color: context.colors.backgroundSecondary,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    width: 41.0,
                                    height: 61.0,
                                    color: context.colors.backgroundSecondary,
                                    child: Avatar(
                                      url: state.infoUser?.avatar ?? '',
                                      iconDefault: AppImages.imageSplash,
                                    ),
                                  ),
                                  if (state.isStatusLoadingUploadImage)
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: SizedBox(
                                        width: 68.0,
                                        height: 68.0,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2.0,
                                          color: context.colors.textPrimary,
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                state.infoUser?.name ?? 'Hanah Food',
                                style: AppTextStyles.labelBold16.copyWith(
                                  color: context.colors.title,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                'Xem trang của bạn',
                                style: AppTextStyles.labelRegular12.copyWith(
                                  color: context.colors.title,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    width: 24.0,
                    height: 24.0,
                    AppIcons.icChevronRight,
                    color: context.colors.lightcCharcoal,
                  )
                ],
              ),
            ),
          );
        },
      );
}
