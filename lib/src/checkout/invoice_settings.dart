part of '../../checkout.dart';

/// Invoice presentation and metadata settings attached to a checkout.
final class InvoiceSettings implements InttegroValue {
  final String? number;
  final String? memo;
  final String? footer;
  final core.CustomData? customData;
  const InvoiceSettings({this.number, this.memo, this.footer, this.customData});
  factory InvoiceSettings.fromJson(Map<String, Object?> json) =>
      InvoiceSettings(
        number: json["number"] == null ? null : json["number"] as String,
        memo: json["memo"] == null ? null : json["memo"] as String,
        footer: json["footer"] == null ? null : json["footer"] as String,
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": encodeValue(number),
        if (memo != null) "memo": encodeValue(memo),
        if (footer != null) "footer": encodeValue(footer),
        if (customData != null) "custom_data": encodeValue(customData),
      };
}
