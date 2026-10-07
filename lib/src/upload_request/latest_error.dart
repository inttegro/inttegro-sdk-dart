part of '../../upload_request.dart';

/// The latest error recorded while processing an upload request.
///
/// Exposes [code], [param], [message], and [retryable], among other contract
/// fields.
final class LatestError implements InttegroValue {
  final String? code;
  final String? param;
  final String? message;
  final bool? retryable;
  final DateTime? at;
  const LatestError({
    this.code,
    this.param,
    this.message,
    this.retryable,
    this.at,
  });
  factory LatestError.fromJson(Map<String, Object?> json) => LatestError(
        code: json["code"] == null ? null : json["code"] as String,
        param: json["param"] == null ? null : json["param"] as String,
        message: json["message"] == null ? null : json["message"] as String,
        retryable: json["retryable"] == null ? null : json["retryable"] as bool,
        at: json["at"] == null ? null : decodeDateTime(json["at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (code != null) "code": encodeValue(code),
        if (param != null) "param": encodeValue(param),
        if (message != null) "message": encodeValue(message),
        if (retryable != null) "retryable": encodeValue(retryable),
        if (at != null) "at": encodeValue(at),
      };
}
