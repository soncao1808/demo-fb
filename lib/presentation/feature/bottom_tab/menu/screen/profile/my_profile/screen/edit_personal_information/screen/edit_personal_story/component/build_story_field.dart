import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/default_profile_container.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_story/bloc/edit_personal_story_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_story/bloc/edit_personal_story_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class BuildStoryField extends StatefulWidget {
  const BuildStoryField({super.key});

  @override
  State<BuildStoryField> createState() => _BuildStoryFieldState();
}

class _BuildStoryFieldState extends State<BuildStoryField> {
  final EditPersonalStoryPresenter _editPersonalStoryPresenter =
      injector.get<EditPersonalStoryPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<EditPersonalStoryPresenter, EditPersonalStoryState>(
        bloc: _editPersonalStoryPresenter,
        listenWhen: (EditPersonalStoryState previous, EditPersonalStoryState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalStoryState state) {},
        builder: (BuildContext context, EditPersonalStoryState state) {
          final String story = state.story ?? '';

          return DefaultProfileContainer(
            haveHeader: false,
            child: [
              TextInputCustom(
                hintText: AppLocalizations.of(context)!.text_add_story,
                labelText: '',
                hideLabel: true,
                maxLines: 10,
                minLines: 10,
                isRequired: false,
                contentPadding: const EdgeInsets.all(12.0),
                onChanged: (String text) {
                  _editPersonalStoryPresenter.onUpdateStory(text);
                },
                cursorColor: context.colors.backgroundPrimary,
                value: TextEditingValue(
                  text: story,
                  selection: TextSelection(
                    baseOffset: story.length,
                    extentOffset: story.length,
                  ),
                ),
                isDisable: false,
                fillColor: context.colors.backgroundWhite,
                textStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
                hintStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.textPrimary),
              ),
            ],
          );
        },
      );
}
