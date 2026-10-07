part of '../../payout.dart';

/// Identifies the payout to retrieve.
///
/// Carries [payoutId].
final class LookupRequest implements InttegroValue {
  final String payoutId;
  const LookupRequest({required this.payoutId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(payoutId: json["payout_id"] as String);
  @override
  Map<String, Object?> toJson() => {"payout_id": encodeValue(payoutId)};
}
