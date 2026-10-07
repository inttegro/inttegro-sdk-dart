part of '../../payment_method.dart';

/// Mobile-money account data supplied inline to an order operation.
final class DataInputMobileMoney implements InttegroValue {
  final inttegro_wallet.MobileMoneyNetwork network;
  final String accountNumber;
  const DataInputMobileMoney({
    required this.network,
    required this.accountNumber,
  });
  factory DataInputMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      DataInputMobileMoney(
        network: inttegro_wallet.MobileMoneyNetwork.fromJson(json["network"]),
        accountNumber: json["account_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "network": encodeValue(network),
        "account_number": encodeValue(accountNumber),
      };
}
