part of '../../app.dart';

/// A direct placement relationship for a child application.
final class Relationship implements InttegroValue {
  final String id;
  final RelationshipKind kind;
  final RelationshipParent parent;
  final RelationshipStatus status;
  final DateTime createdAt;
  const Relationship({
    required this.id,
    required this.kind,
    required this.parent,
    required this.status,
    required this.createdAt,
  });
  factory Relationship.fromJson(Map<String, Object?> json) => Relationship(
        id: json["id"] as String,
        kind: RelationshipKind.fromJson(json["kind"]),
        parent: RelationshipParent.fromJson(
          (json["parent"] as Map).cast<String, Object?>(),
        ),
        status: RelationshipStatus.fromJson(json["status"]),
        createdAt: decodeDateTime(json["created_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "kind": encodeValue(kind),
        "parent": encodeValue(parent),
        "status": encodeValue(status),
        "created_at": encodeValue(createdAt),
      };
}
