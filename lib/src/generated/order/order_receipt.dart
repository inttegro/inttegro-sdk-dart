part of '../../../inttegro.dart';

/// Receipt issued for a paid order payment.
final class OrderReceipt implements _InttegroValue {
  final OrderReceiptFormat format;
  final String? number;
  final Map<String, Object?>? deliverySummary;
  const OrderReceipt({
    required this.format,
    this.number,
    this.deliverySummary,
  });
  factory OrderReceipt.fromJson(Map<String, Object?> json) => OrderReceipt(
        format: OrderReceiptFormat.fromJson(
          (json["format"] as Map).cast<String, Object?>(),
        ),
        number: json["number"] == null ? null : json["number"] as String,
        deliverySummary: json["delivery_summary"] == null
            ? null
            : (json["delivery_summary"] as Map).cast<String, Object?>(),
      );
  @override
  Map<String, Object?> toJson() => {
        "format": _encodeValue(format),
        if (number != null) "number": _encodeValue(number),
        if (deliverySummary != null)
          "delivery_summary": _encodeValue(deliverySummary),
      };
}
