part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileLatestError implements _InttegroValue {
  final String? code;
  final String? message;
  final bool? retryable;
  final DateTime? at;
  const FileLatestError({this.code, this.message, this.retryable, this.at});
  factory FileLatestError.fromJson(Map<String, Object?> json) =>
      FileLatestError(
        code: json["code"] == null ? null : json["code"] as String,
        message: json["message"] == null ? null : json["message"] as String,
        retryable: json["retryable"] == null ? null : json["retryable"] as bool,
        at: json["at"] == null ? null : _decodeDateTime(json["at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (code != null) "code": _encodeValue(code),
        if (message != null) "message": _encodeValue(message),
        if (retryable != null) "retryable": _encodeValue(retryable),
        if (at != null) "at": _encodeValue(at),
      };
}
