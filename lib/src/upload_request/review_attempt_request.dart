part of '../../upload_request.dart';

sealed class ReviewAttemptRequest implements InttegroValue {
  const ReviewAttemptRequest();
  factory ReviewAttemptRequest.fromJson(Object? json) {
    try {
      return ReviewByIDRequestVariant(
        ReviewAttemptByIDRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ReviewByOrdinalRequestVariant(
        ReviewAttemptByOrdinalRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException(
      'Unsupported ReviewAttemptRequest value',
    );
  }
}
