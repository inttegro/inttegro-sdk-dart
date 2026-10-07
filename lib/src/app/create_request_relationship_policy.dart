part of '../../app.dart';

/// Relationship policy supplied while creating an application.
///
/// Carries [childStanding], [management], and [credentials].
final class CreateRequestRelationshipPolicy implements InttegroValue {
  final String? childStanding;
  final ManagementRole? management;
  final CredentialOwner? credentials;
  const CreateRequestRelationshipPolicy({
    this.childStanding,
    this.management,
    this.credentials,
  });
  factory CreateRequestRelationshipPolicy.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateRequestRelationshipPolicy(
        childStanding: json["child_standing"] == null
            ? null
            : json["child_standing"] as String,
        management: json["management"] == null
            ? null
            : ManagementRole.fromJson(json["management"]),
        credentials: json["credentials"] == null
            ? null
            : CredentialOwner.fromJson(json["credentials"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (childStanding != null) "child_standing": encodeValue(childStanding),
        if (management != null) "management": encodeValue(management),
        if (credentials != null) "credentials": encodeValue(credentials),
      };
}
