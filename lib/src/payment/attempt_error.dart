part of '../../payment.dart';

/// Public error information for a payment attempt.
final class AttemptError implements InttegroValue {
  final String message;
  const AttemptError({required this.message});
  factory AttemptError.fromJson(Map<String, Object?> json) =>
      AttemptError(message: json["message"] as String);
  @override
  Map<String, Object?> toJson() => {"message": encodeValue(message)};
}
