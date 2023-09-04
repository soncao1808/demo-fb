import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/default_profile_container.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_privacy_field.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_contact/bloc/edit_personal_contact_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_contact/bloc/edit_personal_contact_presenter.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class BuildEmailField extends StatefulWidget {
  const BuildEmailField({super.key});

  @override
  State<BuildEmailField> createState() => _BuildEmailFieldState();
}

class _BuildEmailFieldState extends State<BuildEmailField> {
  final EditPersonalContactPresenter _editPersonalContactPresenter =
      injector.get<EditPersonalContactPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<EditPersonalContactPresenter, EditPersonalContactState>(
        bloc: _editPersonalContactPresenter,
        listenWhen: (EditPersonalContactState previous, EditPersonalContactState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalContactState state) {},
        builder: (BuildContext context, EditPersonalContactState state) {
          final String email = state.email ?? '';

          return DefaultProfileContainer(
            haveHeader: false,
            child: [
              const SizedBox(height: 4.0),
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_email,
                labelText: AppLocalizations.of(context)!.text_email,
                isRequired: false,
                onChanged: (String text) {
                  _editPersonalContactPresenter.onUpdateEmail(text);
                },
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: email,
                  selection: TextSelection(
                    baseOffset: email.length,
                    extentOffset: email.length,
                  ),
                ),
                isDisable: false,
                fillColor: context.colors.backgroundWhite,
                textStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
                hintStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.textPrimary),
              ),
              const SizedBox(height: 16.0),
              BuildPrivacyField(
                onChange: (Privacy privacy) {
                  _editPersonalContactPresenter.onUpdateEmailPrivacy(privacy);
                },
                currentPrivacy: state.emailPrivacy,
              ),
              const SizedBox(height: 4.0),
            ],
          );
        },
      );
}
