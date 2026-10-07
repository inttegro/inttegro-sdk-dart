part of '../../payment.dart';

/// The action required to advance a payment.
final class NextActionType implements InttegroValue {
  final String value;
  const NextActionType(this.value);
  factory NextActionType.fromJson(Object? json) =>
      NextActionType(json as String);
  static const confirmPayment = NextActionType("confirm_payment");
  static const execute = NextActionType("execute");
  static const redirect = NextActionType("redirect");
  static const authorizePayment = NextActionType("authorize_payment");
  static const requestConfirmation = NextActionType("request_confirmation");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is NextActionType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
