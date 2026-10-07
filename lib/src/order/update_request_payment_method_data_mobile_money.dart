part of '../../order.dart';

/// Mobile-money account data supplied while updating an order.
final class UpdateRequestPaymentMethodDataMobileMoney implements InttegroValue {
  final inttegro_wallet.MobileMoneyNetwork network;
  final String accountNumber;
  const UpdateRequestPaymentMethodDataMobileMoney({
    required this.network,
    required this.accountNumber,
  });
  factory UpdateRequestPaymentMethodDataMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateRequestPaymentMethodDataMobileMoney(
        network: inttegro_wallet.MobileMoneyNetwork.fromJson(json["network"]),
        accountNumber: json["account_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "network": encodeValue(network),
        "account_number": encodeValue(accountNumber),
      };
}
