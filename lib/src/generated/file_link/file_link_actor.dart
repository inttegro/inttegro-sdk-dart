part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileLinkActor implements _InttegroValue {
  final String? email;
  final String? id;
  final String? name;
  final String type;
  const FileLinkActor({this.email, this.id, this.name, required this.type});
  factory FileLinkActor.fromJson(Map<String, Object?> json) => FileLinkActor(
        email: json["email"] == null ? null : json["email"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (email != null) "email": _encodeValue(email),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        "type": _encodeValue(type),
      };
}
