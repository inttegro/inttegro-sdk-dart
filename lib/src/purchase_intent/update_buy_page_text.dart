part of '../../purchase_intent.dart';

/// Sparse text update for a hosted Buy page.
final class UpdateBuyPageText implements InttegroValue {
  final TextValueUpdate? checkoutSectionTitle;
  final TextValueUpdate? amountFieldLabel;
  final TextValueUpdate? primaryActionLabel;
  const UpdateBuyPageText({
    this.checkoutSectionTitle,
    this.amountFieldLabel,
    this.primaryActionLabel,
  });
  factory UpdateBuyPageText.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateBuyPageText(
        checkoutSectionTitle: json.containsKey("checkout_section_title")
            ? TextValueUpdate.fromJson(
                json["checkout_section_title"],
              )
            : null,
        amountFieldLabel: json.containsKey("amount_field_label")
            ? TextValueUpdate.fromJson(
                json["amount_field_label"],
              )
            : null,
        primaryActionLabel: json.containsKey("primary_action_label")
            ? TextValueUpdate.fromJson(
                json["primary_action_label"],
              )
            : null,
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
