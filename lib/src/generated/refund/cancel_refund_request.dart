part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CancelRefundRequest implements _InttegroValue {
  final RefundRequestMetaInput? requestMeta;
  final String refundId;
  const CancelRefundRequest({this.requestMeta, required this.refundId});
  factory CancelRefundRequest.fromJson(Map<String, Object?> json) =>
      CancelRefundRequest(
        requestMeta: json["request_meta"] == null
            ? null
            : RefundRequestMetaInput.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        refundId: json["refund_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        "refund_id": _encodeValue(refundId),
      };
}
