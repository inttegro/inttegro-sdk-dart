part of '../../purchase_intent.dart';

/// Merchant-authored copy shown on a hosted Buy page.
final class BuyPageText implements InttegroValue {
  final String? checkoutSectionTitle;
  final String? amountFieldLabel;
  final String? primaryActionLabel;
  const BuyPageText({
    this.checkoutSectionTitle,
    this.amountFieldLabel,
    this.primaryActionLabel,
  });
  factory BuyPageText.fromJson(Map<String, Object?> json) => BuyPageText(
        checkoutSectionTitle: json["checkout_section_title"] as String?,
        amountFieldLabel: json["amount_field_label"] as String?,
        primaryActionLabel: json["primary_action_label"] as String?,
      );
  @override
  Map<String, Object?> toJson() => {
        if (checkoutSectionTitle != null)
          "checkout_section_title": encodeValue(checkoutSectionTitle),
        if (amountFieldLabel != null)
          "amount_field_label": encodeValue(amountFieldLabel),
        if (primaryActionLabel != null)
          "primary_action_label": encodeValue(primaryActionLabel),
      };
}
