part of '../../../inttegro.dart';

/// A typed `PayoutFailureReason` value used by the Inttegro API.
final class PayoutFailureReason implements _InttegroValue {
  final String value;
  const PayoutFailureReason(this.value);
  factory PayoutFailureReason.fromJson(Object? json) =>
      PayoutFailureReason(json as String);
  static const providerDeclined = PayoutFailureReason("provider_declined");
  static const deliveryFailed = PayoutFailureReason("delivery_failed");
  static const temporarilyUnavailable =
      PayoutFailureReason("temporarily_unavailable");
  static const unknown = PayoutFailureReason("unknown");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PayoutFailureReason && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
