import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/bloc/change_password_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/bloc/change_password_state.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
