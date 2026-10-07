part of '../../upload_request.dart';

final class ReviewByIDRequestVariant extends ReviewAttemptRequest {
  final ReviewAttemptByIDRequest value;
  const ReviewByIDRequestVariant(
    this.value,
  );
  @override
  Object? toJson() => encodeValue(value);
}
