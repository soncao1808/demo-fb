/* A-06 noti */

import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/list_block/bloc/user_block_state.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../../core/resources/app_images.dart';
import '../../../../../../core/resources/app_text_styles.dart';
import '../../../../../../data/models/user/user_block/response/user_block.dart';
import '../../../../../../injection/injector.dart';
import '../../../../../base/base_page.dart';
import '../../../../../widgets/avatar.dart';
import '../../../../../widgets/base_container.dart';
import '../../../../../widgets/custom_appbar.dart';
import '../../../../../widgets/custom_list/custom_list.dart';
import 'bloc/user_block_presenter.dart';

class ListBlockPage extends BasePage {
  const ListBlockPage({super.key});

  @override
  State<ListBlockPage> createState() => _ListBlockPageState();
}

class _ListBlockPageState extends BasePageState<ListBlockPage> {
  final UserBlockPresenter _userBlockPresenter =
      injector.get<UserBlockPresenter>();

  @override
  void initState() {
    _userBlockPresenter.clearState();
    super.initState();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundSecondary,
      label: AppLocalizations.of(context)!.text_list_block_title,
    );
  }

  Widget renderLists(UserBlockState state) {
    return CustomList(
      data: state.listUser,
      item: (int index) => ItemUserBlock(
        user: state.listUser[index],
        onPress: () {},
      ),
      page: state.page,
      totalPage: state.totalPage,
      onRefresh: () => {},
      onLoadMore: () => {},
      padding: const EdgeInsets.only(bottom: 16.0),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<UserBlockPresenter, UserBlockState>(
        bloc: _userBlockPresenter,
        listener: (BuildContext context, UserBlockState state) {},
        builder: (BuildContext context, UserBlockState state) {
          return BaseContainer(
              backgroundColor: context.colors.background,
              body: Container(
                  margin: const EdgeInsets.only(top: 1.0),
                  child: renderLists(state)));
        },
      );
}

class ItemUserBlock extends StatelessWidget {
  final UserBlock user;
  final Function onPress;
  const ItemUserBlock({
    super.key,
    required this.user,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        color: context.colors.backgroundSecondary,
        child: Row(children: <Widget>[
          Expanded(
              child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 68.0,
                            height: 68.0,
                            color: context.colors.backgroundSecondary,
                            child: Avatar(
                                url: user.avatar ?? '',
                                iconDefault: AppImages.imageSplash),
                          ),
                          // if (state.isStatusLoadingUploadImage)
                          //   Positioned(
                          //     left: 0,
                          //     top: 0,
                          //     child: SizedBox(
                          //       width: 68.0,
                          //       height: 68.0,
                          //       child: CircularProgressIndicator(
                          //         strokeWidth: 2.0,
                          //         color: context.colors.textPrimary,
                          //       ),
                          //     ),
                          //   )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 7.0,
              ),
              Text(
                user.name!,
                style: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.label,
                ),
              ),
            ],
          )),
          PrimaryButton(
            title: 'Gỡ',
            backgroundColor: context.colors.background,
            borderColor: context.colors.background,
            textColor: context.colors.textPrimary,
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          )
        ]),
      ),
    );
  }
}
