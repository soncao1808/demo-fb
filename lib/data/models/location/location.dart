import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {
  const Location({
    required this.id,
    this.name,
    this.description,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  final int id;
  final String? name;
  final String? description;

  dynamic toJson() => _$LocationToJson(this);
}
