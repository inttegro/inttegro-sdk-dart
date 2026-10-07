part of '../../payment.dart';

/// The lifecycle state of a [Payment].
///
/// Compare values with constants such as [Status.requiresAction] and
/// [Status.paid]. The public constructor preserves forward compatibility with
/// values introduced by the API after this SDK version.
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const initiated = Status("initiated");
  static const requiresAction = Status("requires_action");
  static const overdue = Status("overdue");
  static const executed = Status("executed");
  static const paid = Status("paid");
  static const canceled = Status("canceled");
  static const expired = Status("expired");
  static const failed = Status("failed");
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
