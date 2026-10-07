part of '../../upload_request.dart';

/// Review reason fields accepted by the upload request API.
///
/// Carries [param], [code], and [message].
final class ReviewReasonInput implements InttegroValue {
  final String? param;
  final String code;
  final String message;
  const ReviewReasonInput({
    this.param,
    required this.code,
    required this.message,
  });
  factory ReviewReasonInput.fromJson(Map<String, Object?> json) =>
      ReviewReasonInput(
        param: json["param"] == null ? null : json["param"] as String,
        code: json["code"] as String,
        message: json["message"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (param != null) "param": encodeValue(param),
        "code": encodeValue(code),
        "message": encodeValue(message),
      };
}
