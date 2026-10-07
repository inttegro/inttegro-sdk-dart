part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class TokenizeMobileMoneyPaymentMethodRequestMobileMoney
    implements _InttegroValue {
  final String accountNumber;
  final MobileMoneyNetwork network;
  const TokenizeMobileMoneyPaymentMethodRequestMobileMoney({
    required this.accountNumber,
    required this.network,
  });
  factory TokenizeMobileMoneyPaymentMethodRequestMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      TokenizeMobileMoneyPaymentMethodRequestMobileMoney(
        accountNumber: json["account_number"] as String,
        network: MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        "network": _encodeValue(network),
      };
}
