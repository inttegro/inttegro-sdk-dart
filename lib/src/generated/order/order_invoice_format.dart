part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderInvoiceFormat implements _InttegroValue {
  final OrderDocumentFormat web;
  final OrderDocumentFormat pdf;
  const OrderInvoiceFormat({
    required this.web,
    required this.pdf,
  });
  factory OrderInvoiceFormat.fromJson(Map<String, Object?> json) =>
      OrderInvoiceFormat(
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
