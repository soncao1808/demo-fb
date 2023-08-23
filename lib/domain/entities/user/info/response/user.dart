import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int? id,
    required String? name,
    required String? email,
    required String? phoneNumber,
    required String? firstName,
    required String? lastName,
    required String? gender,
    required String? birthDay,
    required String? address,
    required String? avatar,
    required String? role,
    required double? points,
    required double? purchaseTotal,
    required Membership? membership,
    required Setting? setting,
    required String? moduleName,
  }) = _User;

  const User._();

  User setNotification(bool notification) {
    return copyWith(setting: setting?.setNotification(notification));
  }

  User setSound(bool sound) {
    return copyWith(setting: setting?.setSound(sound));
  }

  User setAvatar(String? avatar) {
    return copyWith(avatar: avatar);
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Role with _$Role {
  factory Role({
    required int? id,
    required String? name,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
class Membership with _$Membership {
  factory Membership({
    required int? id,
    required String? name,
    required String? title,
    required String? content,
    required double? level,
  }) = _Membership;

  factory Membership.fromJson(Map<String, dynamic> json) =>
      _$MembershipFromJson(json);
}

@freezed
class Setting with _$Setting {
  factory Setting({
    required int? id,
    required bool? notification,
    required bool? sound,
  }) = _Setting;

  const Setting._();

  Setting setNotification(bool notification) {
    return copyWith(notification: notification);
  }

  Setting setSound(bool sound) {
    return copyWith(sound: sound);
  }

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);
}
