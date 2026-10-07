part of '../../payment_method.dart';

/// Mobile-money account details attached to a payment method.
final class MobileMoney implements InttegroValue {
  final String accountNumber;
  final String last4;
  final inttegro_wallet.MobileMoneyNetwork network;
  const MobileMoney({
    required this.accountNumber,
    required this.last4,
    required this.network,
  });
  factory MobileMoney.fromJson(Map<String, Object?> json) => MobileMoney(
        accountNumber: json["account_number"] as String,
        last4: json["last4"] as String,
        network: inttegro_wallet.MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": encodeValue(accountNumber),
        "last4": encodeValue(last4),
        "network": encodeValue(network),
      };
}
