part of '../../app.dart';

/// The management, credential, and standing policy for an application
/// relationship.
///
/// Exposes [childStanding], [management], and [credentials].
final class RelationshipPolicy implements InttegroValue {
  final String childStanding;
  final ManagementRole management;
  final CredentialOwner credentials;
  const RelationshipPolicy({
    required this.childStanding,
    required this.management,
    required this.credentials,
  });
  factory RelationshipPolicy.fromJson(Map<String, Object?> json) =>
      RelationshipPolicy(
        childStanding: json["child_standing"] as String,
        management: ManagementRole.fromJson(json["management"]),
        credentials: CredentialOwner.fromJson(json["credentials"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "child_standing": encodeValue(childStanding),
        "management": encodeValue(management),
        "credentials": encodeValue(credentials),
      };
}
