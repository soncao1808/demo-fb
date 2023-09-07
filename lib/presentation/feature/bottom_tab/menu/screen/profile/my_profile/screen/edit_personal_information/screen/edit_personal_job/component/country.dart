import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/select_country/bottom_sheet_select_country.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_presenter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Country extends StatefulWidget {
  const Country({super.key});

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
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
          final String address = state.country ?? '';

          return Column(
            children: [
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_country,
                labelText: AppLocalizations.of(context)!.text_country,
                isRequired: true,
                onChanged: (String text) {
                  _editPersonalJobPresenter.onUpdateCompanyName(text);
                },
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: address,
                  selection: TextSelection(
                    baseOffset: address.length,
                    extentOffset: address.length,
                  ),
                ),
                isDisable: true,
                fillColor: context.colors.backgroundWhite,
                textStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
                hintStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.textPrimary),
                errorMessage: state.statusCountryError
                    ? AppLocalizations.of(context)!.text_this_field_is_required
                    : null,
                suffixIcon: GestureDetector(
                  onTap: () {
                    BottomSheetHelper.showBottomSheet(
                      body: BottomSheetSelectCountry(
                        currentCountry: state.country,
                        onConfirmSelect: (String country) {
                          _editPersonalJobPresenter.onUpdateCompanyAddress(country);
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(
                      AppIcons.icLocation,
                      color: context.colors.mistyQuartz,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          );
        },
      );
}
