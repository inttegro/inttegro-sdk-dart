part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileActor implements _InttegroValue {
  final String type;
  final String? id;
  final String? name;
  final String? email;
  const FileActor({required this.type, this.id, this.name, this.email});
  factory FileActor.fromJson(Map<String, Object?> json) => FileActor(
        type: json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        email: json["email"] == null ? null : json["email"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        if (email != null) "email": _encodeValue(email),
      };
}
