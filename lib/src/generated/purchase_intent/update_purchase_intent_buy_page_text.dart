part of '../../../inttegro.dart';

/// Sparse text update for a hosted Buy page.
final class UpdatePurchaseIntentBuyPageText implements _InttegroValue {
  final PurchaseIntentTextValueUpdate? checkoutSectionTitle;
  final PurchaseIntentTextValueUpdate? amountFieldLabel;
  final PurchaseIntentTextValueUpdate? primaryActionLabel;
  const UpdatePurchaseIntentBuyPageText({
    this.checkoutSectionTitle,
    this.amountFieldLabel,
    this.primaryActionLabel,
  });
  factory UpdatePurchaseIntentBuyPageText.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdatePurchaseIntentBuyPageText(
        checkoutSectionTitle: json.containsKey("checkout_section_title")
            ? PurchaseIntentTextValueUpdate.fromJson(
                json["checkout_section_title"],
              )
            : null,
        amountFieldLabel: json.containsKey("amount_field_label")
            ? PurchaseIntentTextValueUpdate.fromJson(
                json["amount_field_label"],
              )
            : null,
        primaryActionLabel: json.containsKey("primary_action_label")
            ? PurchaseIntentTextValueUpdate.fromJson(
                json["primary_action_label"],
              )
            : null,
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
