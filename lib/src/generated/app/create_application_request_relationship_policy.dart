part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateApplicationRequestRelationshipPolicy
    implements _InttegroValue {
  final String? childStanding;
  final AppManagementRole? management;
  final AppCredentialOwner? credentials;
  const CreateApplicationRequestRelationshipPolicy({
    this.childStanding,
    this.management,
    this.credentials,
  });
  factory CreateApplicationRequestRelationshipPolicy.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateApplicationRequestRelationshipPolicy(
        childStanding: json["child_standing"] == null
            ? null
            : json["child_standing"] as String,
        management: json["management"] == null
            ? null
            : AppManagementRole.fromJson(json["management"]),
        credentials: json["credentials"] == null
            ? null
            : AppCredentialOwner.fromJson(json["credentials"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (childStanding != null)
          "child_standing": _encodeValue(childStanding),
        if (management != null) "management": _encodeValue(management),
        if (credentials != null) "credentials": _encodeValue(credentials),
      };
}
