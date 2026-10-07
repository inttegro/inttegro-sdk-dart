part of '../../file.dart';

/// Identifies a party associated with a file.
///
/// Exposes [type], [id], [name], and [email].
final class Party implements InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  final String? email;
  const Party({this.type, this.id, this.name, this.email});
  factory Party.fromJson(Map<String, Object?> json) => Party(
        type: json["type"] == null ? null : json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        email: json["email"] == null ? null : json["email"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": encodeValue(type),
        if (id != null) "id": encodeValue(id),
        if (name != null) "name": encodeValue(name),
        if (email != null) "email": encodeValue(email),
      };
}
