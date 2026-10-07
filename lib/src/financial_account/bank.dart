part of '../../financial_account.dart';

/// Bank-account details returned with a financial account.
///
/// Exposes [type] and [ghanaBankAccount].
final class Bank implements InttegroValue {
  final inttegro_bank_account.Type type;
  final inttegro_bank_account.GhanaBankAccount? ghanaBankAccount;
  const Bank({required this.type, this.ghanaBankAccount});
  factory Bank.fromJson(Map<String, Object?> json) => Bank(
        type: inttegro_bank_account.Type.fromJson(json["type"]),
        ghanaBankAccount: json["ghana_bank_account"] == null
            ? null
            : inttegro_bank_account.GhanaBankAccount.fromJson(
                (json["ghana_bank_account"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        if (ghanaBankAccount != null)
          "ghana_bank_account": encodeValue(ghanaBankAccount),
      };
}
