part of '../../payout.dart';

/// Identifies the payout to cancel and supplies any cancellation options.
///
/// Carries [payoutId].
final class CancelRequest implements InttegroValue {
  final String payoutId;
  const CancelRequest({required this.payoutId});
  factory CancelRequest.fromJson(Map<String, Object?> json) =>
      CancelRequest(payoutId: json["payout_id"] as String);
  @override
  Map<String, Object?> toJson() => {"payout_id": encodeValue(payoutId)};
}
