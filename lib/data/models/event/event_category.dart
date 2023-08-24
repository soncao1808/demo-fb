import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_category.g.dart';

@JsonSerializable(explicitToJson: true)
class EventCategory {
  const EventCategory({
    this.id,
    this.name
  });

  factory EventCategory.fromJson(Map<String, dynamic> json) =>
      _$EventCategoryFromJson(json);

  final int? id;
  final String? name;

  dynamic toJson() => _$EventCategoryToJson(this);
}
