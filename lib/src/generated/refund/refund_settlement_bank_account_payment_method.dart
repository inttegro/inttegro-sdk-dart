part of '../../../inttegro.dart';

final class RefundSettlementBankAccountPaymentMethod
    extends RefundSettlementPaymentMethod {
  @override
  final String id;
  final RefundSettlementBankAccount bankAccount;
  const RefundSettlementBankAccountPaymentMethod({
    required this.id,
    required this.bankAccount,
  });

  factory RefundSettlementBankAccountPaymentMethod.fromJson(
    Map<String, Object?> json,
  ) {
    _expectExactKeys(
      json,
      const {"id", "type", "bank_account"},
      "bank-account refund settlement",
    );
    if (json["type"] != "bank_account") {
      throw const FormatException("Invalid bank-account refund settlement");
    }
    return RefundSettlementBankAccountPaymentMethod(
      id: json["id"] as String,
      bankAccount: RefundSettlementBankAccount.fromJson(
        (json["bank_account"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  String get type => "bank_account";

  @override
  Map<String, Object?> toJson() => {
        "id": id,
        "type": type,
        "bank_account": _encodeValue(bankAccount),
      };
}
