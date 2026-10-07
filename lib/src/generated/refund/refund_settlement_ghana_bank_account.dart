part of '../../../inttegro.dart';

final class RefundSettlementGhanaBankAccount implements _InttegroValue {
  final String accountNumber;
  final String last4;
  const RefundSettlementGhanaBankAccount({
    required this.accountNumber,
    required this.last4,
  });

  factory RefundSettlementGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) {
    _expectExactKeys(
      json,
      const {"account_number", "last4"},
      "refund settlement Ghana bank-account details",
    );
    return RefundSettlementGhanaBankAccount(
      accountNumber: json["account_number"] as String,
      last4: json["last4"] as String,
    );
  }

  @override
  Map<String, Object?> toJson() => {
        "account_number": accountNumber,
        "last4": last4,
      };
}
