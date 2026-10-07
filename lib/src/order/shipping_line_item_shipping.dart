part of '../../order.dart';

/// The shipping fee details embedded in an order line item.
final class ShippingLineItemShipping implements InttegroValue {
  final String id;
  final String? taxCode;
  final String? label;
  final inttegro_money.Amount fee;
  const ShippingLineItemShipping({
    required this.id,
    this.taxCode,
    this.label,
    required this.fee,
  });
  factory ShippingLineItemShipping.fromJson(Map<String, Object?> json) =>
      ShippingLineItemShipping(
        id: json["id"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        fee: inttegro_money.Amount.fromJson(
            (json["fee"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        if (label != null) "label": encodeValue(label),
        "fee": encodeValue(fee),
      };
}
