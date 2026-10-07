part of '../../payout.dart';

/// The caller-safe reason a payout did not complete.
final class FailureReason implements InttegroValue {
  final String value;
  const FailureReason(this.value);
  factory FailureReason.fromJson(Object? json) => FailureReason(json as String);
  static const providerDeclined = FailureReason("provider_declined");
  static const deliveryFailed = FailureReason("delivery_failed");
  static const temporarilyUnavailable =
      FailureReason("temporarily_unavailable");
  static const unknown = FailureReason("unknown");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FailureReason && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
