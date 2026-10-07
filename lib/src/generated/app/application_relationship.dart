part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ApplicationRelationship implements _InttegroValue {
  final String id;
  final AppRelationshipKind kind;
  final String policyVersion;
  final AppRelationshipStatus status;
  final String actorAppId;
  final String creatorAppId;
  final String placementParentAppId;
  final String subjectAppId;
  final String childAppId;
  final String childStanding;
  final ApplicationRelationshipPolicy relationshipPolicy;
  final bool retainedCreatorAuthorityExists;
  final DateTime createdAt;
  const ApplicationRelationship({
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
  factory ApplicationRelationship.fromJson(Map<String, Object?> json) =>
      ApplicationRelationship(
        id: json["id"] as String,
        kind: AppRelationshipKind.fromJson(json["kind"]),
        policyVersion: json["policy_version"] as String,
        status: AppRelationshipStatus.fromJson(json["status"]),
        actorAppId: json["actor_app_id"] as String,
        creatorAppId: json["creator_app_id"] as String,
        placementParentAppId: json["placement_parent_app_id"] as String,
        subjectAppId: json["subject_app_id"] as String,
        childAppId: json["child_app_id"] as String,
        childStanding: json["child_standing"] as String,
        relationshipPolicy: ApplicationRelationshipPolicy.fromJson(
          (json["relationship_policy"] as Map).cast<String, Object?>(),
        ),
        retainedCreatorAuthorityExists:
            json["retained_creator_authority_exists"] as bool,
        createdAt: _decodeDateTime(json["created_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "kind": _encodeValue(kind),
        "policy_version": _encodeValue(policyVersion),
        "status": _encodeValue(status),
        "actor_app_id": _encodeValue(actorAppId),
        "creator_app_id": _encodeValue(creatorAppId),
        "placement_parent_app_id": _encodeValue(placementParentAppId),
        "subject_app_id": _encodeValue(subjectAppId),
        "child_app_id": _encodeValue(childAppId),
        "child_standing": _encodeValue(childStanding),
        "relationship_policy": _encodeValue(relationshipPolicy),
        "retained_creator_authority_exists": _encodeValue(
          retainedCreatorAuthorityExists,
        ),
        "created_at": _encodeValue(createdAt),
      };
}
