part of '../../upload_request.dart';

/// One file-upload attempt and its validation or review outcome.
///
/// Exposes [attemptedAt], [contentType], [declaredSize], and [error], among
/// other contract fields.
final class Attempt implements InttegroValue {
  final DateTime attemptedAt;
  final String? contentType;
  final int? declaredSize;
  final LatestError? error;
  final DateTime? failedAt;
  final String? fileId;
  final String? filename;
  final String id;
  final int ordinal;
  final Review? review;
  final String status;
  final DateTime? succeededAt;
  final String uploadRequestId;
  const Attempt({
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
  factory Attempt.fromJson(Map<String, Object?> json) => Attempt(
        attemptedAt: decodeDateTime(json["attempted_at"]),
        contentType: json["content_type"] == null
            ? null
            : json["content_type"] as String,
        declaredSize: json["declared_size"] == null
            ? null
            : (json["declared_size"] as num).toInt(),
        error: json["error"] == null
            ? null
            : LatestError.fromJson(
                (json["error"] as Map).cast<String, Object?>(),
              ),
        failedAt: json["failed_at"] == null
            ? null
            : decodeDateTime(json["failed_at"]),
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        filename: json["filename"] == null ? null : json["filename"] as String,
        id: json["id"] as String,
        ordinal: (json["ordinal"] as num).toInt(),
        review: json["review"] == null
            ? null
            : Review.fromJson(
                (json["review"] as Map).cast<String, Object?>(),
              ),
        status: json["status"] as String,
        succeededAt: json["succeeded_at"] == null
            ? null
            : decodeDateTime(json["succeeded_at"]),
        uploadRequestId: json["upload_request_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "attempted_at": encodeValue(attemptedAt),
        if (contentType != null) "content_type": encodeValue(contentType),
        if (declaredSize != null) "declared_size": encodeValue(declaredSize),
        if (error != null) "error": encodeValue(error),
        if (failedAt != null) "failed_at": encodeValue(failedAt),
        if (fileId != null) "file_id": encodeValue(fileId),
        if (filename != null) "filename": encodeValue(filename),
        "id": encodeValue(id),
        "ordinal": encodeValue(ordinal),
        if (review != null) "review": encodeValue(review),
        "status": encodeValue(status),
        if (succeededAt != null) "succeeded_at": encodeValue(succeededAt),
        "upload_request_id": encodeValue(uploadRequestId),
      };
}
