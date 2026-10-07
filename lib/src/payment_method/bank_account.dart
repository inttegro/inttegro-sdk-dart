part of '../../payment_method.dart';

/// Bank-account details attached to a payment method.
final class BankAccount implements InttegroValue {
  final BankAccountGhanaBankAccount? ghanaBankAccount;
  final inttegro_bank_account.Type type;
  const BankAccount({this.ghanaBankAccount, required this.type});
  factory BankAccount.fromJson(Map<String, Object?> json) => BankAccount(
        ghanaBankAccount: json["ghana_bank_account"] == null
            ? null
            : BankAccountGhanaBankAccount.fromJson(
                (json["ghana_bank_account"] as Map).cast<String, Object?>(),
              ),
        type: inttegro_bank_account.Type.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (ghanaBankAccount != null)
          "ghana_bank_account": encodeValue(ghanaBankAccount),
        "type": encodeValue(type),
      };
}
