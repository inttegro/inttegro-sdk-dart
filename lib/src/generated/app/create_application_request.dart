part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateApplicationRequest implements _InttegroValue {
  final String? alias;
  final String? description;
  final String? legalEntityType;
  final String? placementParentApplicationId;
  final CreateApplicationRequestRelationshipPolicy? relationshipPolicy;
  final String name;
  const CreateApplicationRequest({
    this.alias,
    this.description,
    this.legalEntityType,
    this.placementParentApplicationId,
    this.relationshipPolicy,
    required this.name,
  });
  factory CreateApplicationRequest.fromJson(Map<String, Object?> json) =>
      CreateApplicationRequest(
        alias: json["alias"] == null ? null : json["alias"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        legalEntityType: json["legal_entity_type"] == null
            ? null
            : json["legal_entity_type"] as String,
        placementParentApplicationId:
            json["placement_parent_application_id"] == null
                ? null
                : json["placement_parent_application_id"] as String,
        relationshipPolicy: json["relationship_policy"] == null
            ? null
            : CreateApplicationRequestRelationshipPolicy.fromJson(
                (json["relationship_policy"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (alias != null) "alias": _encodeValue(alias),
        if (description != null) "description": _encodeValue(description),
        if (legalEntityType != null)
          "legal_entity_type": _encodeValue(legalEntityType),
        if (placementParentApplicationId != null)
          "placement_parent_application_id": _encodeValue(
            placementParentApplicationId,
          ),
        if (relationshipPolicy != null)
          "relationship_policy": _encodeValue(relationshipPolicy),
        "name": _encodeValue(name),
      };
}
