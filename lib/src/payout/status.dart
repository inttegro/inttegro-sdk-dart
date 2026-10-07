part of '../../payout.dart';

/// The current scheduling and execution state of a [Payout].
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const initialized = Status("initialized");
  static const scheduled = Status("scheduled");
  static const processing = Status("processing");
  static const executing = Status("executing");
  static const succeeded = Status("succeeded");
  static const failed = Status("failed");
  static const canceled = Status("canceled");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Status && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
