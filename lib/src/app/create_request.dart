part of '../../app.dart';

/// Parameters for creating an application.
///
/// Carries [alias], [description], [legalEntityType], and
/// [placementParentApplicationId], among other supported fields.
final class CreateRequest implements InttegroValue {
  final String? alias;
  final String? description;
  final String? legalEntityType;
  final String? placementParentApplicationId;
  final CreateRequestRelationshipPolicy? relationshipPolicy;
  final String name;
  const CreateRequest({
    this.alias,
    this.description,
    this.legalEntityType,
    this.placementParentApplicationId,
    this.relationshipPolicy,
    required this.name,
  });
  factory CreateRequest.fromJson(Map<String, Object?> json) => CreateRequest(
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
            : CreateRequestRelationshipPolicy.fromJson(
                (json["relationship_policy"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (alias != null) "alias": encodeValue(alias),
        if (description != null) "description": encodeValue(description),
        if (legalEntityType != null)
          "legal_entity_type": encodeValue(legalEntityType),
        if (placementParentApplicationId != null)
          "placement_parent_application_id": encodeValue(
            placementParentApplicationId,
          ),
        if (relationshipPolicy != null)
          "relationship_policy": encodeValue(relationshipPolicy),
        "name": encodeValue(name),
      };
}
