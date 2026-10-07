part of '../../financial_account.dart';

/// Wallet details supplied when creating a financial account.
///
/// Carries [type] and [mobileMoney].
final class WalletDetails implements InttegroValue {
  final inttegro_wallet.Type type;
  final MobileMoneyWalletDetails mobileMoney;
  const WalletDetails({
    required this.type,
    required this.mobileMoney,
  });
  factory WalletDetails.fromJson(
    Map<String, Object?> json,
  ) =>
      WalletDetails(
        type: inttegro_wallet.Type.fromJson(json["type"]),
        mobileMoney: MobileMoneyWalletDetails.fromJson(
          (json["mobile_money"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        "mobile_money": encodeValue(mobileMoney),
      };
}
