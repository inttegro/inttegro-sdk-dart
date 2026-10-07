part of '../../file.dart';

/// The latest processing or storage error recorded for a file.
///
/// Exposes [code], [message], [retryable], and [at].
final class LatestError implements InttegroValue {
  final String? code;
  final String? message;
  final bool? retryable;
  final DateTime? at;
  const LatestError({this.code, this.message, this.retryable, this.at});
  factory LatestError.fromJson(Map<String, Object?> json) => LatestError(
        code: json["code"] == null ? null : json["code"] as String,
        message: json["message"] == null ? null : json["message"] as String,
        retryable: json["retryable"] == null ? null : json["retryable"] as bool,
        at: json["at"] == null ? null : decodeDateTime(json["at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (code != null) "code": encodeValue(code),
        if (message != null) "message": encodeValue(message),
        if (retryable != null) "retryable": encodeValue(retryable),
        if (at != null) "at": encodeValue(at),
      };
}
