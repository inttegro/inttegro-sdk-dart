part of '../../../inttegro.dart';

/// Hosted document formats for a payment receipt.
final class OrderReceiptFormat implements _InttegroValue {
  final OrderDocumentFormat web;
  final OrderDocumentFormat pdf;
  const OrderReceiptFormat({required this.web, required this.pdf});
  factory OrderReceiptFormat.fromJson(Map<String, Object?> json) =>
      OrderReceiptFormat(
        web: OrderDocumentFormat.fromJson(
          (json["web"] as Map).cast<String, Object?>(),
        ),
        pdf: OrderDocumentFormat.fromJson(
          (json["pdf"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "web": _encodeValue(web),
        "pdf": _encodeValue(pdf),
      };
}
