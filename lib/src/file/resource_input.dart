part of '../../file.dart';

/// Resource fields accepted by the file API.
///
/// Carries [type], [id], and [name].
final class ResourceInput implements InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  const ResourceInput({this.type, this.id, this.name});
  factory ResourceInput.fromJson(Map<String, Object?> json) => ResourceInput(
        type: json["type"] == null ? null : json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": encodeValue(type),
        if (id != null) "id": encodeValue(id),
        if (name != null) "name": encodeValue(name),
      };
}
