part of '../../app.dart';

/// The current lifecycle state of an application relationship.
final class RelationshipStatus implements InttegroValue {
  final String value;
  const RelationshipStatus(this.value);
  factory RelationshipStatus.fromJson(Object? json) =>
      RelationshipStatus(json as String);
  static const active = RelationshipStatus("active");
  static const inactive = RelationshipStatus("inactive");
  static const suspended = RelationshipStatus("suspended");
  static const revoked = RelationshipStatus("revoked");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is RelationshipStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
