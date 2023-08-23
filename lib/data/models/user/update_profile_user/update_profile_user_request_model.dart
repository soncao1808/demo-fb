import 'package:json_annotation/json_annotation.dart';
import 'package:fbapp/data/models/asset/asset_model.dart';

part 'update_profile_user_request_model.g.dart';

@JsonSerializable()
class UpdateProfileUserRequestModel {
  const UpdateProfileUserRequestModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.gender,
    required this.birthDay,
    required this.files,
  });

  factory UpdateProfileUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileUserRequestModelFromJson(json);

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @JsonKey(name: 'gender')
  final String gender;

  @JsonKey(name: 'birth_day')
  final String birthDay;

  @JsonKey(name: 'files')
  final AssetModel files;

  Map<String, dynamic> toJson() => _$UpdateProfileUserRequestModelToJson(this);
}
