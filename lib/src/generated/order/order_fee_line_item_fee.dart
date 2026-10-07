part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderFeeLineItemFee implements _InttegroValue {
  final String id;
  final String? description;
  final String? taxCode;
  final Amount amount;
  final String label;
  const OrderFeeLineItemFee({
    required this.id,
    this.description,
    this.taxCode,
    required this.amount,
    required this.label,
  });
  factory OrderFeeLineItemFee.fromJson(Map<String, Object?> json) =>
      OrderFeeLineItemFee(
        id: json["id"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        amount: Amount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
        label: json["label"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (description != null) "description": _encodeValue(description),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        "amount": _encodeValue(amount),
        "label": _encodeValue(label),
      };
}
