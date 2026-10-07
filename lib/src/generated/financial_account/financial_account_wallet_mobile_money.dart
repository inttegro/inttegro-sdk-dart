part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccountWalletMobileMoney implements _InttegroValue {
  final String accountNumber;
  final MobileMoneyNetwork network;
  const FinancialAccountWalletMobileMoney({
    required this.accountNumber,
    required this.network,
  });
  factory FinancialAccountWalletMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletMobileMoney(
        accountNumber: json["account_number"] as String,
        network: MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        "network": _encodeValue(network),
      };
}
