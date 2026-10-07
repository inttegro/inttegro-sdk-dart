part of '../../app.dart';

/// An application relationship, its participants, policy, and current state.
///
/// Exposes [id], [kind], [policyVersion], and [status], among other contract
/// fields.
final class Relationship implements InttegroValue {
  final String id;
  final RelationshipKind kind;
  final String policyVersion;
  final RelationshipStatus status;
  final String actorAppId;
  final String creatorAppId;
  final String placementParentAppId;
  final String subjectAppId;
  final String childAppId;
  final String childStanding;
  final RelationshipPolicy relationshipPolicy;
  final bool retainedCreatorAuthorityExists;
  final DateTime createdAt;
  const Relationship({
    required this.id,
    required this.kind,
    required this.policyVersion,
    required this.status,
    required this.actorAppId,
    required this.creatorAppId,
    required this.placementParentAppId,
    required this.subjectAppId,
    required this.childAppId,
    required this.childStanding,
    required this.relationshipPolicy,
    required this.retainedCreatorAuthorityExists,
    required this.createdAt,
  });
  factory Relationship.fromJson(Map<String, Object?> json) => Relationship(
        id: json["id"] as String,
        kind: RelationshipKind.fromJson(json["kind"]),
        policyVersion: json["policy_version"] as String,
        status: RelationshipStatus.fromJson(json["status"]),
        actorAppId: json["actor_app_id"] as String,
        creatorAppId: json["creator_app_id"] as String,
        placementParentAppId: json["placement_parent_app_id"] as String,
        subjectAppId: json["subject_app_id"] as String,
        childAppId: json["child_app_id"] as String,
        childStanding: json["child_standing"] as String,
        relationshipPolicy: RelationshipPolicy.fromJson(
          (json["relationship_policy"] as Map).cast<String, Object?>(),
        ),
        retainedCreatorAuthorityExists:
            json["retained_creator_authority_exists"] as bool,
        createdAt: decodeDateTime(json["created_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "kind": encodeValue(kind),
        "policy_version": encodeValue(policyVersion),
        "status": encodeValue(status),
        "actor_app_id": encodeValue(actorAppId),
        "creator_app_id": encodeValue(creatorAppId),
        "placement_parent_app_id": encodeValue(placementParentAppId),
        "subject_app_id": encodeValue(subjectAppId),
        "child_app_id": encodeValue(childAppId),
        "child_standing": encodeValue(childStanding),
        "relationship_policy": encodeValue(relationshipPolicy),
        "retained_creator_authority_exists": encodeValue(
          retainedCreatorAuthorityExists,
        ),
        "created_at": encodeValue(createdAt),
      };
}
