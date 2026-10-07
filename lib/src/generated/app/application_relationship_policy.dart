part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ApplicationRelationshipPolicy implements _InttegroValue {
  final String childStanding;
  final AppManagementRole management;
  final AppCredentialOwner credentials;
  const ApplicationRelationshipPolicy({
    required this.childStanding,
    required this.management,
    required this.credentials,
  });
  factory ApplicationRelationshipPolicy.fromJson(Map<String, Object?> json) =>
      ApplicationRelationshipPolicy(
        childStanding: json["child_standing"] as String,
        management: AppManagementRole.fromJson(json["management"]),
        credentials: AppCredentialOwner.fromJson(json["credentials"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "child_standing": _encodeValue(childStanding),
        "management": _encodeValue(management),
        "credentials": _encodeValue(credentials),
      };
}
