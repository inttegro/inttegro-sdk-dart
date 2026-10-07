part of '../../otp.dart';

/// The provider delivery state of an OTP transmission.
final class TransmissionStatus implements InttegroValue {
  final String value;
  const TransmissionStatus(this.value);
  factory TransmissionStatus.fromJson(Object? json) =>
      TransmissionStatus(json as String);
  static const delivered = TransmissionStatus("delivered");
  static const failed = TransmissionStatus("failed");
  static const submitted = TransmissionStatus("submitted");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is TransmissionStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
