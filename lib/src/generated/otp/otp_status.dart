part of '../../../inttegro.dart';

/// A typed `OTPStatus` value used by the Inttegro API.
final class OTPStatus implements _InttegroValue {
  final String value;
  const OTPStatus(this.value);
  factory OTPStatus.fromJson(Object? json) => OTPStatus(json as String);
  static const canceled = OTPStatus("canceled");
  static const expired = OTPStatus("expired");
  static const pending = OTPStatus("pending");
  static const pendingDelivery = OTPStatus("pending_delivery");
  static const pendingVerification = OTPStatus("pending_verification");
  static const verified = OTPStatus("verified");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is OTPStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
