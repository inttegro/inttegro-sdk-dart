part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Application implements _InttegroValue {
  final String id;
  final String name;
  final String? alias;
  final String? description;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;
  final ApplicationSecretKey? secretKey;
  final ApplicationRelationship? relationship;
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
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        secretKey: json["secret_key"] == null
            ? null
            : ApplicationSecretKey.fromJson(
                (json["secret_key"] as Map).cast<String, Object?>(),
              ),
        relationship: json["relationship"] == null
            ? null
            : ApplicationRelationship.fromJson(
                (json["relationship"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (alias != null) "alias": _encodeValue(alias),
        if (description != null) "description": _encodeValue(description),
        "created_at": _encodeValue(createdAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        if (secretKey != null) "secret_key": _encodeValue(secretKey),
        if (relationship != null) "relationship": _encodeValue(relationship),
      };
}
