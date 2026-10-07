part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PaymentMethodDataInputMobileMoney implements _InttegroValue {
  final MobileMoneyNetwork network;
  final String accountNumber;
  const PaymentMethodDataInputMobileMoney({
    required this.network,
    required this.accountNumber,
  });
  factory PaymentMethodDataInputMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodDataInputMobileMoney(
        network: MobileMoneyNetwork.fromJson(json["network"]),
        accountNumber: json["account_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "network": _encodeValue(network),
        "account_number": _encodeValue(accountNumber),
      };
}
