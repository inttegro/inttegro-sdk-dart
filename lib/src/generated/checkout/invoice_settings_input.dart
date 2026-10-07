part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class InvoiceSettingsInput implements _InttegroValue {
  final String? number;
  final String? memo;
  final String? footer;
  final CustomData? customData;
  const InvoiceSettingsInput({
    this.number,
    this.memo,
    this.footer,
    this.customData,
  });
  factory InvoiceSettingsInput.fromJson(Map<String, Object?> json) =>
      InvoiceSettingsInput(
        number: json["number"] == null ? null : json["number"] as String,
        memo: json["memo"] == null ? null : json["memo"] as String,
        footer: json["footer"] == null ? null : json["footer"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        if (memo != null) "memo": _encodeValue(memo),
        if (footer != null) "footer": _encodeValue(footer),
        if (customData != null) "custom_data": _encodeValue(customData),
      };
}
