import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/default_profile_container.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_privacy_field.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_residence/bloc/edit_personal_residence_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_residence/bloc/edit_personal_residence_presenter.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/select_country/bottom_sheet_select_country.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildCurrentAddressField extends StatefulWidget {
  const BuildCurrentAddressField({super.key});

  @override
  State<BuildCurrentAddressField> createState() => _BuildCurrentAddressFieldState();
}

class _BuildCurrentAddressFieldState extends State<BuildCurrentAddressField> {
  final EditPersonalResidencePresenter _editPersonalResidencePresenter =
      injector.get<EditPersonalResidencePresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<EditPersonalResidencePresenter, EditPersonalResidenceState>(
        bloc: _editPersonalResidencePresenter,
        listenWhen: (EditPersonalResidenceState previous, EditPersonalResidenceState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalResidenceState state) {},
        builder: (BuildContext context, EditPersonalResidenceState state) {
          final String address = state.currentAddress ?? '';

          return DefaultProfileContainer(
            haveHeader: false,
            child: [
              const SizedBox(height: 4.0),
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_present,
                labelText: AppLocalizations.of(context)!.text_present_address,
                isRequired: false,
                onChanged: (String text) {},
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: address,
                ),
                isDisable: true,
                fillColor: context.colors.backgroundWhite,
                textStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
                hintStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.textPrimary),
                suffixIcon: GestureDetector(
                  onTap: () {
                    BottomSheetHelper.showBottomSheet(
                      body: BottomSheetSelectCountry(
                        currentCountry: state.currentAddress,
                        onConfirmSelect: (String country) {
                          _editPersonalResidencePresenter.onUpdateCurrentAddress(country);
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
              BuildPrivacyField(
                onChange: (Privacy privacy) {
                  _editPersonalResidencePresenter.onUpdateCurrentAddressPrivacy(privacy);
                },
                currentPrivacy: state.currentAddressPrivacy,
              ),
              const SizedBox(height: 4.0),
            ],
          );
        },
      );
}
