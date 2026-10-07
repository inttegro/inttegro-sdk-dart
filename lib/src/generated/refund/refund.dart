part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Refund implements _InttegroValue {
  final DateTime? canceledAt;
  final DateTime createdAt;
  final CustomData? customData;
  final DateTime? failedAt;
  final String id;
  final List<RefundLineItem> lineItems;
  final String orderId;
  final DateTime? processingAt;
  final RefundReason reason;
  final String? reasonDetails;
  final String? reference;
  final RefundSettlement settlement;
  final RefundStatus status;
  final DateTime? succeededAt;
  final Amount total;
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
            : _decodeDateTime(json["canceled_at"]),
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        id: json["id"] as String,
        lineItems: (json["line_items"] as List)
            .map(
              (item) => RefundLineItem.fromJson(
                  (item as Map).cast<String, Object?>()),
            )
            .toList(),
        orderId: json["order_id"] as String,
        processingAt: json["processing_at"] == null
            ? null
            : _decodeDateTime(json["processing_at"]),
        reason: RefundReason.fromJson(json["reason"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        settlement: RefundSettlement.fromJson(json["settlement"]),
        status: RefundStatus.fromJson(json["status"]),
        succeededAt: json["succeeded_at"] == null
            ? null
            : _decodeDateTime(json["succeeded_at"]),
        total: Amount.fromJson((json["total"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        "id": _encodeValue(id),
        "line_items": _encodeValue(lineItems),
        "order_id": _encodeValue(orderId),
        if (processingAt != null) "processing_at": _encodeValue(processingAt),
        "reason": _encodeValue(reason),
        if (reasonDetails != null)
          "reason_details": _encodeValue(reasonDetails),
        if (reference != null) "reference": _encodeValue(reference),
        "settlement": _encodeValue(settlement),
        "status": _encodeValue(status),
        if (succeededAt != null) "succeeded_at": _encodeValue(succeededAt),
        "total": _encodeValue(total),
      };
}
