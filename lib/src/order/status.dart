part of '../../order.dart';

/// The current lifecycle state of an [Order].
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const preparing = Status("preparing");
  static const requiresPayment = Status("requires_payment");
  static const paid = Status("paid");
  static const completed = Status("completed");
  static const canceled = Status("canceled");
  static const expired = Status("expired");
  static const unknown = Status("unknown");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Status && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
