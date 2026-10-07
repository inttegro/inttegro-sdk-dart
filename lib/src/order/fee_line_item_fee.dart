part of '../../order.dart';

/// The fee details embedded in an order line item.
final class FeeLineItemFee implements InttegroValue {
  final String id;
  final String? description;
  final String? taxCode;
  final inttegro_money.Amount amount;
  final String label;
  const FeeLineItemFee({
    required this.id,
    this.description,
    this.taxCode,
    required this.amount,
    required this.label,
  });
  factory FeeLineItemFee.fromJson(Map<String, Object?> json) => FeeLineItemFee(
        id: json["id"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        amount: inttegro_money.Amount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
        label: json["label"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        if (description != null) "description": encodeValue(description),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        "amount": encodeValue(amount),
        "label": encodeValue(label),
      };
}
