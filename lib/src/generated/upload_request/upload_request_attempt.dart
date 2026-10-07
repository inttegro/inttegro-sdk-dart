part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UploadRequestAttempt implements _InttegroValue {
  final DateTime attemptedAt;
  final String? contentType;
  final int? declaredSize;
  final UploadRequestLatestError? error;
  final DateTime? failedAt;
  final String? fileId;
  final String? filename;
  final String id;
  final int ordinal;
  final UploadRequestReview? review;
  final String status;
  final DateTime? succeededAt;
  final String uploadRequestId;
  const UploadRequestAttempt({
    required this.attemptedAt,
    this.contentType,
    this.declaredSize,
    this.error,
    this.failedAt,
    this.fileId,
    this.filename,
    required this.id,
    required this.ordinal,
    this.review,
    required this.status,
    this.succeededAt,
    required this.uploadRequestId,
  });
  factory UploadRequestAttempt.fromJson(Map<String, Object?> json) =>
      UploadRequestAttempt(
        attemptedAt: _decodeDateTime(json["attempted_at"]),
        contentType: json["content_type"] == null
            ? null
            : json["content_type"] as String,
        declaredSize: json["declared_size"] == null
            ? null
            : (json["declared_size"] as num).toInt(),
        error: json["error"] == null
            ? null
            : UploadRequestLatestError.fromJson(
                (json["error"] as Map).cast<String, Object?>(),
              ),
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        filename: json["filename"] == null ? null : json["filename"] as String,
        id: json["id"] as String,
        ordinal: (json["ordinal"] as num).toInt(),
        review: json["review"] == null
            ? null
            : UploadRequestReview.fromJson(
                (json["review"] as Map).cast<String, Object?>(),
              ),
        status: json["status"] as String,
        succeededAt: json["succeeded_at"] == null
            ? null
            : _decodeDateTime(json["succeeded_at"]),
        uploadRequestId: json["upload_request_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "attempted_at": _encodeValue(attemptedAt),
        if (contentType != null) "content_type": _encodeValue(contentType),
        if (declaredSize != null) "declared_size": _encodeValue(declaredSize),
        if (error != null) "error": _encodeValue(error),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        if (fileId != null) "file_id": _encodeValue(fileId),
        if (filename != null) "filename": _encodeValue(filename),
        "id": _encodeValue(id),
        "ordinal": _encodeValue(ordinal),
        if (review != null) "review": _encodeValue(review),
        "status": _encodeValue(status),
        if (succeededAt != null) "succeeded_at": _encodeValue(succeededAt),
        "upload_request_id": _encodeValue(uploadRequestId),
      };
}
