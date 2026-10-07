part of '../../file.dart';

/// The current result of a file's safety scan.
final class ScanStatus implements InttegroValue {
  final String value;
  const ScanStatus(this.value);
  factory ScanStatus.fromJson(Object? json) => ScanStatus(json as String);
  static const pending = ScanStatus("pending");
  static const passed = ScanStatus("passed");
  static const failed = ScanStatus("failed");
  static const skipped = ScanStatus("skipped");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is ScanStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
