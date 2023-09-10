import 'package:freezed_annotation/freezed_annotation.dart';

part 'react.g.dart';

@JsonSerializable(explicitToJson: true)
class React {
  const React({
    required this.id,
    this.name,
    this.emoji,
  });

  factory React.fromJson(Map<String, dynamic> json) => _$ReactFromJson(json);

  final int id;
  final String? name;
  final String? emoji;

  dynamic toJson() => _$ReactToJson(this);
}
