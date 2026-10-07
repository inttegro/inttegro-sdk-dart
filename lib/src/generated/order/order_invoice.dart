part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderInvoice implements _InttegroValue {
  final String? number;
  final OrderInvoiceFormat format;
  const OrderInvoice({this.number, required this.format});
  factory OrderInvoice.fromJson(Map<String, Object?> json) => OrderInvoice(
        number: json["number"] == null ? null : json["number"] as String,
        format: OrderInvoiceFormat.fromJson(
          (json["format"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        "format": _encodeValue(format),
      };
}
