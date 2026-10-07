part of '../../balance_transaction.dart';

/// The resource type that consumes part of a balance transaction.
final class AllocationType implements InttegroValue {
  final String value;
  const AllocationType(this.value);
  factory AllocationType.fromJson(Object? json) =>
      AllocationType(json as String);
  static const payout = AllocationType("payout");
  static const refund = AllocationType("refund");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AllocationType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
