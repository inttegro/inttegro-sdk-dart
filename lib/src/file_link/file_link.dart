part of '../../file_link.dart';

/// A time-bounded link that grants configured access to a stored file.
///
/// [status], [active], and [expiresAt] describe whether the link can currently
/// be used; [delivery] describes how the file is presented to its recipient.
final class FileLink implements InttegroValue {
  final String id;
  final Kind kind;
  final String fileId;
  final String purpose;
  final Status status;
  final bool active;
  final Delivery delivery;
  final Access access;
  final Actor createdBy;
  final Actor? revokedBy;
  final core.CustomData? customData;
  final core.FileMetadata? metadata;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime expiresAt;
  final DateTime? revokedAt;
  const FileLink({
    required this.id,
    required this.kind,
    required this.fileId,
    required this.purpose,
    required this.status,
    required this.active,
    required this.delivery,
    required this.access,
    required this.createdBy,
    this.revokedBy,
    this.customData,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    required this.expiresAt,
    this.revokedAt,
  });
  factory FileLink.fromJson(Map<String, Object?> json) => FileLink(
        id: json["id"] as String,
        kind: Kind.fromJson(json["kind"]),
        fileId: json["file_id"] as String,
        purpose: json["purpose"] as String,
        status: Status.fromJson(json["status"]),
        active: json["active"] as bool,
        delivery: Delivery.fromJson(
          (json["delivery"] as Map).cast<String, Object?>(),
        ),
        access: Access.fromJson(
          (json["access"] as Map).cast<String, Object?>(),
        ),
        createdBy: Actor.fromJson(
          (json["created_by"] as Map).cast<String, Object?>(),
        ),
        revokedBy: json["revoked_by"] == null
            ? null
            : Actor.fromJson(
                (json["revoked_by"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        metadata: json["metadata"] == null
            ? null
            : core.FileMetadata.fromJson(json["metadata"]),
        createdAt: decodeDateTime(json["created_at"]),
        updatedAt: decodeDateTime(json["updated_at"]),
        expiresAt: decodeDateTime(json["expires_at"]),
        revokedAt: json["revoked_at"] == null
            ? null
            : decodeDateTime(json["revoked_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "kind": encodeValue(kind),
        "file_id": encodeValue(fileId),
        "purpose": encodeValue(purpose),
        "status": encodeValue(status),
        "active": encodeValue(active),
        "delivery": encodeValue(delivery),
        "access": encodeValue(access),
        "created_by": encodeValue(createdBy),
        if (revokedBy != null) "revoked_by": encodeValue(revokedBy),
        if (customData != null) "custom_data": encodeValue(customData),
        if (metadata != null) "metadata": encodeValue(metadata),
        "created_at": encodeValue(createdAt),
        "updated_at": encodeValue(updatedAt),
        "expires_at": encodeValue(expiresAt),
        if (revokedAt != null) "revoked_at": encodeValue(revokedAt),
      };
}
