// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetModel _$AssetModelFromJson(Map<String, dynamic> json) => AssetModel(
      id: json['id'] as int?,
      url: json['url'] as String?,
      type: json['type'] as String?,
      fileType: json['fileType'] as String?,
    );

Map<String, dynamic> _$AssetModelToJson(AssetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'type': instance.type,
      'fileType': instance.fileType,
    };
