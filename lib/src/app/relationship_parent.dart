part of '../../app.dart';

/// Public identity of the application that directly contains another app.
final class RelationshipParent implements InttegroValue {
  final String id;
  final String name;
  final String? alias;
  const RelationshipParent({
    required this.id,
    required this.name,
    this.alias,
  });
  factory RelationshipParent.fromJson(Map<String, Object?> json) =>
      RelationshipParent(
        id: json["id"] as String,
        name: json["name"] as String,
        alias: json["alias"] == null ? null : json["alias"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "name": encodeValue(name),
        if (alias != null) "alias": encodeValue(alias),
      };
}
