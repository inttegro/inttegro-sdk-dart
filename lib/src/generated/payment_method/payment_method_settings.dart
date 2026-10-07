part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodSettings implements _InttegroValue {
  final PaymentMethodTypeSetting? mobileMoney;
  final PaymentMethodTypeSetting? bankAccount;
  final PaymentMethodTypeSetting? card;
  final PaymentMethodTypeSetting? motito;
  const PaymentMethodSettings({
    this.mobileMoney,
    this.bankAccount,
    this.card,
    this.motito,
  });
  factory PaymentMethodSettings.fromJson(Map<String, Object?> json) =>
      PaymentMethodSettings(
        mobileMoney: json["mobile_money"] == null
            ? null
            : PaymentMethodTypeSetting.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        bankAccount: json["bank_account"] == null
            ? null
            : PaymentMethodTypeSetting.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        card: json["card"] == null
            ? null
            : PaymentMethodTypeSetting.fromJson(
                (json["card"] as Map).cast<String, Object?>(),
              ),
        motito: json["motito"] == null
            ? null
            : PaymentMethodTypeSetting.fromJson(
                (json["motito"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
        if (bankAccount != null) "bank_account": _encodeValue(bankAccount),
        if (card != null) "card": _encodeValue(card),
        if (motito != null) "motito": _encodeValue(motito),
      };
}
