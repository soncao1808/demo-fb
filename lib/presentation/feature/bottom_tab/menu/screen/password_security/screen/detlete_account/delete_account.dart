import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/detlete_account/bloc/delete_account_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/detlete_account/bloc/detele_account_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/detlete_account/component/delete_account_button.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DeleteAccountPage extends BasePage {
  const DeleteAccountPage({super.key});

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPagetate();
}

class _DeleteAccountPagetate extends BasePageState<DeleteAccountPage> {
  final DeletedAccountPresenter _deleteAccountPresenter =
      injector.get<DeletedAccountPresenter>();
  @override
  void initState() {
    _deleteAccountPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _deleteAccountPresenter.clearState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundSecondary,
      isBack: true,
      isAction: false,
      label: AppLocalizations.of(context)!.text_detlete_account_title,
      isBorderBottom: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<DeletedAccountPresenter, DeleteAcountState>(
          bloc: _deleteAccountPresenter,
          listenWhen: (DeleteAcountState previous, DeleteAcountState current) =>
              (previous != current),
          listener: (BuildContext context, DeleteAcountState state) {},
          builder: (BuildContext context, DeleteAcountState state) => Scaffold(
                  body: BaseContainer(
                body: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Stack(
                    children: <Widget>[
                      Scaffold(
                        backgroundColor: context.colors.background,
                        body: SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            margin: const EdgeInsets.only(top: 16.0),
                            color: context.colors.backgroundSecondary,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[ItemRenderContext()],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: context.colors.backgroundSecondary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 16.0,
                          ),
                          width: double.infinity,
                          child: const ButtonDeleteAccount(),
                        ),
                      )
                    ],
                  ),
                ),
              )));
}

class ItemRenderContext extends StatelessWidget {
  const ItemRenderContext({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '''Lorem ipsum dolor sit amet consectetur. Tincidunt sed est nunc tortor quis quis vulputate sit ut. Tincidunt tristique orci nisl adipiscing enim aenean id. Amet quisque sed facilisis sed suspendisse. Odio fermentum aenean malesuada facilisis justo blandit adipiscing.\n
Eget turpis vitae purus vel pharetra libero volutpat. Viverra risus amet tortor sagittis proin aliquet facilisis morbi ac. Vel facilisis nulla nullam pellentesque. Orci dolor non habitant amet. Odio feugiat molestie semper mauris consectetur nunc enim in commodo.\n
In purus ullamcorper ut fusce. Congue tortor risus purus sit sed diam pretium. Morbi egestas eu aliquet proin sit volutpat egestas quis vitae. In non amet nunc sed turpis eget. Habitant amet augue ipsum sapien a ultrices orci viverra cursus. Nunc feugiat nullam in maecenas quam. Phasellus dui enim lacus pulvinar cursus sed cursus''',
      style: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
    );
  }
}
