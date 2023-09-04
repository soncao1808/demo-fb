/* A-03 */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/bloc/edit_personal_information_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_contact/edit_personal_contact.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/edit_personal_detail.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/edit_personal_job.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_residence/edit_personal_residence.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_story/edit_personal_contact.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/default_profile_data_item.dart';
import 'bloc/edit_personal_information_state.dart';
import '../../../component/default_profile_container.dart';

class EditPersonalInformationPage extends BasePage {
  const EditPersonalInformationPage({super.key});

  @override
  State<EditPersonalInformationPage> createState() => _EditPersonalInformationPageState();
}

class _EditPersonalInformationPageState extends BasePageState<EditPersonalInformationPage> {
  final EditPersonalInformationPresenter _editPersonalInformationPresenter =
      injector.get<EditPersonalInformationPresenter>();

  @override
  void initState() {
    _editPersonalInformationPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _editPersonalInformationPresenter.resetState();
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
      label: AppLocalizations.of(context)!.text_edit_personal_info,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<EditPersonalInformationPresenter, EditPersonalInformationState>(
        bloc: _editPersonalInformationPresenter,
        listenWhen: (EditPersonalInformationState previous, EditPersonalInformationState current) =>
            (previous != current),
        listener: (BuildContext context, EditPersonalInformationState state) {},
        builder: (BuildContext context, EditPersonalInformationState state) {
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

  Widget renderContent(EditPersonalInformationState state) {
    final String userName =
        '${state.user?.firstName ?? ''} ${state.user?.middleName ?? ''} ${state.user?.lastName ?? ''}';

    return Column(
      children: [
        const SizedBox(height: 8),
        DefaultProfileContainer(
          title: AppLocalizations.of(context)!.text_story,
          onEditTap: () {
            navigationEventsHelper(EditPersonalStoryPage(userModel: state.user));
          },
          child: [
            Text(
              state.user?.story ?? '',
              style: AppTextStyles.labelRegular14.copyWith(
                color: context.colors.label,
              ),
            ),
          ],
        ),
        DefaultProfileContainer(
          title: AppLocalizations.of(context)!.text_personal_info,
          onEditTap: () {
            navigationEventsHelper(EditPersonalDetailPage(userModel: state.user));
          },
          child: [
            DefaultProfileDataItem(
              title: AppLocalizations.of(context)!.text_first_name,
              hint: AppLocalizations.of(context)!.text_first_name,
              data: userName,
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
          onEditTap: () {
            navigationEventsHelper(EditPersonalContactPage(userModel: state.user));
          },
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
          onEditTap: () {
            navigationEventsHelper(EditPersonalResidencePage(userModel: state.user));
          },
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
          onEditTap: () {
            navigationEventsHelper(EditPersonalJobPage(userModel: state.user));
          },
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
