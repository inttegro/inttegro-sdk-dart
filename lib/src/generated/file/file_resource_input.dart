part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FileResourceInput implements _InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  const FileResourceInput({this.type, this.id, this.name});
  factory FileResourceInput.fromJson(Map<String, Object?> json) =>
      FileResourceInput(
        type: json["type"] == null ? null : json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
      };
}
