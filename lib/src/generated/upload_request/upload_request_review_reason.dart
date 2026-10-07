part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UploadRequestReviewReason implements _InttegroValue {
  final String code;
  final String message;
  final String? param;
  const UploadRequestReviewReason({
    required this.code,
    required this.message,
    this.param,
  });
  factory UploadRequestReviewReason.fromJson(Map<String, Object?> json) =>
      UploadRequestReviewReason(
        code: json["code"] as String,
        message: json["message"] as String,
        param: json["param"] == null ? null : json["param"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "code": _encodeValue(code),
        "message": _encodeValue(message),
        if (param != null) "param": _encodeValue(param),
      };
}
