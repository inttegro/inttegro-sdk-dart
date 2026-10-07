part of '../../file_link.dart';

/// Identifies the actor associated with a file link operation.
///
/// Exposes [email], [id], [name], and [type].
final class Actor implements InttegroValue {
  final String? email;
  final String? id;
  final String? name;
  final String type;
  const Actor({this.email, this.id, this.name, required this.type});
  factory Actor.fromJson(Map<String, Object?> json) => Actor(
        email: json["email"] == null ? null : json["email"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (email != null) "email": encodeValue(email),
        if (id != null) "id": encodeValue(id),
        if (name != null) "name": encodeValue(name),
        "type": encodeValue(type),
      };
}
