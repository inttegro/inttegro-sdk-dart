part of '../../app.dart';

/// An Inttegro application and its credential or relationship context.
///
/// Lifecycle timestamps indicate when the application was created, updated, or
/// archived. [secretKey] is present only when returned by the API operation.
final class Application implements InttegroValue {
  final String id;
  final String name;
  final String? alias;
  final String? description;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;
  final SecretKey? secretKey;
  final Relationship? relationship;
  const Application({
    required this.id,
    required this.name,
    this.alias,
    this.description,
    required this.createdAt,
    this.updatedAt,
    this.archivedAt,
    this.secretKey,
    this.relationship,
  });
  factory Application.fromJson(Map<String, Object?> json) => Application(
        id: json["id"] as String,
        name: json["name"] as String,
        alias: json["alias"] == null ? null : json["alias"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        createdAt: decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : decodeDateTime(json["archived_at"]),
        secretKey: json["secret_key"] == null
            ? null
            : SecretKey.fromJson(
                (json["secret_key"] as Map).cast<String, Object?>(),
              ),
        relationship: json["relationship"] == null
            ? null
            : Relationship.fromJson(
                (json["relationship"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "name": encodeValue(name),
        if (alias != null) "alias": encodeValue(alias),
        if (description != null) "description": encodeValue(description),
        "created_at": encodeValue(createdAt),
        if (updatedAt != null) "updated_at": encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": encodeValue(archivedAt),
        if (secretKey != null) "secret_key": encodeValue(secretKey),
        if (relationship != null) "relationship": encodeValue(relationship),
      };
}
