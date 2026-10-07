part of '../../checkout.dart';

/// Shipping details supplied during checkout.
///
/// Carries [id], [taxCode], [customData], and [fee].
final class ShippingDetailsInput implements InttegroValue {
  final String? id;
  final String? taxCode;
  final core.CustomDataInput? customData;
  final inttegro_money.AmountParams fee;
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
            : core.CustomDataInput.fromJson(json["custom_data"]),
        fee: inttegro_money.AmountParams.fromJson(
          (json["fee"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": encodeValue(id),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        if (customData != null) "custom_data": encodeValue(customData),
        "fee": encodeValue(fee),
      };
}
