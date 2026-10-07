part of '../../../inttegro.dart';

/// A typed `RefundStatus` value used by the Inttegro API.
final class RefundStatus implements _InttegroValue {
  final String value;
  const RefundStatus(this.value);
  factory RefundStatus.fromJson(Object? json) => RefundStatus(json as String);
  static const canceled = RefundStatus("canceled");
  static const failed = RefundStatus("failed");
  static const pending = RefundStatus("pending");
  static const processing = RefundStatus("processing");
  static const succeeded = RefundStatus("succeeded");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is RefundStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
