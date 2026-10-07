part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodBankAccount implements _InttegroValue {
  final PaymentMethodBankAccountGhanaBankAccount? ghanaBankAccount;
  final BankAccountType type;
  const PaymentMethodBankAccount({this.ghanaBankAccount, required this.type});
  factory PaymentMethodBankAccount.fromJson(Map<String, Object?> json) =>
      PaymentMethodBankAccount(
        ghanaBankAccount: json["ghana_bank_account"] == null
            ? null
            : PaymentMethodBankAccountGhanaBankAccount.fromJson(
                (json["ghana_bank_account"] as Map).cast<String, Object?>(),
              ),
        type: BankAccountType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (ghanaBankAccount != null)
          "ghana_bank_account": _encodeValue(ghanaBankAccount),
        "type": _encodeValue(type),
      };
}
