part of '../../upload_request.dart';

/// Reviews an upload attempt selected by its identifier.
///
/// Carries [publicMessage], [reasons], [attemptId], and [decision], among
/// other supported fields.
final class ReviewAttemptByIDRequest implements InttegroValue {
  final String? publicMessage;
  final List<ReviewReasonInput>? reasons;
  final String attemptId;
  final UploadReviewDecision decision;
  final String id;
  const ReviewAttemptByIDRequest({
    this.publicMessage,
    this.reasons,
    required this.attemptId,
    required this.decision,
    required this.id,
  });
  factory ReviewAttemptByIDRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      ReviewAttemptByIDRequest(
        publicMessage: json["public_message"] == null
            ? null
            : json["public_message"] as String,
        reasons: json["reasons"] == null
            ? null
            : (json["reasons"] as List)
                .map(
                  (item) => ReviewReasonInput.fromJson(
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
        if (publicMessage != null) "public_message": encodeValue(publicMessage),
        if (reasons != null) "reasons": encodeValue(reasons),
        "attempt_id": encodeValue(attemptId),
        "decision": encodeValue(decision),
        "id": encodeValue(id),
      };
}
