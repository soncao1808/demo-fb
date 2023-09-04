import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/default_profile_container.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_privacy_field.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_residence/bloc/edit_personal_residence_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_residence/bloc/edit_personal_residence_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/select_country/bottom_sheet_select_country.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildHomeTownField extends StatefulWidget {
  const BuildHomeTownField({super.key});

  @override
  State<BuildHomeTownField> createState() => _BuildHomeTownFieldState();
}

class _BuildHomeTownFieldState extends State<BuildHomeTownField> {
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
          final String address = state.homeTown ?? '';

          return DefaultProfileContainer(
            haveHeader: false,
            child: [
              const SizedBox(height: 4.0),
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_home_town,
                labelText: AppLocalizations.of(context)!.text_home_town,
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
                        currentCountry: state.homeTown,
                        onConfirmSelect: (String country) {
                          _editPersonalResidencePresenter.onUpdateHomeTown(country);
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
                  _editPersonalResidencePresenter.onUpdateHomeTownPrivacy(privacy);
                },
                currentPrivacy: state.homeTownPrivacy,
              ),
              const SizedBox(height: 4.0),
            ],
          );
        },
      );
}
