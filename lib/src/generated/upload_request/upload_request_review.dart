part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UploadRequestReview implements _InttegroValue {
  final DateTime createdAt;
  final UploadReviewDecision decision;
  final String? fileId;
  final String? publicMessage;
  final List<UploadRequestReviewReason>? reasons;
  final DateTime reviewedAt;
  final UploadReviewType type;
  const UploadRequestReview({
    required this.createdAt,
    required this.decision,
    this.fileId,
    this.publicMessage,
    this.reasons,
    required this.reviewedAt,
    required this.type,
  });
  factory UploadRequestReview.fromJson(Map<String, Object?> json) =>
      UploadRequestReview(
        createdAt: _decodeDateTime(json["created_at"]),
        decision: UploadReviewDecision.fromJson(json["decision"]),
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        publicMessage: json["public_message"] == null
            ? null
            : json["public_message"] as String,
        reasons: json["reasons"] == null
            ? null
            : (json["reasons"] as List)
                .map(
                  (item) => UploadRequestReviewReason.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        reviewedAt: _decodeDateTime(json["reviewed_at"]),
        type: UploadReviewType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        "decision": _encodeValue(decision),
        if (fileId != null) "file_id": _encodeValue(fileId),
        if (publicMessage != null)
          "public_message": _encodeValue(publicMessage),
        if (reasons != null) "reasons": _encodeValue(reasons),
        "reviewed_at": _encodeValue(reviewedAt),
        "type": _encodeValue(type),
      };
}
