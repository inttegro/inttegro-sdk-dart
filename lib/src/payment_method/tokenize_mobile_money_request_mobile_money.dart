part of '../../payment_method.dart';

/// Mobile-money account data supplied when tokenizing a payment method.
final class TokenizeMobileMoneyRequestMobileMoney implements InttegroValue {
  final String accountNumber;
  final inttegro_wallet.MobileMoneyNetwork network;
  const TokenizeMobileMoneyRequestMobileMoney({
    required this.accountNumber,
    required this.network,
  });
  factory TokenizeMobileMoneyRequestMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      TokenizeMobileMoneyRequestMobileMoney(
        accountNumber: json["account_number"] as String,
        network: inttegro_wallet.MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": encodeValue(accountNumber),
        "network": encodeValue(network),
      };
}
