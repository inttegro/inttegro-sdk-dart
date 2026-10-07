part of '../../balance_transaction.dart';

/// The current lifecycle state of a balance-transaction allocation.
final class AllocationStatus implements InttegroValue {
  final String value;
  const AllocationStatus(this.value);
  factory AllocationStatus.fromJson(Object? json) =>
      AllocationStatus(json as String);
  static const pending = AllocationStatus("pending");
  static const completed = AllocationStatus("completed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AllocationStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
