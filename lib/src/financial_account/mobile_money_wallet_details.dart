part of '../../financial_account.dart';

/// Mobile-money wallet details supplied when creating a financial account.
final class MobileMoneyWalletDetails implements InttegroValue {
  final String accountNumber;
  final inttegro_wallet.MobileMoneyNetwork network;
  const MobileMoneyWalletDetails({
    required this.accountNumber,
    required this.network,
  });
  factory MobileMoneyWalletDetails.fromJson(
    Map<String, Object?> json,
  ) =>
      MobileMoneyWalletDetails(
        accountNumber: json["account_number"] as String,
        network: inttegro_wallet.MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": encodeValue(accountNumber),
        "network": encodeValue(network),
      };
}
