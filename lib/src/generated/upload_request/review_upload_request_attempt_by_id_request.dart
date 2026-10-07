part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ReviewUploadRequestAttemptByIDRequest implements _InttegroValue {
  final String? publicMessage;
  final List<UploadRequestReviewReasonInput>? reasons;
  final String attemptId;
  final UploadReviewDecision decision;
  final String id;
  const ReviewUploadRequestAttemptByIDRequest({
    this.publicMessage,
    this.reasons,
    required this.attemptId,
    required this.decision,
    required this.id,
  });
  factory ReviewUploadRequestAttemptByIDRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      ReviewUploadRequestAttemptByIDRequest(
        publicMessage: json["public_message"] == null
            ? null
            : json["public_message"] as String,
        reasons: json["reasons"] == null
            ? null
            : (json["reasons"] as List)
                .map(
                  (item) => UploadRequestReviewReasonInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        attemptId: json["attempt_id"] as String,
        decision: UploadReviewDecision.fromJson(json["decision"]),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (publicMessage != null)
          "public_message": _encodeValue(publicMessage),
        if (reasons != null) "reasons": _encodeValue(reasons),
        "attempt_id": _encodeValue(attemptId),
        "decision": _encodeValue(decision),
        "id": _encodeValue(id),
      };
}
