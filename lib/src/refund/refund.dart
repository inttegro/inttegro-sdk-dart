part of '../../refund.dart';

/// A refund against an order, including its reason, line items, and settlement.
///
/// [status] and the lifecycle timestamps describe processing progress;
/// [settlement] identifies how the refunded value is returned.
final class Refund implements InttegroValue {
  final DateTime? canceledAt;
  final DateTime createdAt;
  final core.CustomData? customData;
  final DateTime? failedAt;
  final String id;
  final List<LineItem> lineItems;
  final String orderId;
  final DateTime? processingAt;
  final Reason reason;
  final String? reasonDetails;
  final String? reference;
  final Settlement settlement;
  final Status status;
  final DateTime? succeededAt;
  final inttegro_money.Amount total;
  const Refund({
    this.canceledAt,
    required this.createdAt,
    this.customData,
    this.failedAt,
    required this.id,
    required this.lineItems,
    required this.orderId,
    this.processingAt,
    required this.reason,
    this.reasonDetails,
    this.reference,
    required this.settlement,
    required this.status,
    this.succeededAt,
    required this.total,
  });
  factory Refund.fromJson(Map<String, Object?> json) => Refund(
        canceledAt: json["canceled_at"] == null
            ? null
            : decodeDateTime(json["canceled_at"]),
        createdAt: decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        failedAt: json["failed_at"] == null
            ? null
            : decodeDateTime(json["failed_at"]),
        id: json["id"] as String,
        lineItems: (json["line_items"] as List)
            .map(
              (item) =>
                  LineItem.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
        orderId: json["order_id"] as String,
        processingAt: json["processing_at"] == null
            ? null
            : decodeDateTime(json["processing_at"]),
        reason: Reason.fromJson(json["reason"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        settlement: Settlement.fromJson(json["settlement"]),
        status: Status.fromJson(json["status"]),
        succeededAt: json["succeeded_at"] == null
            ? null
            : decodeDateTime(json["succeeded_at"]),
        total: inttegro_money.Amount.fromJson(
            (json["total"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        if (canceledAt != null) "canceled_at": encodeValue(canceledAt),
        "created_at": encodeValue(createdAt),
        if (customData != null) "custom_data": encodeValue(customData),
        if (failedAt != null) "failed_at": encodeValue(failedAt),
        "id": encodeValue(id),
        "line_items": encodeValue(lineItems),
        "order_id": encodeValue(orderId),
        if (processingAt != null) "processing_at": encodeValue(processingAt),
        "reason": encodeValue(reason),
        if (reasonDetails != null) "reason_details": encodeValue(reasonDetails),
        if (reference != null) "reference": encodeValue(reference),
        "settlement": encodeValue(settlement),
        "status": encodeValue(status),
        if (succeededAt != null) "succeeded_at": encodeValue(succeededAt),
        "total": encodeValue(total),
      };
}
