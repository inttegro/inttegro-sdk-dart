part of '../../upload_request.dart';

/// The review decision and reasons recorded for an upload attempt.
///
/// Exposes [createdAt], [decision], [fileId], and [publicMessage], among other
/// contract fields.
final class Review implements InttegroValue {
  final DateTime createdAt;
  final UploadReviewDecision decision;
  final String? fileId;
  final String? publicMessage;
  final List<ReviewReason>? reasons;
  final DateTime reviewedAt;
  final UploadReviewType type;
  const Review({
    required this.createdAt,
    required this.decision,
    this.fileId,
    this.publicMessage,
    this.reasons,
    required this.reviewedAt,
    required this.type,
  });
  factory Review.fromJson(Map<String, Object?> json) => Review(
        createdAt: decodeDateTime(json["created_at"]),
        decision: UploadReviewDecision.fromJson(json["decision"]),
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        publicMessage: json["public_message"] == null
            ? null
            : json["public_message"] as String,
        reasons: json["reasons"] == null
            ? null
            : (json["reasons"] as List)
                .map(
                  (item) => ReviewReason.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        reviewedAt: decodeDateTime(json["reviewed_at"]),
        type: UploadReviewType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": encodeValue(createdAt),
        "decision": encodeValue(decision),
        if (fileId != null) "file_id": encodeValue(fileId),
        if (publicMessage != null) "public_message": encodeValue(publicMessage),
        if (reasons != null) "reasons": encodeValue(reasons),
        "reviewed_at": encodeValue(reviewedAt),
        "type": encodeValue(type),
      };
}
