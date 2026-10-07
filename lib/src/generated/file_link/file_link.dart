part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileLink implements _InttegroValue {
  final String id;
  final FileLinkKind kind;
  final String fileId;
  final String purpose;
  final FileLinkStatus status;
  final bool active;
  final FileLinkDelivery delivery;
  final FileLinkAccess access;
  final FileLinkActor createdBy;
  final FileLinkActor? revokedBy;
  final CustomData? customData;
  final FileMetadata? metadata;
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
        kind: FileLinkKind.fromJson(json["kind"]),
        fileId: json["file_id"] as String,
        purpose: json["purpose"] as String,
        status: FileLinkStatus.fromJson(json["status"]),
        active: json["active"] as bool,
        delivery: FileLinkDelivery.fromJson(
          (json["delivery"] as Map).cast<String, Object?>(),
        ),
        access: FileLinkAccess.fromJson(
          (json["access"] as Map).cast<String, Object?>(),
        ),
        createdBy: FileLinkActor.fromJson(
          (json["created_by"] as Map).cast<String, Object?>(),
        ),
        revokedBy: json["revoked_by"] == null
            ? null
            : FileLinkActor.fromJson(
                (json["revoked_by"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        metadata: json["metadata"] == null
            ? null
            : FileMetadata.fromJson(json["metadata"]),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: _decodeDateTime(json["updated_at"]),
        expiresAt: _decodeDateTime(json["expires_at"]),
        revokedAt: json["revoked_at"] == null
            ? null
            : _decodeDateTime(json["revoked_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "kind": _encodeValue(kind),
        "file_id": _encodeValue(fileId),
        "purpose": _encodeValue(purpose),
        "status": _encodeValue(status),
        "active": _encodeValue(active),
        "delivery": _encodeValue(delivery),
        "access": _encodeValue(access),
        "created_by": _encodeValue(createdBy),
        if (revokedBy != null) "revoked_by": _encodeValue(revokedBy),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (metadata != null) "metadata": _encodeValue(metadata),
        "created_at": _encodeValue(createdAt),
        "updated_at": _encodeValue(updatedAt),
        "expires_at": _encodeValue(expiresAt),
        if (revokedAt != null) "revoked_at": _encodeValue(revokedAt),
      };
}
