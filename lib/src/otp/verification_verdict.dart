part of '../../otp.dart';

/// Whether an OTP verification attempt passed or failed.
final class VerificationVerdict implements InttegroValue {
  final String value;
  const VerificationVerdict(this.value);
  factory VerificationVerdict.fromJson(Object? json) =>
      VerificationVerdict(json as String);
  static const fail = VerificationVerdict("fail");
  static const pass = VerificationVerdict("pass");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is VerificationVerdict && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
