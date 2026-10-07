part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupRefundRequest implements _InttegroValue {
  final String refundId;
  const LookupRefundRequest({required this.refundId});
  factory LookupRefundRequest.fromJson(Map<String, Object?> json) =>
      LookupRefundRequest(refundId: json["refund_id"] as String);
  @override
  Map<String, Object?> toJson() => {"refund_id": _encodeValue(refundId)};
}
