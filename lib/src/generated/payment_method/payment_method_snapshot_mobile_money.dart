part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodSnapshotMobileMoney implements _InttegroValue {
  final MobileMoneyNetwork network;
  final String accountNumber;
  final String last4;
  const PaymentMethodSnapshotMobileMoney({
    required this.network,
    required this.accountNumber,
    required this.last4,
  });
  factory PaymentMethodSnapshotMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodSnapshotMobileMoney(
        network: MobileMoneyNetwork.fromJson(json["network"]),
        accountNumber: json["account_number"] as String,
        last4: json["last4"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "network": _encodeValue(network),
        "account_number": _encodeValue(accountNumber),
        "last4": _encodeValue(last4),
      };
}
