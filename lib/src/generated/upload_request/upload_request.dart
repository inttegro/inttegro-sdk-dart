part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UploadRequest implements _InttegroValue {
  final String id;
  final String purpose;
  final UploadRequestStatus status;
  final bool active;
  final String? fileId;
  final String? uploadUrl;
  final UploadRequestConstraints constraints;
  final UploadRequestDisplay display;
  final FileParty subject;
  final FileParty recipient;
  final FileResource resource;
  final UploadRequestActor requester;
  final UploadRequestAttempts attempts;
  final UploadRequestLatestError? latestError;
  final UploadRequestActor? canceledBy;
  final CustomData? customData;
  final FileMetadata? metadata;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime expiresAt;
  final DateTime? uploadingAt;
  final DateTime? fulfilledAt;
  final DateTime? expiredAt;
  final DateTime? canceledAt;
  final UploadRequestAttempt? attempt;
  const UploadRequest({
    required this.id,
    required this.purpose,
    required this.status,
    required this.active,
    this.fileId,
    this.uploadUrl,
    required this.constraints,
    required this.display,
    required this.subject,
    required this.recipient,
    required this.resource,
    required this.requester,
    required this.attempts,
    this.latestError,
    this.canceledBy,
    this.customData,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    required this.expiresAt,
    this.uploadingAt,
    this.fulfilledAt,
    this.expiredAt,
    this.canceledAt,
    this.attempt,
  });
  factory UploadRequest.fromJson(Map<String, Object?> json) => UploadRequest(
        id: json["id"] as String,
        purpose: json["purpose"] as String,
        status: UploadRequestStatus.fromJson(json["status"]),
        active: json["active"] as bool,
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        uploadUrl:
            json["upload_url"] == null ? null : json["upload_url"] as String,
        constraints: UploadRequestConstraints.fromJson(
          (json["constraints"] as Map).cast<String, Object?>(),
        ),
        display: UploadRequestDisplay.fromJson(
          (json["display"] as Map).cast<String, Object?>(),
        ),
        subject: FileParty.fromJson(
          (json["subject"] as Map).cast<String, Object?>(),
        ),
        recipient: FileParty.fromJson(
          (json["recipient"] as Map).cast<String, Object?>(),
        ),
        resource: FileResource.fromJson(
          (json["resource"] as Map).cast<String, Object?>(),
        ),
        requester: UploadRequestActor.fromJson(
          (json["requester"] as Map).cast<String, Object?>(),
        ),
        attempts: UploadRequestAttempts.fromJson(
          (json["attempts"] as Map).cast<String, Object?>(),
        ),
        latestError: json["latest_error"] == null
            ? null
            : UploadRequestLatestError.fromJson(
                (json["latest_error"] as Map).cast<String, Object?>(),
              ),
        canceledBy: json["canceled_by"] == null
            ? null
            : UploadRequestActor.fromJson(
                (json["canceled_by"] as Map).cast<String, Object?>(),
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
        uploadingAt: json["uploading_at"] == null
            ? null
            : _decodeDateTime(json["uploading_at"]),
        fulfilledAt: json["fulfilled_at"] == null
            ? null
            : _decodeDateTime(json["fulfilled_at"]),
        expiredAt: json["expired_at"] == null
            ? null
            : _decodeDateTime(json["expired_at"]),
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        attempt: json["attempt"] == null
            ? null
            : UploadRequestAttempt.fromJson(
                (json["attempt"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "purpose": _encodeValue(purpose),
        "status": _encodeValue(status),
        "active": _encodeValue(active),
        if (fileId != null) "file_id": _encodeValue(fileId),
        if (uploadUrl != null) "upload_url": _encodeValue(uploadUrl),
        "constraints": _encodeValue(constraints),
        "display": _encodeValue(display),
        "subject": _encodeValue(subject),
        "recipient": _encodeValue(recipient),
        "resource": _encodeValue(resource),
        "requester": _encodeValue(requester),
        "attempts": _encodeValue(attempts),
        if (latestError != null) "latest_error": _encodeValue(latestError),
        if (canceledBy != null) "canceled_by": _encodeValue(canceledBy),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (metadata != null) "metadata": _encodeValue(metadata),
        "created_at": _encodeValue(createdAt),
        "updated_at": _encodeValue(updatedAt),
        "expires_at": _encodeValue(expiresAt),
        if (uploadingAt != null) "uploading_at": _encodeValue(uploadingAt),
        if (fulfilledAt != null) "fulfilled_at": _encodeValue(fulfilledAt),
        if (expiredAt != null) "expired_at": _encodeValue(expiredAt),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        if (attempt != null) "attempt": _encodeValue(attempt),
      };
}
