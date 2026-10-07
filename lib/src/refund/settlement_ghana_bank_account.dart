part of '../../refund.dart';

final class SettlementGhanaBankAccount implements InttegroValue {
  final String accountNumber;
  final String last4;
  const SettlementGhanaBankAccount({
    required this.accountNumber,
    required this.last4,
  });

  factory SettlementGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) {
    expectExactKeys(
      json,
      const {"account_number", "last4"},
      "refund settlement Ghana bank-account details",
    );
    return SettlementGhanaBankAccount(
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
