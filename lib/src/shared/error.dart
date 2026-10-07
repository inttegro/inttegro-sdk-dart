part of '../../shared.dart';

/// Structured API error details shared across resource responses.
///
/// Exposes [message], [fixCode], [detail], and [cause], among other contract
/// fields.
final class Error implements InttegroValue {
  final String? message;
  final String? fixCode;
  final String? detail;
  final String? cause;
  final String type;
  final String code;
  final String url;
  const Error({
    this.message,
    this.fixCode,
    this.detail,
    this.cause,
    required this.type,
    required this.code,
    required this.url,
  });
  factory Error.fromJson(Map<String, Object?> json) => Error(
        message: json["message"] == null ? null : json["message"] as String,
        fixCode: json["fix_code"] == null ? null : json["fix_code"] as String,
        detail: json["detail"] == null ? null : json["detail"] as String,
        cause: json["cause"] == null ? null : json["cause"] as String,
        type: json["type"] as String,
        code: json["code"] as String,
        url: json["url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (message != null) "message": encodeValue(message),
        if (fixCode != null) "fix_code": encodeValue(fixCode),
        if (detail != null) "detail": encodeValue(detail),
        if (cause != null) "cause": encodeValue(cause),
        "type": encodeValue(type),
        "code": encodeValue(code),
        "url": encodeValue(url),
      };
}
