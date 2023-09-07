import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/default_profile_container.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_privacy_field.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/component/company_name.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/component/country.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/component/end_date.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/component/position.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/component/start_date.dart';
import 'package:fbapp/presentation/widgets/checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class BuildJobField extends StatefulWidget {
  const BuildJobField({super.key});

  @override
  State<BuildJobField> createState() => _BuildJobFieldState();
}

class _BuildJobFieldState extends State<BuildJobField> {
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
          return DefaultProfileContainer(
            haveHeader: false,
            child: [
              const SizedBox(height: 4.0),
              const CompanyName(),
              const Position(),
              const Country(),
              const StartDate(),
              const EndDate(),
              Row(
                children: [
                  CheckBoxCustom(
                    checked: state.workInHere ?? false,
                    borderRadius: 4.0,
                    onChanged: _editPersonalJobPresenter.onUpdateWorkInHere,
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.text_i_worked_here,
                      style: AppTextStyles.labelRegular14.copyWith(
                        color: context.colors.label,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              BuildPrivacyField(
                required: true,
                onChange: (Privacy privacy) {
                  _editPersonalJobPresenter.onUpdatePrivacy(privacy);
                },
                currentPrivacy: state.privacy,
              ),
              const SizedBox(height: 4.0),
            ],
          );
        },
      );
}
