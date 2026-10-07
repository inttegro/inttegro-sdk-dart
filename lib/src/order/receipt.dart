part of '../../order.dart';

/// Receipt issued for a paid order payment.
final class Receipt implements InttegroValue {
  final ReceiptFormat format;
  final String? number;
  final Map<String, Object?>? deliverySummary;
  const Receipt({
    required this.format,
    this.number,
    this.deliverySummary,
  });
  factory Receipt.fromJson(Map<String, Object?> json) => Receipt(
        format: ReceiptFormat.fromJson(
          (json["format"] as Map).cast<String, Object?>(),
        ),
        number: json["number"] == null ? null : json["number"] as String,
        deliverySummary: json["delivery_summary"] == null
            ? null
            : (json["delivery_summary"] as Map).cast<String, Object?>(),
      );
  @override
  Map<String, Object?> toJson() => {
        "format": encodeValue(format),
        if (number != null) "number": encodeValue(number),
        if (deliverySummary != null)
          "delivery_summary": encodeValue(deliverySummary),
      };
}
