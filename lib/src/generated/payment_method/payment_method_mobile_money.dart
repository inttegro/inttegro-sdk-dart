part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodMobileMoney implements _InttegroValue {
  final String accountNumber;
  final String last4;
  final MobileMoneyNetwork network;
  const PaymentMethodMobileMoney({
    required this.accountNumber,
    required this.last4,
    required this.network,
  });
  factory PaymentMethodMobileMoney.fromJson(Map<String, Object?> json) =>
      PaymentMethodMobileMoney(
        accountNumber: json["account_number"] as String,
        last4: json["last4"] as String,
        network: MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        "last4": _encodeValue(last4),
        "network": _encodeValue(network),
      };
}
