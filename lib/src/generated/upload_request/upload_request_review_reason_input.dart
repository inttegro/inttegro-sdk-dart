part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UploadRequestReviewReasonInput implements _InttegroValue {
  final String? param;
  final String code;
  final String message;
  const UploadRequestReviewReasonInput({
    this.param,
    required this.code,
    required this.message,
  });
  factory UploadRequestReviewReasonInput.fromJson(Map<String, Object?> json) =>
      UploadRequestReviewReasonInput(
        param: json["param"] == null ? null : json["param"] as String,
        code: json["code"] as String,
        message: json["message"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (param != null) "param": _encodeValue(param),
        "code": _encodeValue(code),
        "message": _encodeValue(message),
      };
}
