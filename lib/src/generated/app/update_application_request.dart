part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdateApplicationRequest implements _InttegroValue {
  final String? name;
  final String? alias;
  final String? description;
  final String? legalEntityType;
  const UpdateApplicationRequest({
    this.name,
    this.alias,
    this.description,
    this.legalEntityType,
  });
  factory UpdateApplicationRequest.fromJson(Map<String, Object?> json) =>
      UpdateApplicationRequest(
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
        if (name != null) "name": _encodeValue(name),
        if (alias != null) "alias": _encodeValue(alias),
        if (description != null) "description": _encodeValue(description),
        if (legalEntityType != null)
          "legal_entity_type": _encodeValue(legalEntityType),
      };
}
