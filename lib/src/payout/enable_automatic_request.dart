part of '../../payout.dart';

/// An empty request for enabling automatic payouts.
final class EnableAutomaticRequest implements InttegroValue {
  const EnableAutomaticRequest();
  factory EnableAutomaticRequest.fromJson(Map<String, Object?> json) =>
      const EnableAutomaticRequest();
  @override
  Map<String, Object?> toJson() => {};
}
