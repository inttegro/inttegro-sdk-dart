part of '../../upload_request.dart';

final class ReviewByOrdinalRequestVariant extends ReviewAttemptRequest {
  final ReviewAttemptByOrdinalRequest value;
  const ReviewByOrdinalRequestVariant(
    this.value,
  );
  @override
  Object? toJson() => encodeValue(value);
}
