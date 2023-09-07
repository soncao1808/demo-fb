// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_ui.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserUiModel _$UserUiModelFromJson(Map<String, dynamic> json) => UserUiModel(
      id: json['id'] as int?,
      firstName: json['firstName'] as String? ?? '',
      middleName: json['middleName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      gender: json['gender'] == null
          ? null
          : GenderModel.fromJson(json['gender'] as Map<String, dynamic>),
      birthDay: json['birthDay'] == null
          ? null
          : BirthDayModel.fromJson(json['birthDay'] as Map<String, dynamic>),
      story: json['story'] as String?,
      phone: json['phone'] == null
          ? null
          : PhoneModel.fromJson(json['phone'] as Map<String, dynamic>),
      mail: json['mail'] == null
          ? null
          : MailModel.fromJson(json['mail'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      currentAddress: json['currentAddress'] == null
          ? null
          : AddressModel.fromJson(
              json['currentAddress'] as Map<String, dynamic>),
      hometown: json['hometown'] == null
          ? null
          : AddressModel.fromJson(json['hometown'] as Map<String, dynamic>),
      job: json['job'] == null
          ? null
          : JobModel.fromJson(json['job'] as Map<String, dynamic>),
      followedCount: json['followedCount'] as int?,
      followerCount: json['followerCount'] as int?,
      avatar: json['avatar'] as String?,
      background: json['background'] as String?,
    );

Map<String, dynamic> _$UserUiModelToJson(UserUiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'gender': instance.gender?.toJson(),
      'birthDay': instance.birthDay?.toJson(),
      'story': instance.story,
      'phone': instance.phone?.toJson(),
      'mail': instance.mail?.toJson(),
      'address': instance.address?.toJson(),
      'currentAddress': instance.currentAddress?.toJson(),
      'hometown': instance.hometown?.toJson(),
      'job': instance.job?.toJson(),
      'followerCount': instance.followerCount,
      'followedCount': instance.followedCount,
      'avatar': instance.avatar,
      'background': instance.background,
    };

FriendUiModel _$FriendUiModelFromJson(Map<String, dynamic> json) =>
    FriendUiModel(
      id: json['id'] as int?,
      firstName: json['firstName'] as String? ?? '',
      middleName: json['middleName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      gender: json['gender'] == null
          ? null
          : GenderModel.fromJson(json['gender'] as Map<String, dynamic>),
      birthDay: json['birthDay'] == null
          ? null
          : BirthDayModel.fromJson(json['birthDay'] as Map<String, dynamic>),
      story: json['story'] as String?,
      phone: json['phone'] == null
          ? null
          : PhoneModel.fromJson(json['phone'] as Map<String, dynamic>),
      mail: json['mail'] == null
          ? null
          : MailModel.fromJson(json['mail'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      currentAddress: json['currentAddress'] == null
          ? null
          : AddressModel.fromJson(
              json['currentAddress'] as Map<String, dynamic>),
      hometown: json['hometown'] == null
          ? null
          : AddressModel.fromJson(json['hometown'] as Map<String, dynamic>),
      job: json['job'] == null
          ? null
          : JobModel.fromJson(json['job'] as Map<String, dynamic>),
      followedCount: json['followedCount'] as int?,
      followerCount: json['followerCount'] as int?,
      isFollowed: json['isFollowed'] as bool? ?? false,
      isFriend: json['isFriend'] as bool? ?? false,
      avatar: json['avatar'] as String?,
      background: json['background'] as String?,
    );

Map<String, dynamic> _$FriendUiModelToJson(FriendUiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'gender': instance.gender?.toJson(),
      'birthDay': instance.birthDay?.toJson(),
      'story': instance.story,
      'phone': instance.phone?.toJson(),
      'mail': instance.mail?.toJson(),
      'address': instance.address?.toJson(),
      'currentAddress': instance.currentAddress?.toJson(),
      'hometown': instance.hometown?.toJson(),
      'job': instance.job?.toJson(),
      'followerCount': instance.followerCount,
      'followedCount': instance.followedCount,
      'isFollowed': instance.isFollowed,
      'isFriend': instance.isFriend,
      'avatar': instance.avatar,
      'background': instance.background,
    };

GenderModel _$GenderModelFromJson(Map<String, dynamic> json) => GenderModel(
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      privacy: $enumDecodeNullable(_$PrivacyEnumMap, json['privacy']) ??
          Privacy.PUBLIC,
    );

Map<String, dynamic> _$GenderModelToJson(GenderModel instance) =>
    <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender],
      'privacy': _$PrivacyEnumMap[instance.privacy]!,
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.OTHER: 'OTHER',
};

const _$PrivacyEnumMap = {
  Privacy.PUBLIC: 'PUBLIC',
  Privacy.PRIVATE: 'PRIVATE',
};

BirthDayModel _$BirthDayModelFromJson(Map<String, dynamic> json) =>
    BirthDayModel(
      day: json['day'] as String?,
      privacy: $enumDecodeNullable(_$PrivacyEnumMap, json['privacy']) ??
          Privacy.PUBLIC,
    );

Map<String, dynamic> _$BirthDayModelToJson(BirthDayModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'privacy': _$PrivacyEnumMap[instance.privacy]!,
    };

PhoneModel _$PhoneModelFromJson(Map<String, dynamic> json) => PhoneModel(
      phone: json['phone'] as String?,
      privacy: $enumDecodeNullable(_$PrivacyEnumMap, json['privacy']) ??
          Privacy.PUBLIC,
    );

Map<String, dynamic> _$PhoneModelToJson(PhoneModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'privacy': _$PrivacyEnumMap[instance.privacy]!,
    };

MailModel _$MailModelFromJson(Map<String, dynamic> json) => MailModel(
      mail: json['mail'] as String?,
      privacy: $enumDecodeNullable(_$PrivacyEnumMap, json['privacy']) ??
          Privacy.PUBLIC,
    );

Map<String, dynamic> _$MailModelToJson(MailModel instance) => <String, dynamic>{
      'mail': instance.mail,
      'privacy': _$PrivacyEnumMap[instance.privacy]!,
    };

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      address: json['address'] as String?,
      privacy: $enumDecodeNullable(_$PrivacyEnumMap, json['privacy']) ??
          Privacy.PUBLIC,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'privacy': _$PrivacyEnumMap[instance.privacy]!,
    };

JobModel _$JobModelFromJson(Map<String, dynamic> json) => JobModel(
      companyName: json['companyName'] as String?,
      position: json['position'] as String?,
      country: json['country'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      workInHere: json['workInHere'] as bool?,
      privacy: $enumDecodeNullable(_$PrivacyEnumMap, json['privacy']) ??
          Privacy.PUBLIC,
    );

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'companyName': instance.companyName,
      'position': instance.position,
      'country': instance.country,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'workInHere': instance.workInHere,
      'privacy': _$PrivacyEnumMap[instance.privacy]!,
    };
