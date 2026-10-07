part of '../../refund.dart';

/// Parameters for creating a refund.
///
/// Carries [customData], [reasonDetails], [reference], and [requestMeta],
/// among other supported fields.
final class CreateRequest implements InttegroValue {
  final core.CustomData? customData;
  final String? reasonDetails;
  final String? reference;
  final RequestMetaInput? requestMeta;
  final List<CreateLineItemInput> lineItems;
  final String orderId;
  final Reason reason;
  const CreateRequest({
    this.customData,
    this.reasonDetails,
    this.reference,
    this.requestMeta,
    required this.lineItems,
    required this.orderId,
    required this.reason,
  });
  factory CreateRequest.fromJson(Map<String, Object?> json) => CreateRequest(
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        requestMeta: json["request_meta"] == null
            ? null
            : RequestMetaInput.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        lineItems: (json["line_items"] as List)
            .map(
              (item) => CreateLineItemInput.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        orderId: json["order_id"] as String,
        reason: Reason.fromJson(json["reason"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": encodeValue(customData),
        if (reasonDetails != null) "reason_details": encodeValue(reasonDetails),
        if (reference != null) "reference": encodeValue(reference),
        if (requestMeta != null) "request_meta": encodeValue(requestMeta),
        "line_items": encodeValue(lineItems),
        "order_id": encodeValue(orderId),
        "reason": encodeValue(reason),
      };
}
