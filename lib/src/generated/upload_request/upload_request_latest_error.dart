part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UploadRequestLatestError implements _InttegroValue {
  final String? code;
  final String? param;
  final String? message;
  final bool? retryable;
  final DateTime? at;
  const UploadRequestLatestError({
    this.code,
    this.param,
    this.message,
    this.retryable,
    this.at,
  });
  factory UploadRequestLatestError.fromJson(Map<String, Object?> json) =>
      UploadRequestLatestError(
        code: json["code"] == null ? null : json["code"] as String,
        param: json["param"] == null ? null : json["param"] as String,
        message: json["message"] == null ? null : json["message"] as String,
        retryable: json["retryable"] == null ? null : json["retryable"] as bool,
        at: json["at"] == null ? null : _decodeDateTime(json["at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (code != null) "code": _encodeValue(code),
        if (param != null) "param": _encodeValue(param),
        if (message != null) "message": _encodeValue(message),
        if (retryable != null) "retryable": _encodeValue(retryable),
        if (at != null) "at": _encodeValue(at),
      };
}
