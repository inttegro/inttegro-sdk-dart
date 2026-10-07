part of '../../../inttegro.dart';

sealed class ReviewUploadRequestAttemptRequest implements _InttegroValue {
  const ReviewUploadRequestAttemptRequest();
  factory ReviewUploadRequestAttemptRequest.fromJson(Object? json) {
    try {
      return ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByIDRequest(
        ReviewUploadRequestAttemptByIDRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByOrdinalRequest(
        ReviewUploadRequestAttemptByOrdinalRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException(
      'Unsupported ReviewUploadRequestAttemptRequest value',
    );
  }
}
