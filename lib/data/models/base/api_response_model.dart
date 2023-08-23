import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/base/api_response.dart';

part 'api_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponseModel<T> {
  const ApiResponseModel({
    this.success,
    this.data,
    this.error,
  });

  factory ApiResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseModelFromJson<T>(json, fromJsonT);

  @JsonKey(name: 'success')
  final bool? success;

  @JsonKey(name: 'data')
  final T? data;

  @JsonKey(name: 'error')
  final String? error;

  Map<String, dynamic> toJson(
    ApiResponseModel<T> instance,
    Object? Function(T value) toJsonT,
  ) =>
      _$ApiResponseModelToJson(instance, toJsonT);

  ApiResponse<T> toApiResponse() => ApiResponse<T>(
        error: error,
        success: success,
      );
}
