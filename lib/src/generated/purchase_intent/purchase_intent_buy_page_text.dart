part of '../../../inttegro.dart';

/// Merchant-authored copy shown on a hosted Buy page.
final class PurchaseIntentBuyPageText implements _InttegroValue {
  final String? checkoutSectionTitle;
  final String? amountFieldLabel;
  final String? primaryActionLabel;
  const PurchaseIntentBuyPageText({
    this.checkoutSectionTitle,
    this.amountFieldLabel,
    this.primaryActionLabel,
  });
  factory PurchaseIntentBuyPageText.fromJson(Map<String, Object?> json) =>
      PurchaseIntentBuyPageText(
        checkoutSectionTitle: json["checkout_section_title"] as String?,
        amountFieldLabel: json["amount_field_label"] as String?,
        primaryActionLabel: json["primary_action_label"] as String?,
      );
  @override
  Map<String, Object?> toJson() => {
        if (checkoutSectionTitle != null)
          "checkout_section_title": _encodeValue(checkoutSectionTitle),
        if (amountFieldLabel != null)
          "amount_field_label": _encodeValue(amountFieldLabel),
        if (primaryActionLabel != null)
          "primary_action_label": _encodeValue(primaryActionLabel),
      };
}
