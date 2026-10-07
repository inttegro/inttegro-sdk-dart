part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequestWallet implements _InttegroValue {
  final WalletType type;
  final FinancialAccountWalletRequestWalletMobileMoney mobileMoney;
  const FinancialAccountWalletRequestWallet({
    required this.type,
    required this.mobileMoney,
  });
  factory FinancialAccountWalletRequestWallet.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletRequestWallet(
        type: WalletType.fromJson(json["type"]),
        mobileMoney: FinancialAccountWalletRequestWalletMobileMoney.fromJson(
          (json["mobile_money"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "mobile_money": _encodeValue(mobileMoney),
      };
}
