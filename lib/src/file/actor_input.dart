part of '../../file.dart';

/// Actor fields accepted by the file API.
///
/// Carries [email], [id], [name], and [type].
final class ActorInput implements InttegroValue {
  final String? email;
  final String? id;
  final String? name;
  final String? type;
  const ActorInput({this.email, this.id, this.name, this.type});
  factory ActorInput.fromJson(Map<String, Object?> json) => ActorInput(
        email: json["email"] == null ? null : json["email"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        type: json["type"] == null ? null : json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (email != null) "email": encodeValue(email),
        if (id != null) "id": encodeValue(id),
        if (name != null) "name": encodeValue(name),
        if (type != null) "type": encodeValue(type),
      };
}
