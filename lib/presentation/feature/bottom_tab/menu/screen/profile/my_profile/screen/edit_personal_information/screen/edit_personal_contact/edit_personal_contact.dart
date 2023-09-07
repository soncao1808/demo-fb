/* A-03-3 */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_bottom_button.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_contact/component/build_email_field.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_contact/component/build_phone_field.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/edit_personal_contact_presenter.dart';
import 'bloc/edit_personal_contact_state.dart';
import 'component/build_address_field.dart';

class EditPersonalContactPage extends BasePage {
  const EditPersonalContactPage({super.key, required this.userModel});

  final UserUiModel? userModel;

  @override
  State<EditPersonalContactPage> createState() => _EditPersonalContactPageState();
}

class _EditPersonalContactPageState extends BasePageState<EditPersonalContactPage> {
  final EditPersonalContactPresenter _editPersonalContactPresenter = injector.get<EditPersonalContactPresenter>();

  @override
  void initState() {
    _editPersonalContactPresenter.init(widget.userModel);
    super.initState();
  }

  @override
  void dispose() {
    _editPersonalContactPresenter.resetState();
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
      label: AppLocalizations.of(context)!.text_personal_contact,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<EditPersonalContactPresenter, EditPersonalContactState>(
        bloc: _editPersonalContactPresenter,
        listenWhen: (EditPersonalContactState previous, EditPersonalContactState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalContactState state) {},
        builder: (BuildContext context, EditPersonalContactState state) {
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
                        BuildPhoneField(),
                        BuildEmailField(),
                        BuildAddressField(),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                BuildBottomButton(
                  onConfirm: _editPersonalContactPresenter.onConfirmUpdate,
                )
              ],
            ),
          );
        },
      );
}
