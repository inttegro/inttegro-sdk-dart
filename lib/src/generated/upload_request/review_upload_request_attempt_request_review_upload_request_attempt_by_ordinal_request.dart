part of '../../../inttegro.dart';

final class ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByOrdinalRequest
    extends ReviewUploadRequestAttemptRequest {
  final ReviewUploadRequestAttemptByOrdinalRequest value;
  const ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByOrdinalRequest(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}
