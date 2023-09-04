import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/date_picker/bottom_sheet_date_picker.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_presenter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class StartDate extends StatefulWidget {
  const StartDate({super.key});

  @override
  State<StartDate> createState() => _StartDateState();
}

class _StartDateState extends State<StartDate> {
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
          return Column(
            children: [
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_default_date,
                labelText: AppLocalizations.of(context)!.text_start_date,
                isRequired: false,
                onChanged: (String text) {},
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: state.startDate ?? '',
                ),
                isDisable: true,
                fillColor: Colors.white,
                textStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
                hintStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.textPrimary),
                suffixIcon: GestureDetector(
                  onTap: () {
                    BottomSheetHelper.showBottomSheet(
                      body: BottomSheetDatePicker(
                        currentDate: state.startDate != null
                            ? DateFormat('dd/MM/yyyy').parse(state.startDate!)
                            : null,
                        onConfirmSelect: _editPersonalJobPresenter.onUpdateStartDate,
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
            ],
          );
        },
      );
}
