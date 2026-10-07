part of '../../../inttegro.dart';

/// A typed `PayoutStatus` value used by the Inttegro API.
final class PayoutStatus implements _InttegroValue {
  final String value;
  const PayoutStatus(this.value);
  factory PayoutStatus.fromJson(Object? json) => PayoutStatus(json as String);
  static const initialized = PayoutStatus("initialized");
  static const scheduled = PayoutStatus("scheduled");
  static const processing = PayoutStatus("processing");
  static const executing = PayoutStatus("executing");
  static const succeeded = PayoutStatus("succeeded");
  static const failed = PayoutStatus("failed");
  static const canceled = PayoutStatus("canceled");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PayoutStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
