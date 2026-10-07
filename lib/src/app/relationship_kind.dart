part of '../../app.dart';

/// The kind of relationship between two applications.
final class RelationshipKind implements InttegroValue {
  final String value;
  const RelationshipKind(this.value);
  factory RelationshipKind.fromJson(Object? json) =>
      RelationshipKind(json as String);
  static const placement = RelationshipKind("placement");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is RelationshipKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
