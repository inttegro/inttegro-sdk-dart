part of '../../app.dart';

/// Parameters for updating an application.
///
/// Carries [name], [alias], [description], and [legalEntityType].
final class UpdateRequest implements InttegroValue {
  final String? name;
  final String? alias;
  final String? description;
  final String? legalEntityType;
  const UpdateRequest({
    this.name,
    this.alias,
    this.description,
    this.legalEntityType,
  });
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        name: json["name"] == null ? null : json["name"] as String,
        alias: json["alias"] == null ? null : json["alias"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        legalEntityType: json["legal_entity_type"] == null
            ? null
            : json["legal_entity_type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": encodeValue(name),
        if (alias != null) "alias": encodeValue(alias),
        if (description != null) "description": encodeValue(description),
        if (legalEntityType != null)
          "legal_entity_type": encodeValue(legalEntityType),
      };
}
