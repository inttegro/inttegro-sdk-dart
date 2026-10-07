part of '../../upload_request.dart';

/// Reviews an upload attempt selected by its ordinal.
///
/// Carries [publicMessage], [reasons], [attemptOrdinal], and [decision], among
/// other supported fields.
final class ReviewAttemptByOrdinalRequest implements InttegroValue {
  final String? publicMessage;
  final List<ReviewReasonInput>? reasons;
  final int attemptOrdinal;
  final UploadReviewDecision decision;
  final String id;
  const ReviewAttemptByOrdinalRequest({
    this.publicMessage,
    this.reasons,
    required this.attemptOrdinal,
    required this.decision,
    required this.id,
  });
  factory ReviewAttemptByOrdinalRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      ReviewAttemptByOrdinalRequest(
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
        attemptOrdinal: (json["attempt_ordinal"] as num).toInt(),
        decision: UploadReviewDecision.fromJson(json["decision"]),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (publicMessage != null) "public_message": encodeValue(publicMessage),
        if (reasons != null) "reasons": encodeValue(reasons),
        "attempt_ordinal": encodeValue(attemptOrdinal),
        "decision": encodeValue(decision),
        "id": encodeValue(id),
      };
}
