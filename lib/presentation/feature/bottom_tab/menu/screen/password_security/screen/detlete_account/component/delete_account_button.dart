// ignore_for_file: library_private_types_in_public_api

import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/detlete_account/bloc/delete_account_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/detlete_account/bloc/detele_account_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../../../../../injection/injector.dart';
import '../../../../../../../../base/base_page.dart';
import '../../../../../../../../widgets/primary_button.dart';

class ButtonDeleteAccount extends BasePage {
  const ButtonDeleteAccount({Key? key}) : super(key: key);

  @override
  _ButtonChangePasswordState createState() => _ButtonChangePasswordState();
}

class _ButtonChangePasswordState extends State<ButtonDeleteAccount> {
  final DeletedAccountPresenter _deleteAccountPresenter =
      injector.get<DeletedAccountPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<DeletedAccountPresenter, DeleteAcountState>(
        bloc: _deleteAccountPresenter,
        listenWhen: (DeleteAcountState previous, DeleteAcountState current) =>
            (previous != current),
        listener: (BuildContext context, DeleteAcountState state) {},
        builder: (BuildContext context, DeleteAcountState state) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: PrimaryButton(
                title: AppLocalizations.of(context)!.text_common_cancel,
                isLoading: state.isStatusLoadingdeleteAccount,
                isDisable: true,
                onPressed: () {
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
                title: AppLocalizations.of(context)!.text_common_confirm,
                isLoading: state.isStatusLoadingdeleteAccount,
                isDisable: false,
                onPressed: () => _deleteAccountPresenter.deleteAccountUser(),
              ),
            )
          ],
        ),
      );
}
