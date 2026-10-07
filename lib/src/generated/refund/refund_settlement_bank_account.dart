part of '../../../inttegro.dart';

final class RefundSettlementBankAccount implements _InttegroValue {
  final RefundSettlementGhanaBankAccount ghanaBankAccount;
  const RefundSettlementBankAccount({required this.ghanaBankAccount});

  String get type => "ghana_bank_account";

  factory RefundSettlementBankAccount.fromJson(Map<String, Object?> json) {
    _expectExactKeys(
      json,
      const {"type", "ghana_bank_account"},
      "refund settlement bank-account details",
    );
    if (json["type"] != "ghana_bank_account") {
      throw const FormatException("Unsupported refund bank-account type");
    }
    return RefundSettlementBankAccount(
      ghanaBankAccount: RefundSettlementGhanaBankAccount.fromJson(
        (json["ghana_bank_account"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  Map<String, Object?> toJson() => {
        "type": type,
        "ghana_bank_account": _encodeValue(ghanaBankAccount),
      };
}
