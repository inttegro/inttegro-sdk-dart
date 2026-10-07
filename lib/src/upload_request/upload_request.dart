part of '../../upload_request.dart';

/// A request for a recipient to upload a file under defined constraints.
///
/// The model includes the upload lifecycle, parties, requested resource,
/// attempts, and review or failure context returned by the API.
final class UploadRequest implements InttegroValue {
  final String id;
  final String purpose;
  final Status status;
  final bool active;
  final String? fileId;
  final String? uploadUrl;
  final Constraints constraints;
  final Display display;
  final inttegro_file.Party subject;
  final inttegro_file.Party recipient;
  final inttegro_file.Resource resource;
  final Actor requester;
  final Attempts attempts;
  final LatestError? latestError;
  final Actor? canceledBy;
  final core.CustomData? customData;
  final core.FileMetadata? metadata;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime expiresAt;
  final DateTime? uploadingAt;
  final DateTime? fulfilledAt;
  final DateTime? expiredAt;
  final DateTime? canceledAt;
  final Attempt? attempt;
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
        status: Status.fromJson(json["status"]),
        active: json["active"] as bool,
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        uploadUrl:
            json["upload_url"] == null ? null : json["upload_url"] as String,
        constraints: Constraints.fromJson(
          (json["constraints"] as Map).cast<String, Object?>(),
        ),
        display: Display.fromJson(
          (json["display"] as Map).cast<String, Object?>(),
        ),
        subject: inttegro_file.Party.fromJson(
          (json["subject"] as Map).cast<String, Object?>(),
        ),
        recipient: inttegro_file.Party.fromJson(
          (json["recipient"] as Map).cast<String, Object?>(),
        ),
        resource: inttegro_file.Resource.fromJson(
          (json["resource"] as Map).cast<String, Object?>(),
        ),
        requester: Actor.fromJson(
          (json["requester"] as Map).cast<String, Object?>(),
        ),
        attempts: Attempts.fromJson(
          (json["attempts"] as Map).cast<String, Object?>(),
        ),
        latestError: json["latest_error"] == null
            ? null
            : LatestError.fromJson(
                (json["latest_error"] as Map).cast<String, Object?>(),
              ),
        canceledBy: json["canceled_by"] == null
            ? null
            : Actor.fromJson(
                (json["canceled_by"] as Map).cast<String, Object?>(),
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
        uploadingAt: json["uploading_at"] == null
            ? null
            : decodeDateTime(json["uploading_at"]),
        fulfilledAt: json["fulfilled_at"] == null
            ? null
            : decodeDateTime(json["fulfilled_at"]),
        expiredAt: json["expired_at"] == null
            ? null
            : decodeDateTime(json["expired_at"]),
        canceledAt: json["canceled_at"] == null
            ? null
            : decodeDateTime(json["canceled_at"]),
        attempt: json["attempt"] == null
            ? null
            : Attempt.fromJson(
                (json["attempt"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "purpose": encodeValue(purpose),
        "status": encodeValue(status),
        "active": encodeValue(active),
        if (fileId != null) "file_id": encodeValue(fileId),
        if (uploadUrl != null) "upload_url": encodeValue(uploadUrl),
        "constraints": encodeValue(constraints),
        "display": encodeValue(display),
        "subject": encodeValue(subject),
        "recipient": encodeValue(recipient),
        "resource": encodeValue(resource),
        "requester": encodeValue(requester),
        "attempts": encodeValue(attempts),
        if (latestError != null) "latest_error": encodeValue(latestError),
        if (canceledBy != null) "canceled_by": encodeValue(canceledBy),
        if (customData != null) "custom_data": encodeValue(customData),
        if (metadata != null) "metadata": encodeValue(metadata),
        "created_at": encodeValue(createdAt),
        "updated_at": encodeValue(updatedAt),
        "expires_at": encodeValue(expiresAt),
        if (uploadingAt != null) "uploading_at": encodeValue(uploadingAt),
        if (fulfilledAt != null) "fulfilled_at": encodeValue(fulfilledAt),
        if (expiredAt != null) "expired_at": encodeValue(expiredAt),
        if (canceledAt != null) "canceled_at": encodeValue(canceledAt),
        if (attempt != null) "attempt": encodeValue(attempt),
      };
}
