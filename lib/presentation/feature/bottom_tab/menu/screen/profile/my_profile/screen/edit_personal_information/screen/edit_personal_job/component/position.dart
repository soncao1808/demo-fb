import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:flutter/material.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_presenter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Position extends StatefulWidget {
  const Position({super.key});

  @override
  State<Position> createState() => _PositionState();
}

class _PositionState extends State<Position> {
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
          final String position = state.position ?? '';

          return Column(
            children: [
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_position,
                labelText: AppLocalizations.of(context)!.text_position,
                isRequired: false,
                onChanged: (String text) {
                  _editPersonalJobPresenter.onUpdatePosition(text);
                },
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: position,
                  selection: TextSelection(
                    baseOffset: position.length,
                    extentOffset: position.length,
                  ),
                ),
                isDisable: false,
                fillColor: context.colors.backgroundWhite,
                textStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
                hintStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.textPrimary),
              ),
              const SizedBox(height: 16.0),
            ],
          );
        },
      );
}
