part of '../../payment.dart';

/// The channel through which payment confirmation is delivered.
final class ConfirmationChannel implements InttegroValue {
  final String value;
  const ConfirmationChannel(this.value);
  factory ConfirmationChannel.fromJson(Object? json) =>
      ConfirmationChannel(json as String);
  static const sms = ConfirmationChannel("sms");
  static const email = ConfirmationChannel("email");
  static const push = ConfirmationChannel("push");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ConfirmationChannel && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
