part of '../../file.dart';

/// Identifies the actor associated with a file operation.
///
/// Exposes [type], [id], [name], and [email].
final class Actor implements InttegroValue {
  final String type;
  final String? id;
  final String? name;
  final String? email;
  const Actor({required this.type, this.id, this.name, this.email});
  factory Actor.fromJson(Map<String, Object?> json) => Actor(
        type: json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        email: json["email"] == null ? null : json["email"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        if (id != null) "id": encodeValue(id),
        if (name != null) "name": encodeValue(name),
        if (email != null) "email": encodeValue(email),
      };
}
