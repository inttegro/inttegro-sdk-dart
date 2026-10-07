part of '../../refund.dart';

final class SettlementMobileMoney implements InttegroValue {
  final inttegro_wallet.MobileMoneyNetwork network;
  final String accountNumber;
  final String last4;
  const SettlementMobileMoney({
    required this.network,
    required this.accountNumber,
    required this.last4,
  });

  factory SettlementMobileMoney.fromJson(Map<String, Object?> json) {
    expectExactKeys(
      json,
      const {"account_number", "last4", "network"},
      "refund settlement mobile-money details",
    );
    return SettlementMobileMoney(
      network: inttegro_wallet.MobileMoneyNetwork.fromJson(json["network"]),
      accountNumber: json["account_number"] as String,
      last4: json["last4"] as String,
    );
  }

  @override
  Map<String, Object?> toJson() => {
        "network": encodeValue(network),
        "account_number": accountNumber,
        "last4": last4,
      };
}
