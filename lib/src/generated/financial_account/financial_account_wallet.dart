part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccountWallet implements _InttegroValue {
  final String id;
  final WalletType type;
  final FinancialAccountWalletMobileMoney? mobileMoney;
  const FinancialAccountWallet({
    required this.id,
    required this.type,
    this.mobileMoney,
  });
  factory FinancialAccountWallet.fromJson(Map<String, Object?> json) =>
      FinancialAccountWallet(
        id: json["id"] as String,
        type: WalletType.fromJson(json["type"]),
        mobileMoney: json["mobile_money"] == null
            ? null
            : FinancialAccountWalletMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "type": _encodeValue(type),
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
      };
}
