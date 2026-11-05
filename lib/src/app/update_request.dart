part of '../../app.dart';

/// Parameters for updating an application.
///
/// Carries [name], [alias], [description], and [legalEntityType].
final class UpdateRequest implements InttegroValue {
  final String? name;
  final String? alias;
  final String? description;
  final String? legalEntityType;
  final operating_policy.Selection? operatingPolicy;
  const UpdateRequest({
    this.name,
    this.alias,
    this.description,
    this.legalEntityType,
    this.operatingPolicy,
  });
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        name: json["name"] == null ? null : json["name"] as String,
        alias: json["alias"] == null ? null : json["alias"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        legalEntityType: json["legal_entity_type"] == null
            ? null
            : json["legal_entity_type"] as String,
        operatingPolicy: json["operating_policy"] == null
            ? null
            : operating_policy.Selection.fromJson(
                (json["operating_policy"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": encodeValue(name),
        if (alias != null) "alias": encodeValue(alias),
        if (description != null) "description": encodeValue(description),
        if (legalEntityType != null)
          "legal_entity_type": encodeValue(legalEntityType),
        if (operatingPolicy != null)
          "operating_policy": encodeValue(operatingPolicy),
      };
}
