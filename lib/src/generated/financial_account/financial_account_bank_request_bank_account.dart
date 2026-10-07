part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequestBankAccount implements _InttegroValue {
  final BankAccountType type;
  final FinancialAccountBankRequestBankAccountGhanaBankAccount ghanaBankAccount;
  const FinancialAccountBankRequestBankAccount({
    required this.type,
    required this.ghanaBankAccount,
  });
  factory FinancialAccountBankRequestBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountBankRequestBankAccount(
        type: BankAccountType.fromJson(json["type"]),
        ghanaBankAccount:
            FinancialAccountBankRequestBankAccountGhanaBankAccount.fromJson(
          (json["ghana_bank_account"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "ghana_bank_account": _encodeValue(ghanaBankAccount),
      };
}
