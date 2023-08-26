import 'package:fbapp/domain/entities/asset/asset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_model.g.dart';

@JsonSerializable()
class AssetModel {
  final int? id;
  final String? url;
  final String? type;
  final String? fileType;

  AssetModel({
    required this.id,
    required this.url,
    required this.type,
    required this.fileType,
  });

  factory AssetModel.fromJson(Map<String, dynamic> json) =>
      _$AssetModelFromJson(json);
  Map<String, dynamic> toJson() => _$AssetModelToJson(this);

  Asset toAsset() => Asset(
        fileType: fileType,
        id: id,
        type: type,
        url: url,
      );
}
