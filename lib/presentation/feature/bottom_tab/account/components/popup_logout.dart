import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/account/bloc/account_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/account/bloc/account_state.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:fbapp/presentation/widgets/primary_button.dart';

class PopupLogout extends BasePage {
  const PopupLogout({super.key});

  @override
  State<PopupLogout> createState() => _PopupLogoutState();
}

class _PopupLogoutState extends State<PopupLogout> {
  final AccountPresenter _accountPresenter = injector.get<AccountPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<AccountPresenter, AccountState>(
        bloc: _accountPresenter,
        listener: (BuildContext context, AccountState state) {},
        builder: (BuildContext context, AccountState state) {
          return Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  color: context.colors.backgroundSecondary.withOpacity(0),
                ),
              ),
              Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 54.0,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 26.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: context.colors.backgroundSecondary,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  AppLocalizations.of(context)!
                                      .text_common_logout,
                                  style: AppTextStyles.labelRegular16.copyWith(
                                    color: context.colors.textPrimary,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 26),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: PrimaryButton(
                                          title: AppLocalizations.of(context)!
                                              .text_common_cancel,
                                          backgroundColor: context
                                              .colors.backgroundSecondary,
                                          textColor:
                                              context.colors.backgroundPrimary,
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 12.0),
                                      Expanded(
                                        child: PrimaryButton(
                                          title: AppLocalizations.of(context)!
                                              .text_common_logout,
                                          onPressed: () {
                                            _accountPresenter.handleLogout();
                                          },
                                          isLoading: state.isStatusLogout,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          );
        },
      );
}
