part of '../../payment.dart';

/// Public payment error information.
final class Error implements InttegroValue {
  final String message;
  const Error({required this.message});
  factory Error.fromJson(Map<String, Object?> json) =>
      Error(message: json["message"] as String);
  @override
  Map<String, Object?> toJson() => {"message": encodeValue(message)};
}
