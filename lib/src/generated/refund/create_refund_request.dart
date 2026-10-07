part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateRefundRequest implements _InttegroValue {
  final CustomData? customData;
  final String? reasonDetails;
  final String? reference;
  final RefundRequestMetaInput? requestMeta;
  final List<CreateRefundLineItemInput> lineItems;
  final String orderId;
  final RefundReason reason;
  const CreateRefundRequest({
    this.customData,
    this.reasonDetails,
    this.reference,
    this.requestMeta,
    required this.lineItems,
    required this.orderId,
    required this.reason,
  });
  factory CreateRefundRequest.fromJson(Map<String, Object?> json) =>
      CreateRefundRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        requestMeta: json["request_meta"] == null
            ? null
            : RefundRequestMetaInput.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        lineItems: (json["line_items"] as List)
            .map(
              (item) => CreateRefundLineItemInput.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        orderId: json["order_id"] as String,
        reason: RefundReason.fromJson(json["reason"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (reasonDetails != null)
          "reason_details": _encodeValue(reasonDetails),
        if (reference != null) "reference": _encodeValue(reference),
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        "line_items": _encodeValue(lineItems),
        "order_id": _encodeValue(orderId),
        "reason": _encodeValue(reason),
      };
}
