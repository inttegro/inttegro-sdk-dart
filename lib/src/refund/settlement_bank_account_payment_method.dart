part of '../../refund.dart';

final class SettlementBankAccountPaymentMethod extends SettlementPaymentMethod {
  @override
  final String id;
  final SettlementBankAccount bankAccount;
  const SettlementBankAccountPaymentMethod({
    required this.id,
    required this.bankAccount,
  });

  factory SettlementBankAccountPaymentMethod.fromJson(
    Map<String, Object?> json,
  ) {
    expectExactKeys(
      json,
      const {"id", "type", "bank_account"},
      "bank-account refund settlement",
    );
    if (json["type"] != "bank_account") {
      throw const FormatException("Invalid bank-account refund settlement");
    }
    return SettlementBankAccountPaymentMethod(
      id: json["id"] as String,
      bankAccount: SettlementBankAccount.fromJson(
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
        "bank_account": encodeValue(bankAccount),
      };
}
