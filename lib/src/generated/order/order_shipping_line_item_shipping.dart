part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderShippingLineItemShipping implements _InttegroValue {
  final String id;
  final String? taxCode;
  final String? label;
  final Amount fee;
  const OrderShippingLineItemShipping({
    required this.id,
    this.taxCode,
    this.label,
    required this.fee,
  });
  factory OrderShippingLineItemShipping.fromJson(Map<String, Object?> json) =>
      OrderShippingLineItemShipping(
        id: json["id"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        fee: Amount.fromJson((json["fee"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (label != null) "label": _encodeValue(label),
        "fee": _encodeValue(fee),
      };
}
