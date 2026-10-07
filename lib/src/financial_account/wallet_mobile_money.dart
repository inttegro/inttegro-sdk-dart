part of '../../financial_account.dart';

/// Mobile-money details returned for a wallet financial account.
final class WalletMobileMoney implements InttegroValue {
  final String accountNumber;
  final inttegro_wallet.MobileMoneyNetwork network;
  const WalletMobileMoney({
    required this.accountNumber,
    required this.network,
  });
  factory WalletMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      WalletMobileMoney(
        accountNumber: json["account_number"] as String,
        network: inttegro_wallet.MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": encodeValue(accountNumber),
        "network": encodeValue(network),
      };
}
