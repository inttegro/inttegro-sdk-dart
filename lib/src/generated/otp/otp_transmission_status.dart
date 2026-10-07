part of '../../../inttegro.dart';

/// A typed `OTPTransmissionStatus` value used by the Inttegro API.
final class OTPTransmissionStatus implements _InttegroValue {
  final String value;
  const OTPTransmissionStatus(this.value);
  factory OTPTransmissionStatus.fromJson(Object? json) =>
      OTPTransmissionStatus(json as String);
  static const delivered = OTPTransmissionStatus("delivered");
  static const failed = OTPTransmissionStatus("failed");
  static const submitted = OTPTransmissionStatus("submitted");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OTPTransmissionStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
