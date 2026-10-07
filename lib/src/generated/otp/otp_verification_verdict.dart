part of '../../../inttegro.dart';

/// A typed `OTPVerificationVerdict` value used by the Inttegro API.
final class OTPVerificationVerdict implements _InttegroValue {
  final String value;
  const OTPVerificationVerdict(this.value);
  factory OTPVerificationVerdict.fromJson(Object? json) =>
      OTPVerificationVerdict(json as String);
  static const fail = OTPVerificationVerdict("fail");
  static const pass = OTPVerificationVerdict("pass");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OTPVerificationVerdict && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
