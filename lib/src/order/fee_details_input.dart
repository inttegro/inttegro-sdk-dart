part of '../../order.dart';

/// Fee details fields accepted by the order API.
///
/// Carries [id], [label], [taxCode], and [description], among other supported
/// fields.
final class FeeDetailsInput implements InttegroValue {
  final String? id;
  final String? label;
  final String? taxCode;
  final String? description;
  final core.CustomDataInput? customData;
  final inttegro_money.AmountParams amount;
  const FeeDetailsInput({
    this.id,
    this.label,
    this.taxCode,
    this.description,
    this.customData,
    required this.amount,
  });
  factory FeeDetailsInput.fromJson(Map<String, Object?> json) =>
      FeeDetailsInput(
        id: json["id"] == null ? null : json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataInput.fromJson(json["custom_data"]),
        amount: inttegro_money.AmountParams.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": encodeValue(id),
        if (label != null) "label": encodeValue(label),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        if (description != null) "description": encodeValue(description),
        if (customData != null) "custom_data": encodeValue(customData),
        "amount": encodeValue(amount),
      };
}
