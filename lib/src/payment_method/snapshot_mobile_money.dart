part of '../../payment_method.dart';

/// Mobile-money details preserved in a payment-method snapshot.
final class SnapshotMobileMoney implements InttegroValue {
  final inttegro_wallet.MobileMoneyNetwork network;
  final String accountNumber;
  final String last4;
  const SnapshotMobileMoney({
    required this.network,
    required this.accountNumber,
    required this.last4,
  });
  factory SnapshotMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      SnapshotMobileMoney(
        network: inttegro_wallet.MobileMoneyNetwork.fromJson(json["network"]),
        accountNumber: json["account_number"] as String,
        last4: json["last4"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "network": encodeValue(network),
        "account_number": encodeValue(accountNumber),
        "last4": encodeValue(last4),
      };
}
