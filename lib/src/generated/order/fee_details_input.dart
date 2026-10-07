part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FeeDetailsInput implements _InttegroValue {
  final String? id;
  final String? label;
  final String? taxCode;
  final String? description;
  final CustomDataInput? customData;
  final AmountParams amount;
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
            : CustomDataInput.fromJson(json["custom_data"]),
        amount: AmountParams.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (description != null) "description": _encodeValue(description),
        if (customData != null) "custom_data": _encodeValue(customData),
        "amount": _encodeValue(amount),
      };
}
