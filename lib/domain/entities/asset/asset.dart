import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/data/models/asset/asset_model.dart';

part 'asset.freezed.dart';
part 'asset.g.dart';

@freezed
class Asset with _$Asset {
  factory Asset({
    required int? id,
    required String? url,
    required String? type,
    required String? fileType,
  }) = _Asset;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

  const Asset._();

  AssetModel toAssetModel() => AssetModel(
        fileType: fileType,
        id: null,
        type: type,
        url: url,
      );
}
