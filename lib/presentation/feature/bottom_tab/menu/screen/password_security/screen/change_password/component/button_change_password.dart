// ignore_for_file: library_private_types_in_public_api

import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../../../../../injection/injector.dart';
import '../../../../../../../../base/base_page.dart';
import '../../../../../../../../widgets/primary_button.dart';
import '../bloc/change_password_presenter.dart';
import '../bloc/change_password_state.dart';

class ButtonChangePassword extends BasePage {
  const ButtonChangePassword({Key? key}) : super(key: key);

  @override
  _ButtonChangePasswordState createState() => _ButtonChangePasswordState();
}

class _ButtonChangePasswordState extends State<ButtonChangePassword> {
  final ChangePasswordAccountPresenter _changePasswordPresenter =
      injector.get<ChangePasswordAccountPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ChangePasswordAccountPresenter, ChangePasswordAccountState>(
        bloc: _changePasswordPresenter,
        listenWhen: (ChangePasswordAccountState previous,
                ChangePasswordAccountState current) =>
            (previous != current),
        listener: (BuildContext context, ChangePasswordAccountState state) {},
        builder: (BuildContext context, ChangePasswordAccountState state) =>
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: PrimaryButton(
                title: AppLocalizations.of(context)!.text_common_cancel,
                isLoading: state.isStatusLoadingChangeUser,
                isDisable: _changePasswordPresenter.isDisable,
                onPressed: () {
                  _changePasswordPresenter.clearState();
                  Navigator.pop(context);
                },
                backgroundColor: context.colors.background,
                borderColor: context.colors.background,
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: PrimaryButton(
                title: AppLocalizations.of(context)!.text_common_save,
                isLoading: state.isStatusLoadingChangeUser,
                isDisable: _changePasswordPresenter.isDisable,
                onPressed: () => _changePasswordPresenter.changePasswordUser(),
              ),
            )
          ],
        ),
      );
}
