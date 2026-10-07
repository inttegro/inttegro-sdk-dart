part of '../../../inttegro.dart';

/// A typed `AppRelationshipStatus` value used by the Inttegro API.
final class AppRelationshipStatus implements _InttegroValue {
  final String value;
  const AppRelationshipStatus(this.value);
  factory AppRelationshipStatus.fromJson(Object? json) =>
      AppRelationshipStatus(json as String);
  static const active = AppRelationshipStatus("active");
  static const inactive = AppRelationshipStatus("inactive");
  static const suspended = AppRelationshipStatus("suspended");
  static const revoked = AppRelationshipStatus("revoked");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AppRelationshipStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
