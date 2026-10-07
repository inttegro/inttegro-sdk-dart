part of '../../file.dart';

/// The external resource to which a file belongs.
final class Resource implements InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  const Resource({this.type, this.id, this.name});
  factory Resource.fromJson(Map<String, Object?> json) => Resource(
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
