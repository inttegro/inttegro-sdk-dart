part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequestWalletMobileMoney
    implements _InttegroValue {
  final String accountNumber;
  final MobileMoneyNetwork network;
  const FinancialAccountWalletRequestWalletMobileMoney({
    required this.accountNumber,
    required this.network,
  });
  factory FinancialAccountWalletRequestWalletMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletRequestWalletMobileMoney(
        accountNumber: json["account_number"] as String,
        network: MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        "network": _encodeValue(network),
      };
}
