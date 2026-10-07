part of '../../refund.dart';

final class SettlementBankAccount implements InttegroValue {
  final SettlementGhanaBankAccount ghanaBankAccount;
  const SettlementBankAccount({required this.ghanaBankAccount});

  String get type => "ghana_bank_account";

  factory SettlementBankAccount.fromJson(Map<String, Object?> json) {
    expectExactKeys(
      json,
      const {"type", "ghana_bank_account"},
      "refund settlement bank-account details",
    );
    if (json["type"] != "ghana_bank_account") {
      throw const FormatException("Unsupported refund bank-account type");
    }
    return SettlementBankAccount(
      ghanaBankAccount: SettlementGhanaBankAccount.fromJson(
        (json["ghana_bank_account"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  Map<String, Object?> toJson() => {
        "type": type,
        "ghana_bank_account": encodeValue(ghanaBankAccount),
      };
}
