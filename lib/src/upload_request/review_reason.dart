part of '../../upload_request.dart';

/// One structured reason supporting an upload review decision.
///
/// Exposes [code], [message], and [param].
final class ReviewReason implements InttegroValue {
  final String code;
  final String message;
  final String? param;
  const ReviewReason({
    required this.code,
    required this.message,
    this.param,
  });
  factory ReviewReason.fromJson(Map<String, Object?> json) => ReviewReason(
        code: json["code"] as String,
        message: json["message"] as String,
        param: json["param"] == null ? null : json["param"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "code": encodeValue(code),
        "message": encodeValue(message),
        if (param != null) "param": encodeValue(param),
      };
}
