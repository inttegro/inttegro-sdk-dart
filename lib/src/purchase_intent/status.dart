part of '../../purchase_intent.dart';

/// The current availability and usage state of a [PurchaseIntent].
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const active = Status("active");
  static const expired = Status("expired");
  static const inactive = Status("inactive");
  static const used = Status("used");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Status && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
