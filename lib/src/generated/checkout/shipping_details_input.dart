part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ShippingDetailsInput implements _InttegroValue {
  final String? id;
  final String? taxCode;
  final CustomDataInput? customData;
  final AmountParams fee;
  const ShippingDetailsInput({
    this.id,
    this.taxCode,
    this.customData,
    required this.fee,
  });
  factory ShippingDetailsInput.fromJson(Map<String, Object?> json) =>
      ShippingDetailsInput(
        id: json["id"] == null ? null : json["id"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        fee: AmountParams.fromJson(
          (json["fee"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (customData != null) "custom_data": _encodeValue(customData),
        "fee": _encodeValue(fee),
      };
}
