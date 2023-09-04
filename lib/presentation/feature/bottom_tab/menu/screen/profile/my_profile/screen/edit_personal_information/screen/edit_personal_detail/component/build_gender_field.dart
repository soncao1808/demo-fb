import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/default_profile_container.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/component/build_privacy_field.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/bloc/edit_personal_detail_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/bloc/edit_personal_detail_state.dart';
import 'package:fbapp/presentation/widgets/custom_check_box_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class BuildGenderField extends StatefulWidget {
  const BuildGenderField({super.key});

  @override
  State<BuildGenderField> createState() => _BuildGenderFieldState();
}

class _BuildGenderFieldState extends State<BuildGenderField> {
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
              CustomCheckBoxList(
                labelText: AppLocalizations.of(context)!.text_gender,
                child: [
                  CustomCheckBoxItem(
                      labelText: Gender.MALE.name,
                      onTap: () {
                        _editPersonalDetailPresenter.onUpdateGender(Gender.MALE);
                      },
                      checked: Gender.MALE,
                      current: state.gender),
                  CustomCheckBoxItem(
                      labelText: Gender.FEMALE.name,
                      onTap: () {
                        _editPersonalDetailPresenter.onUpdateGender(Gender.FEMALE);
                      },
                      checked: Gender.FEMALE,
                      current: state.gender),
                  CustomCheckBoxItem(
                      labelText: Gender.OTHER.name,
                      onTap: () {
                        _editPersonalDetailPresenter.onUpdateGender(Gender.OTHER);
                      },
                      checked: Gender.OTHER,
                      current: state.gender),
                ],
              ),
              const SizedBox(height: 16.0),
              BuildPrivacyField(
                onChange: (Privacy privacy) {
                  _editPersonalDetailPresenter.onUpdateGenderPrivacy(privacy);
                },
                currentPrivacy: state.genderPrivacy,
              ),
              const SizedBox(height: 4.0),
            ],
          );
        },
      );
}
