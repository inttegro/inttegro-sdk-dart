part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FileActorInput implements _InttegroValue {
  final String? email;
  final String? id;
  final String? name;
  final String? type;
  const FileActorInput({this.email, this.id, this.name, this.type});
  factory FileActorInput.fromJson(Map<String, Object?> json) => FileActorInput(
        email: json["email"] == null ? null : json["email"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        type: json["type"] == null ? null : json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (email != null) "email": _encodeValue(email),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        if (type != null) "type": _encodeValue(type),
      };
}
