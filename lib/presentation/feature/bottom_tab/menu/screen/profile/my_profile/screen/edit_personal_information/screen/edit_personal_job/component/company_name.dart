import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:flutter/material.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_presenter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyName extends StatefulWidget {
  const CompanyName({super.key});

  @override
  State<CompanyName> createState() => _CompanyNameState();
}

class _CompanyNameState extends State<CompanyName> {
  final EditPersonalJobPresenter _editPersonalJobPresenter =
      injector.get<EditPersonalJobPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<EditPersonalJobPresenter, EditPersonalJobState>(
        bloc: _editPersonalJobPresenter,
        listenWhen: (EditPersonalJobState previous, EditPersonalJobState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalJobState state) {},
        builder: (BuildContext context, EditPersonalJobState state) {
          final String companyName = state.companyName ?? '';

          return Column(
            children: [
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_company_name,
                labelText: AppLocalizations.of(context)!.text_company_name,
                isRequired: true,
                onChanged: (String text) {
                  _editPersonalJobPresenter.onUpdateCompanyName(text);
                },
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: companyName,
                  selection: TextSelection(
                    baseOffset: companyName.length,
                    extentOffset: companyName.length,
                  ),
                ),
                isDisable: false,
                fillColor: context.colors.backgroundWhite,
                textStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
                hintStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.textPrimary),
                errorMessage: state.statusCompanyNameError
                    ? AppLocalizations.of(context)!.text_this_field_is_required
                    : null,
              ),
              const SizedBox(height: 16.0),
            ],
          );
        },
      );
}
