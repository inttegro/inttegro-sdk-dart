part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdateOrderRequestPaymentMethodDataMobileMoney
    implements _InttegroValue {
  final MobileMoneyNetwork network;
  final String accountNumber;
  const UpdateOrderRequestPaymentMethodDataMobileMoney({
    required this.network,
    required this.accountNumber,
  });
  factory UpdateOrderRequestPaymentMethodDataMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateOrderRequestPaymentMethodDataMobileMoney(
        network: MobileMoneyNetwork.fromJson(json["network"]),
        accountNumber: json["account_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "network": _encodeValue(network),
        "account_number": _encodeValue(accountNumber),
      };
}
