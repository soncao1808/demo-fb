import 'package:json_annotation/json_annotation.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.birthDay,
    required this.address,
    required this.avatar,
    required this.role,
    required this.membership,
    required this.setting,
    required this.moduleName,
    required this.points,
    required this.purchaseTotal,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json["data"] ?? json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'gender')
  final String? gender;
  @JsonKey(name: 'birth_day')
  final String? birthDay;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'avatar')
  final String? avatar;
  @JsonKey(name: 'role')
  final String? role;
  @JsonKey(name: 'membership')
  final MembershipModel? membership;
  @JsonKey(name: 'setting')
  final SettingModel? setting;

  @JsonKey(name: 'module_name')
  final String? moduleName;

  @JsonKey(name: 'points')
  final double? points;

  @JsonKey(name: 'purchase_total')
  final double? purchaseTotal;

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  User toModel() => User(
        address: address,
        avatar: avatar,
        birthDay: birthDay,
        email: email,
        firstName: firstName,
        gender: gender,
        id: id,
        lastName: lastName,
        membership: membership?.toMembership(),
        name: name,
        phoneNumber: phoneNumber,
        role: role,
        setting: setting?.toSetting(),
        moduleName: moduleName,
        points: points,
        purchaseTotal: purchaseTotal,
      );
}

@JsonSerializable()
class RoleModel {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;

  RoleModel({
    required this.id,
    required this.name,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoleModelToJson(this);

  Role toRole() => Role(id: id, name: name);
}

@JsonSerializable()
class MembershipModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'content')
  String? content;
  @JsonKey(name: 'level')
  double? level;

  MembershipModel({
    required this.id,
    required this.name,
    required this.title,
    required this.content,
    required this.level,
  });

  factory MembershipModel.fromJson(Map<String, dynamic> json) =>
      _$MembershipModelFromJson(json);

  Map<String, dynamic> toJson() => _$MembershipModelToJson(this);

  Membership toMembership() => Membership(
        content: content,
        id: id,
        level: level,
        name: name,
        title: title,
      );
}

@JsonSerializable()
class SettingModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'notification')
  bool? notification;
  @JsonKey(name: 'sound')
  bool? sound;

  SettingModel({
    required this.id,
    required this.notification,
    required this.sound,
  });

  factory SettingModel.fromJson(Map<String, dynamic> json) =>
      _$SettingModelFromJson(json);

  Map<String, dynamic> toJson() => _$SettingModelToJson(this);

  Setting toSetting() => Setting(
        id: id,
        notification: notification,
        sound: sound,
      );
}
