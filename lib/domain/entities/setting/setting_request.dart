import 'package:fbapp/data/models/user/setting/setting_request_model.dart';

class SettingRequest {
  const SettingRequest({
    required this.sound,
    required this.notification,
    required this.idUser,
  });

  final bool sound;
  final bool notification;
  final int idUser;

  SettingRequestModel toSettingRequestModel() => SettingRequestModel(
        sound: sound,
        notification: notification,
      );
}
