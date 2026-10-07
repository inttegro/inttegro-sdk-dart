part of '../../upload_request.dart';

/// Configures the attempt limit for an upload request.
///
/// Carries [maxAttempts].
final class AttemptsRequest implements InttegroValue {
  final int? maxAttempts;
  const AttemptsRequest({this.maxAttempts});
  factory AttemptsRequest.fromJson(Map<String, Object?> json) =>
      AttemptsRequest(
        maxAttempts: json["max_attempts"] == null
            ? null
            : (json["max_attempts"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAttempts != null) "max_attempts": encodeValue(maxAttempts),
      };
}
