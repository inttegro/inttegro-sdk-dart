part of '../../../inttegro.dart';

/// A typed `PurchaseIntentStatus` value used by the Inttegro API.
final class PurchaseIntentStatus implements _InttegroValue {
  final String value;
  const PurchaseIntentStatus(this.value);
  factory PurchaseIntentStatus.fromJson(Object? json) =>
      PurchaseIntentStatus(json as String);
  static const active = PurchaseIntentStatus("active");
  static const expired = PurchaseIntentStatus("expired");
  static const inactive = PurchaseIntentStatus("inactive");
  static const used = PurchaseIntentStatus("used");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PurchaseIntentStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
