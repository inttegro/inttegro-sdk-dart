part of '../../payout.dart';

/// An empty request for disabling automatic payouts.
final class DisableAutomaticRequest implements InttegroValue {
  const DisableAutomaticRequest();
  factory DisableAutomaticRequest.fromJson(Map<String, Object?> json) =>
      const DisableAutomaticRequest();
  @override
  Map<String, Object?> toJson() => {};
}
