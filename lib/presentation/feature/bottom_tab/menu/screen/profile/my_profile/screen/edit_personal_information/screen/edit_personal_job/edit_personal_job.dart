/* A-03-5 */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_bottom_button.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/build_job_field.dart';

class EditPersonalJobPage extends BasePage {
  const EditPersonalJobPage({super.key, required this.userModel});

  final UserUiModel? userModel;

  @override
  State<EditPersonalJobPage> createState() => _EditPersonalJobPageState();
}

class _EditPersonalJobPageState extends BasePageState<EditPersonalJobPage> {
  final EditPersonalJobPresenter _editPersonalJobPresenter =
      injector.get<EditPersonalJobPresenter>();

  @override
  void initState() {
    _editPersonalJobPresenter.init(widget.userModel);
    super.initState();
  }

  @override
  void dispose() {
    _editPersonalJobPresenter.resetState();
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
      label: AppLocalizations.of(context)!.text_job,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<EditPersonalJobPresenter, EditPersonalJobState>(
        bloc: _editPersonalJobPresenter,
        listenWhen: (EditPersonalJobState previous, EditPersonalJobState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalJobState state) {},
        builder: (BuildContext context, EditPersonalJobState state) {
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
                        BuildJobField(),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                BuildBottomButton(
                  onConfirm: _editPersonalJobPresenter.onConfirmUpdate,
                )
              ],
            ),
          );
        },
      );
}
