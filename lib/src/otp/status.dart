part of '../../otp.dart';

/// The current lifecycle state of an OTP [Transaction].
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const canceled = Status("canceled");
  static const expired = Status("expired");
  static const pending = Status("pending");
  static const pendingDelivery = Status("pending_delivery");
  static const pendingVerification = Status("pending_verification");
  static const verified = Status("verified");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Status && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
