part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccountBank implements _InttegroValue {
  final BankAccountType type;
  final GhanaBankAccount? ghanaBankAccount;
  const FinancialAccountBank({required this.type, this.ghanaBankAccount});
  factory FinancialAccountBank.fromJson(Map<String, Object?> json) =>
      FinancialAccountBank(
        type: BankAccountType.fromJson(json["type"]),
        ghanaBankAccount: json["ghana_bank_account"] == null
            ? null
            : GhanaBankAccount.fromJson(
                (json["ghana_bank_account"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (ghanaBankAccount != null)
          "ghana_bank_account": _encodeValue(ghanaBankAccount),
      };
}
