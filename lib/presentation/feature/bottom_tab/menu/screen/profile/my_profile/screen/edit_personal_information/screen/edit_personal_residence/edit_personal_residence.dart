/* A-03-4 */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_bottom_button.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_residence/component/build_current_address_field.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/edit_personal_residence_presenter.dart';
import 'bloc/edit_personal_residence_state.dart';
import 'component/build_home_town _field.dart';

class EditPersonalResidencePage extends BasePage {
  const EditPersonalResidencePage({super.key, required this.userModel});

  final UserUiModel? userModel;

  @override
  State<EditPersonalResidencePage> createState() => _EditPersonalResidencePageState();
}

class _EditPersonalResidencePageState extends BasePageState<EditPersonalResidencePage> {
  final EditPersonalResidencePresenter _editPersonalResidencePresenter =
      injector.get<EditPersonalResidencePresenter>();

  @override
  void initState() {
    _editPersonalResidencePresenter.init(widget.userModel);
    super.initState();
  }

  @override
  void dispose() {
    _editPersonalResidencePresenter.resetState();
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
      label: AppLocalizations.of(context)!.text_your_address,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<EditPersonalResidencePresenter, EditPersonalResidenceState>(
        bloc: _editPersonalResidencePresenter,
        listenWhen: (EditPersonalResidenceState previous, EditPersonalResidenceState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalResidenceState state) {},
        builder: (BuildContext context, EditPersonalResidenceState state) {
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
                        BuildCurrentAddressField(),
                        BuildHomeTownField(),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                BuildBottomButton(
                  onConfirm: _editPersonalResidencePresenter.onConfirmUpdate,
                )
              ],
            ),
          );
        },
      );
}
