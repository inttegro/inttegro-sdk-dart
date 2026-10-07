part of '../../../inttegro.dart';

final class RefundSettlementMobileMoney implements _InttegroValue {
  final MobileMoneyNetwork network;
  final String accountNumber;
  final String last4;
  const RefundSettlementMobileMoney({
    required this.network,
    required this.accountNumber,
    required this.last4,
  });

  factory RefundSettlementMobileMoney.fromJson(Map<String, Object?> json) {
    _expectExactKeys(
      json,
      const {"account_number", "last4", "network"},
      "refund settlement mobile-money details",
    );
    return RefundSettlementMobileMoney(
      network: MobileMoneyNetwork.fromJson(json["network"]),
      accountNumber: json["account_number"] as String,
      last4: json["last4"] as String,
    );
  }

  @override
  Map<String, Object?> toJson() => {
        "network": _encodeValue(network),
        "account_number": accountNumber,
        "last4": last4,
      };
}
