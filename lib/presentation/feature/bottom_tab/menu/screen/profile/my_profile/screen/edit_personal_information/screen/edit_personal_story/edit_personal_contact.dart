/* A-03-6 */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_bottom_button.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_story/component/build_story_field.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/edit_personal_story_presenter.dart';
import 'bloc/edit_personal_story_state.dart';

class EditPersonalStoryPage extends BasePage {
  const EditPersonalStoryPage({super.key, required this.userModel});

  final UserUiModel? userModel;

  @override
  State<EditPersonalStoryPage> createState() => _EditPersonalStoryPageState();
}

class _EditPersonalStoryPageState extends BasePageState<EditPersonalStoryPage> {
  final EditPersonalStoryPresenter _editPersonalStoryPresenter = injector.get<EditPersonalStoryPresenter>();

  @override
  void initState() {
    _editPersonalStoryPresenter.init(widget.userModel);
    super.initState();
  }

  @override
  void dispose() {
    _editPersonalStoryPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundWhite,
      isBack: true,
      icBackColor: context.colors.label,
      isCenterTitle: true,
      label: AppLocalizations.of(context)!.text_story,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<EditPersonalStoryPresenter, EditPersonalStoryState>(
        bloc: _editPersonalStoryPresenter,
        listenWhen: (EditPersonalStoryState previous, EditPersonalStoryState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalStoryState state) {},
        builder: (BuildContext context, EditPersonalStoryState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            hasBackgroundImage: true,
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: const [
                        SizedBox(height: 8),
                        BuildStoryField(),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                BuildBottomButton(
                  onConfirm: _editPersonalStoryPresenter.onConfirmUpdate,
                )
              ],
            ),
          );
        },
      );
}
