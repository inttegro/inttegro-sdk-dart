part of '../../file.dart';

/// Party fields accepted by the file API.
///
/// Carries [type], [id], [name], and [email].
final class PartyInput implements InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  final String? email;
  const PartyInput({this.type, this.id, this.name, this.email});
  factory PartyInput.fromJson(Map<String, Object?> json) => PartyInput(
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
