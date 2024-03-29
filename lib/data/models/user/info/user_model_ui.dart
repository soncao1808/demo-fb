import 'package:dartx/dartx.dart';
import 'package:fbapp/data/enum/user_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model_ui.g.dart';

@JsonSerializable(explicitToJson: true)
class UserUiModel {
  const UserUiModel({
    required this.id,
    this.firstName = '',
    this.middleName = '',
    this.lastName = '',
    this.gender,
    this.birthDay,
    this.story,
    this.phone,
    this.mail,
    this.address,
    this.currentAddress,
    this.hometown,
    this.job,
    this.followedCount,
    this.followerCount,
    this.avatar,
    this.background,
  });

  final int? id;
  final String firstName;
  final String middleName;
  final String lastName;
  final GenderModel? gender;
  final BirthDayModel? birthDay;
  final String? story;
  final PhoneModel? phone;
  final MailModel? mail;
  final AddressModel? address;
  final AddressModel? currentAddress;
  final AddressModel? hometown;
  final JobModel? job;
  final int? followerCount;
  final int? followedCount;
  final String? avatar;
  final String? background;

  factory UserUiModel.fromJson(Map<String, dynamic> json) =>
      _$UserUiModelFromJson(json["data"] ?? json);

  Map<String, dynamic> toJson() => _$UserUiModelToJson(this);

  String getFullName() {
    final String firstName = '${this.firstName} ';
    final String middleName = '${this.middleName} ';

    return firstName + middleName + lastName;
  }

}

@JsonSerializable(explicitToJson: true)
class FriendUiModel {
  const FriendUiModel({
    required this.id,
    this.firstName = '',
    this.middleName = '',
    this.lastName = '',
    this.gender,
    this.birthDay,
    this.story,
    this.phone,
    this.mail,
    this.address,
    this.currentAddress,
    this.hometown,
    this.job,
    this.followedCount,
    this.followerCount,
    this.isFollowed = false,
    this.isFriend = false,
    this.avatar,
    this.background,
  });

  final int? id;
  final String firstName;
  final String middleName;
  final String lastName;
  final GenderModel? gender;
  final BirthDayModel? birthDay;
  final String? story;
  final PhoneModel? phone;
  final MailModel? mail;
  final AddressModel? address;
  final AddressModel? currentAddress;
  final AddressModel? hometown;
  final JobModel? job;
  final int? followerCount;
  final int? followedCount;
  final bool isFollowed;
  final bool isFriend;
  final String? avatar;
  final String? background;

  factory FriendUiModel.fromJson(Map<String, dynamic> json) =>
      _$FriendUiModelFromJson(json["data"] ?? json);

  Map<String, dynamic> toJson() => _$FriendUiModelToJson(this);

  String getFullName() {
    final String firstName = '${this.firstName} ';
    final String middleName = '${this.middleName} ';

    return firstName + middleName + lastName;
  }

  FriendUiModel copyWith({
    bool? follow,
    bool? friend,
  }) {
    return FriendUiModel(
      id: id,
      firstName: firstName,
      middleName: middleName,
      lastName: lastName,
      gender: gender,
      birthDay: birthDay,
      story: story,
      phone: phone,
      mail: mail,
      address: address,
      currentAddress: currentAddress,
      hometown: hometown,
      job: job,
      followedCount: followedCount,
      followerCount: followerCount,
      isFollowed: follow ?? isFollowed,
      isFriend: friend ?? isFriend,
      avatar: avatar,
      background: background,
    );
  }
}

@JsonSerializable()
class GenderModel {
  final Gender? gender;
  final Privacy privacy;

  GenderModel({
    required this.gender,
    this.privacy = Privacy.PUBLIC,
  });

  factory GenderModel.fromJson(Map<String, dynamic> json) => _$GenderModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenderModelToJson(this);

  String getGenderName() {
    if (privacy == Privacy.PUBLIC) {
      return gender?.name ?? '';
    }
    return '';
  }
}

@JsonSerializable()
class BirthDayModel {
  final String? day;
  final Privacy privacy;

  BirthDayModel({
    required this.day,
    this.privacy = Privacy.PUBLIC,
  });

  factory BirthDayModel.fromJson(Map<String, dynamic> json) => _$BirthDayModelFromJson(json);

  Map<String, dynamic> toJson() => _$BirthDayModelToJson(this);

  String getBirthDay() {
    if (privacy == Privacy.PUBLIC) {
      return day ?? '';
    }
    return '';
  }
}

@JsonSerializable()
class PhoneModel {
  final String? phone;
  final Privacy privacy;

  PhoneModel({
    required this.phone,
    this.privacy = Privacy.PUBLIC,
  });

  factory PhoneModel.fromJson(Map<String, dynamic> json) => _$PhoneModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneModelToJson(this);

  String getPhone() {
    if (privacy == Privacy.PUBLIC) {
      return phone ?? '';
    }
    return '';
  }
}

@JsonSerializable()
class MailModel {
  final String? mail;
  final Privacy privacy;

  MailModel({
    required this.mail,
    this.privacy = Privacy.PUBLIC,
  });

  factory MailModel.fromJson(Map<String, dynamic> json) => _$MailModelFromJson(json);

  Map<String, dynamic> toJson() => _$MailModelToJson(this);

  String getMail() {
    if (privacy == Privacy.PUBLIC) {
      return mail ?? '';
    }
    return '';
  }
}

@JsonSerializable()
class AddressModel {
  final String? address;
  final Privacy privacy;

  AddressModel({
    required this.address,
    this.privacy = Privacy.PUBLIC,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  String getAddress() {
    if (privacy == Privacy.PUBLIC) {
      return address ?? '';
    }
    return '';
  }
}

@JsonSerializable()
class JobModel {
  final String? companyName;
  final String? position;
  final String? country;
  final String? startDate;
  final String? endDate;
  final bool? workInHere;
  final Privacy privacy;

  JobModel({
    required this.companyName,
    required this.position,
    required this.country,
    required this.startDate,
    required this.endDate,
    required this.workInHere,
    this.privacy = Privacy.PUBLIC,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) => _$JobModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobModelToJson(this);

  String getJobInfo() {
    if (privacy == Privacy.PUBLIC) {
      if (companyName.isNotNullOrBlank && position.isNotNullOrBlank) {
        return '$position tại $companyName';
      }

      if (companyName.isNotNullOrBlank && position.isNullOrBlank) {
        return '$companyName';
      }

      if (companyName.isNullOrBlank && position.isNotNullOrBlank) {
        return '$position';
      }

      return '';
    }
    return '';
  }
}
