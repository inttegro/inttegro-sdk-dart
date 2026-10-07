part of '../../refund.dart';

/// The current processing state of a [Refund].
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const canceled = Status("canceled");
  static const failed = Status("failed");
  static const pending = Status("pending");
  static const processing = Status("processing");
  static const succeeded = Status("succeeded");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Status && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
