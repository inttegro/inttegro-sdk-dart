part of '../../payment_method.dart';

/// Available payment-method types and their settings.
///
/// Exposes [mobileMoney], [bankAccount], [card], and [motito].
final class Settings implements InttegroValue {
  final TypeSetting? mobileMoney;
  final TypeSetting? bankAccount;
  final TypeSetting? card;
  final TypeSetting? motito;
  const Settings({
    this.mobileMoney,
    this.bankAccount,
    this.card,
    this.motito,
  });
  factory Settings.fromJson(Map<String, Object?> json) => Settings(
        mobileMoney: json["mobile_money"] == null
            ? null
            : TypeSetting.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        bankAccount: json["bank_account"] == null
            ? null
            : TypeSetting.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        card: json["card"] == null
            ? null
            : TypeSetting.fromJson(
                (json["card"] as Map).cast<String, Object?>(),
              ),
        motito: json["motito"] == null
            ? null
            : TypeSetting.fromJson(
                (json["motito"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (mobileMoney != null) "mobile_money": encodeValue(mobileMoney),
        if (bankAccount != null) "bank_account": encodeValue(bankAccount),
        if (card != null) "card": encodeValue(card),
        if (motito != null) "motito": encodeValue(motito),
      };
}
