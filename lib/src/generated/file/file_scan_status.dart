part of '../../../inttegro.dart';

/// A typed `FileScanStatus` value used by the Inttegro API.
final class FileScanStatus implements _InttegroValue {
  final String value;
  const FileScanStatus(this.value);
  factory FileScanStatus.fromJson(Object? json) =>
      FileScanStatus(json as String);
  static const pending = FileScanStatus("pending");
  static const passed = FileScanStatus("passed");
  static const failed = FileScanStatus("failed");
  static const skipped = FileScanStatus("skipped");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileScanStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
