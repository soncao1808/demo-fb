/* A-03-2 */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_bottom_button.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/component/build_birthday_field.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/component/build_gender_field.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/edit_personal_detail_presenter.dart';
import 'bloc/edit_personal_detail_state.dart';
import 'component/build_textfield_name.dart';

class EditPersonalDetailPage extends BasePage {
  const EditPersonalDetailPage({super.key, required this.userModel});

  final UserUiModel? userModel;

  @override
  State<EditPersonalDetailPage> createState() => _EditPersonalDetailPageState();
}

class _EditPersonalDetailPageState extends BasePageState<EditPersonalDetailPage> {
  final EditPersonalDetailPresenter _editPersonalDetailPresenter =
      injector.get<EditPersonalDetailPresenter>();

  @override
  void initState() {
    _editPersonalDetailPresenter.init(widget.userModel);
    super.initState();
  }

  @override
  void dispose() {
    _editPersonalDetailPresenter.resetState();
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
      label: AppLocalizations.of(context)!.text_personal_info_detail,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<EditPersonalDetailPresenter, EditPersonalDetailState>(
        bloc: _editPersonalDetailPresenter,
        listenWhen: (EditPersonalDetailState previous, EditPersonalDetailState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalDetailState state) {},
        builder: (BuildContext context, EditPersonalDetailState state) {
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
                        BuildTextFieldName(),
                        BuildGenderField(),
                        BuildBirthDayField(),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                BuildBottomButton(
                  onConfirm: _editPersonalDetailPresenter.onConfirmUpdate,
                )
              ],
            ),
          );
        },
      );
}
