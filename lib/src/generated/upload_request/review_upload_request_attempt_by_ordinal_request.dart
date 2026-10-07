part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ReviewUploadRequestAttemptByOrdinalRequest
    implements _InttegroValue {
  final String? publicMessage;
  final List<UploadRequestReviewReasonInput>? reasons;
  final int attemptOrdinal;
  final UploadReviewDecision decision;
  final String id;
  const ReviewUploadRequestAttemptByOrdinalRequest({
    this.publicMessage,
    this.reasons,
    required this.attemptOrdinal,
    required this.decision,
    required this.id,
  });
  factory ReviewUploadRequestAttemptByOrdinalRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      ReviewUploadRequestAttemptByOrdinalRequest(
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
        attemptOrdinal: (json["attempt_ordinal"] as num).toInt(),
        decision: UploadReviewDecision.fromJson(json["decision"]),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (publicMessage != null)
          "public_message": _encodeValue(publicMessage),
        if (reasons != null) "reasons": _encodeValue(reasons),
        "attempt_ordinal": _encodeValue(attemptOrdinal),
        "decision": _encodeValue(decision),
        "id": _encodeValue(id),
      };
}
