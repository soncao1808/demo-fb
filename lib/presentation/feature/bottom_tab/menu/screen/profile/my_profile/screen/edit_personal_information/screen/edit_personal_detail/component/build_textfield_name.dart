import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/default_profile_container.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/bloc/edit_personal_detail_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/bloc/edit_personal_detail_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class BuildTextFieldName extends StatefulWidget {
  const BuildTextFieldName({super.key});

  @override
  State<BuildTextFieldName> createState() => _BuildTextFieldNameState();
}

class _BuildTextFieldNameState extends State<BuildTextFieldName> {
  final EditPersonalDetailPresenter _editPersonalDetailPresenter =
      injector.get<EditPersonalDetailPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<EditPersonalDetailPresenter, EditPersonalDetailState>(
        bloc: _editPersonalDetailPresenter,
        listenWhen: (EditPersonalDetailState previous, EditPersonalDetailState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalDetailState state) {},
        builder: (BuildContext context, EditPersonalDetailState state) {
          final String firstName = state.firstName ?? '';
          final String middleName = state.middleName ?? '';
          final String lastName = state.lastName ?? '';

          return DefaultProfileContainer(
            haveHeader: false,
            child: [
              const SizedBox(height: 4.0),
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_first_name,
                labelText: AppLocalizations.of(context)!.text_first_name,
                isRequired: true,
                onChanged: (String text) {
                  _editPersonalDetailPresenter.onUpdateFirstName(text);
                },
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: firstName,
                  selection: TextSelection(
                    baseOffset: firstName.length,
                    extentOffset: firstName.length,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                textStyle: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.label,
                ),
                hintStyle: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.textPrimary,
                ),
                errorMessage: state.statusFirstNameError
                    ? AppLocalizations.of(context)!.text_this_field_is_required
                    : null,
              ),
              const SizedBox(height: 16.0),
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_middle_name,
                labelText: AppLocalizations.of(context)!.text_middle_name,
                isRequired: false,
                onChanged: (String text) {
                  _editPersonalDetailPresenter.onUpdateMiddleName(text);
                },
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: middleName,
                  selection: TextSelection(
                    baseOffset: middleName.length,
                    extentOffset: middleName.length,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                textStyle: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.label,
                ),
                hintStyle: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.textPrimary,
                ),
              ),
              const SizedBox(height: 16.0),
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_last_name,
                labelText: AppLocalizations.of(context)!.text_last_name,
                isRequired: true,
                onChanged: (String text) {
                  _editPersonalDetailPresenter.onUpdateLastName(text);
                },
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: lastName,
                  selection: TextSelection(
                    baseOffset: lastName.length,
                    extentOffset: lastName.length,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                textStyle: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.label,
                ),
                hintStyle: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.textPrimary,
                ),
                errorMessage: state.statusLastNameError
                    ? AppLocalizations.of(context)!.text_this_field_is_required
                    : null,
              ),
              const SizedBox(height: 4.0),
            ],
          );
        },
      );
}
