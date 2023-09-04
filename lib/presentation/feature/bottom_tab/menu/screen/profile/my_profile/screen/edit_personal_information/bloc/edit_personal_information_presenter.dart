import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_personal_information_state.dart';

class EditPersonalInformationPresenter extends Cubit<EditPersonalInformationState> {
  EditPersonalInformationPresenter({
    @visibleForTesting EditPersonalInformationState? state,
  }) : super(state ?? EditPersonalInformationState.initial());

  void init() {
    initProfile();
  }

  void initProfile() {
    final UserUiModel user = UserUiModel(
      id: 12525,
      firstName: 'Hanna',
      middleName: '',
      lastName: 'Food',
      gender: GenderModel(
        gender: Gender.FEMALE,
        privacy: Privacy.PUBLIC,
      ),
      birthDay: BirthDayModel(
        day: '18/02/2002',
        privacy: Privacy.PRIVATE,
      ),
      story:
          'Lorem ipsum dolor sit amet consectetur. Consectetur imperdiet elementum pellentesque ut dictumst risus convallis convallis quam.',
      phone: PhoneModel(
        phone: '0981234567',
        privacy: Privacy.PRIVATE,
      ),
      mail: MailModel(
        mail: 'ahiah@gmail.com',
        privacy: Privacy.PUBLIC,
      ),
      address: AddressModel(
        address: 'Trên núi',
        privacy: Privacy.PRIVATE,
      ),
      currentAddress: AddressModel(
        address: 'Trên núi',
        privacy: Privacy.PRIVATE,
      ),
      hometown: AddressModel(
        address: 'Trên trời',
        privacy: Privacy.PRIVATE,
      ),
      job: JobModel(
          companyName: 'CTS',
          position: 'DEV',
          country: 'Đà Nẵng',
          startDate: '22/2/2022',
          endDate: '',
          workInHere: true,
          privacy: Privacy.PUBLIC),
    );

    emit(state.copyWith(user: user));
  }

  void resetState() {
    emit(EditPersonalInformationState.initial());
  }
}
