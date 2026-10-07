part of '../../financial_account.dart';

/// Wallet details returned with a financial account.
///
/// Exposes [id], [type], and [mobileMoney].
final class Wallet implements InttegroValue {
  final String id;
  final inttegro_wallet.Type type;
  final WalletMobileMoney? mobileMoney;
  const Wallet({
    required this.id,
    required this.type,
    this.mobileMoney,
  });
  factory Wallet.fromJson(Map<String, Object?> json) => Wallet(
        id: json["id"] as String,
        type: inttegro_wallet.Type.fromJson(json["type"]),
        mobileMoney: json["mobile_money"] == null
            ? null
            : WalletMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "type": encodeValue(type),
        if (mobileMoney != null) "mobile_money": encodeValue(mobileMoney),
      };
}
