import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/default_profile_container.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_privacy_field.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/bloc/edit_personal_detail_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/bloc/edit_personal_detail_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/date_picker/bottom_sheet_date_picker.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class BuildBirthDayField extends StatefulWidget {
  const BuildBirthDayField({super.key});

  @override
  State<BuildBirthDayField> createState() => _BuildBirthDayFieldState();
}

class _BuildBirthDayFieldState extends State<BuildBirthDayField> {
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
          return DefaultProfileContainer(
            haveHeader: false,
            child: [
              const SizedBox(height: 4.0),
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_default_date,
                labelText: AppLocalizations.of(context)!.text_birthday,
                isRequired: false,
                onChanged: (String text) {},
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: state.birthDay ?? '',
                ),
                isDisable: true,
                fillColor: Colors.white,
                textStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
                hintStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.textPrimary),
                suffixIcon: GestureDetector(
                  onTap: () {
                    BottomSheetHelper.showBottomSheet(
                      body: BottomSheetDatePicker(
                        currentDate: state.birthDay != null
                            ? DateFormat('dd/MM/yyyy').parse(state.birthDay!)
                            : null,
                        onConfirmSelect: _editPersonalDetailPresenter.onUpdateBirthDay,
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(
                      AppIcons.icCalendarStroke,
                      color: context.colors.mistyQuartz,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              BuildPrivacyField(
                onChange: (Privacy privacy) {
                  _editPersonalDetailPresenter.onUpdateBirthDayPrivacy(privacy);
                },
                currentPrivacy: state.birthDayPrivacy,
              ),
              const SizedBox(height: 4.0),
            ],
          );
        },
      );
}
