part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupPayoutRequest implements _InttegroValue {
  final String payoutId;
  const LookupPayoutRequest({required this.payoutId});
  factory LookupPayoutRequest.fromJson(Map<String, Object?> json) =>
      LookupPayoutRequest(payoutId: json["payout_id"] as String);
  @override
  Map<String, Object?> toJson() => {"payout_id": _encodeValue(payoutId)};
}
