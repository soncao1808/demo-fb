import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/personal_information/bloc/friend_information_presenter.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/default_profile_data_item.dart';
import 'bloc/friend_information_state.dart';
import '../../../component/default_profile_container.dart';

class FriendInformationPage extends BasePage {
  const FriendInformationPage({super.key});

  @override
  State<FriendInformationPage> createState() => _FriendInformationPageState();
}

class _FriendInformationPageState extends BasePageState<FriendInformationPage> {
  final FriendInformationPresenter _friendInformationPresenter = FriendInformationPresenter();

  @override
  void initState() {
    _friendInformationPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _friendInformationPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundWhite,
      isBack: true,
      icBackColor: context.colors.label,
      isCenterTitle: true,
      label: AppLocalizations.of(context)!.text_personal_info,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<FriendInformationPresenter, FriendInformationState>(
        bloc: _friendInformationPresenter,
        listenWhen: (FriendInformationState previous, FriendInformationState current) =>
            (previous != current),
        listener: (BuildContext context, FriendInformationState state) {},
        builder: (BuildContext context, FriendInformationState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            hasBackgroundImage: true,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: state.user != null ? renderContent(state) : Container(),
            ),
          );
        },
      );

  Widget renderContent(FriendInformationState state) {
    return Column(
      children: [
        const SizedBox(height: 8),
        DefaultProfileContainer(
          title: AppLocalizations.of(context)!.text_personal_info,
          enableEdit: false,
          child: [
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_first_name,
              hint: AppLocalizations.of(context)!.text_first_name,
              data: state.user?.getFullName() ?? '',
            ),
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_gender,
              hint: AppLocalizations.of(context)!.text_gender,
              data: state.user?.gender?.getGenderName() ?? '',
            ),
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_birthday,
              hint: AppLocalizations.of(context)!.text_birthday,
              data: state.user?.birthDay?.getBirthDay() ?? '',
            ),
          ],
        ),
        DefaultProfileContainer(
          title: AppLocalizations.of(context)!.text_personal_contact,
          enableEdit: false,
          child: [
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_phone_number,
              hint: AppLocalizations.of(context)!.text_phone_number,
              data: state.user?.phone?.getPhone() ?? '',
            ),
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_email,
              hint: AppLocalizations.of(context)!.text_email,
              data: state.user?.mail?.getMail() ?? '',
            ),
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_address,
              hint: AppLocalizations.of(context)!.text_address,
              data: state.user?.address?.getAddress() ?? '',
            ),
          ],
        ),
        DefaultProfileContainer(
          title: AppLocalizations.of(context)!.text_your_address,
          enableEdit: false,
          child: [
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_present,
              hint: AppLocalizations.of(context)!.text_present,
              data: state.user?.currentAddress?.getAddress() ?? '',
            ),
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_home_town,
              hint: AppLocalizations.of(context)!.text_home_town,
              data: state.user?.hometown?.getAddress() ?? '',
            ),
          ],
        ),
        DefaultProfileContainer(
          title: AppLocalizations.of(context)!.text_job,
          enableEdit: false,
          child: [
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_job,
              hint: AppLocalizations.of(context)!.text_job,
              data: state.user?.job?.getJobInfo() ?? '',
            ),
          ],
        ),
      ],
    );
  }
}
