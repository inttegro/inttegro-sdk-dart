part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UploadRequestAttemptsRequest implements _InttegroValue {
  final int? maxAttempts;
  const UploadRequestAttemptsRequest({this.maxAttempts});
  factory UploadRequestAttemptsRequest.fromJson(Map<String, Object?> json) =>
      UploadRequestAttemptsRequest(
        maxAttempts: json["max_attempts"] == null
            ? null
            : (json["max_attempts"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAttempts != null) "max_attempts": _encodeValue(maxAttempts),
      };
}
