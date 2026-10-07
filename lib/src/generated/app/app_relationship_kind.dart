part of '../../../inttegro.dart';

/// A typed `AppRelationshipKind` value used by the Inttegro API.
final class AppRelationshipKind implements _InttegroValue {
  final String value;
  const AppRelationshipKind(this.value);
  factory AppRelationshipKind.fromJson(Object? json) =>
      AppRelationshipKind(json as String);
  static const placement = AppRelationshipKind("placement");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AppRelationshipKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
