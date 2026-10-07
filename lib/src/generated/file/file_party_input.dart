part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FilePartyInput implements _InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  final String? email;
  const FilePartyInput({this.type, this.id, this.name, this.email});
  factory FilePartyInput.fromJson(Map<String, Object?> json) => FilePartyInput(
        type: json["type"] == null ? null : json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        email: json["email"] == null ? null : json["email"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        if (email != null) "email": _encodeValue(email),
      };
}
