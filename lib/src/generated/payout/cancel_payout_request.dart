part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CancelPayoutRequest implements _InttegroValue {
  final String payoutId;
  const CancelPayoutRequest({required this.payoutId});
  factory CancelPayoutRequest.fromJson(Map<String, Object?> json) =>
      CancelPayoutRequest(payoutId: json["payout_id"] as String);
  @override
  Map<String, Object?> toJson() => {"payout_id": _encodeValue(payoutId)};
}
