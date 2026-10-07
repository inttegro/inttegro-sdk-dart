part of '../../../inttegro.dart';

final class ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByIDRequest
    extends ReviewUploadRequestAttemptRequest {
  final ReviewUploadRequestAttemptByIDRequest value;
  const ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByIDRequest(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}
