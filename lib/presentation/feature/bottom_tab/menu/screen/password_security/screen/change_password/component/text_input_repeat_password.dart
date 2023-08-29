import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/domain/entities/user/reset_password/form_field/repeat_password_field_reset_password.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/bloc/change_password_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/bloc/change_password_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextInputRepeatPasswordAccount extends BasePage {
  const TextInputRepeatPasswordAccount({Key? key}) : super(key: key);

  @override
  State<TextInputRepeatPasswordAccount> createState() =>
      _TextInputRepeatPasswordAccountState();
}

class _TextInputRepeatPasswordAccountState
    extends State<TextInputRepeatPasswordAccount> {
  final ChangePasswordAccountPresenter _changePasswordPresenter =
      injector.get<ChangePasswordAccountPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ChangePasswordAccountPresenter, ChangePasswordAccountState>(
        bloc: _changePasswordPresenter,
        listenWhen: (ChangePasswordAccountState previous,
                ChangePasswordAccountState current) =>
            (previous.status != current.status ||
                previous.isStatusRepeatPassword !=
                    current.isStatusRepeatPassword),
        listener: (BuildContext context, ChangePasswordAccountState state) {},
        builder: (BuildContext context, ChangePasswordAccountState state) =>
            TextInputCustom(
          hintText:
              AppLocalizations.of(context)!.text_reset_password_repeat_password,
          labelText:
              AppLocalizations.of(context)!.text_reset_password_repeat_password,
          onChanged: (String text) =>
              _changePasswordPresenter.repeatPasswordChanged(text),
          errorMessage: state.repeatPassword.error?.description,
          isPasswordField: state.isStatusRepeatPassword,
          suffixIcon: IconButton(
            icon: Icon(
              state.isStatusRepeatPassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: context.colors.mistyQuartz,
            ),
            onPressed: () =>
                _changePasswordPresenter.handleVisibilityRepeatPassword(),
          ),
          cursorColor: context.colors.backgroundPrimary,
        ),
      );
}
