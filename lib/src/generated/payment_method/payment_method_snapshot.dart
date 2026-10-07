part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodSnapshot implements _InttegroValue {
  final String id;
  final PaymentMethodSnapshotBankAccount? bankAccount;
  final PaymentMethodCard? card;
  final DateTime createdAt;
  final String customerId;
  final PaymentMethodSnapshotMobileMoney? mobileMoney;
  final PaymentMethodSnapshotOwner? owner;
  final PaymentMethodType type;
  final bool verified;
  final DateTime? verifiedAt;
  const PaymentMethodSnapshot({
    required this.id,
    this.bankAccount,
    this.card,
    required this.createdAt,
    required this.customerId,
    this.mobileMoney,
    this.owner,
    required this.type,
    required this.verified,
    this.verifiedAt,
  });
  factory PaymentMethodSnapshot.fromJson(Map<String, Object?> json) =>
      PaymentMethodSnapshot(
        id: json["id"] as String,
        bankAccount: json["bank_account"] == null
            ? null
            : PaymentMethodSnapshotBankAccount.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        card: json["card"] == null
            ? null
            : PaymentMethodCard.fromJson(
                (json["card"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        customerId: json["customer_id"] as String,
        mobileMoney: json["mobile_money"] == null
            ? null
            : PaymentMethodSnapshotMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        owner: json["owner"] == null
            ? null
            : PaymentMethodSnapshotOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        type: PaymentMethodType.fromJson(json["type"]),
        verified: json["verified"] as bool,
        verifiedAt: json["verified_at"] == null
            ? null
            : _decodeDateTime(json["verified_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (bankAccount != null) "bank_account": _encodeValue(bankAccount),
        if (card != null) "card": _encodeValue(card),
        "created_at": _encodeValue(createdAt),
        "customer_id": _encodeValue(customerId),
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
        if (owner != null) "owner": _encodeValue(owner),
        "type": _encodeValue(type),
        "verified": _encodeValue(verified),
        if (verifiedAt != null) "verified_at": _encodeValue(verifiedAt),
      };
}
