import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.g.dart';

@JsonSerializable(explicitToJson: true)
class Event {
  const Event({
    this.id,
    this.name,
    this.time,
    this.location,
    this.careCount,
    this.joinCount,
    this.care = false,
    this.join = false,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final int? id;
  final String? time;
  final String? name;
  final String? location;
  final int? careCount;
  final int? joinCount;
  final bool care;
  final bool join;

  dynamic toJson() => _$EventToJson(this);

  Event copyWith({
    int? newId,
    String? newTime,
    String? newName,
    String? newLocation,
    int? newCareCount,
    int? newJoinCount,
    bool? newCare,
    bool? newJoin,
  }) {
    return Event(
      id: newId ?? id,
      time: newTime ?? time,
      name: newName ?? name,
      location: newLocation ?? location,
      careCount: newCareCount ?? careCount,
      joinCount: newJoinCount ?? joinCount,
      care: newCare ?? care,
      join: newJoin ?? join,
    );
  }
}
