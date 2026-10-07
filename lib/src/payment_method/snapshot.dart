part of '../../payment_method.dart';

/// An immutable payment-method snapshot attached to another resource.
///
/// Exposes [id], [bankAccount], [card], and [createdAt], among other contract
/// fields.
final class Snapshot implements InttegroValue {
  final String id;
  final SnapshotBankAccount? bankAccount;
  final Card? card;
  final DateTime createdAt;
  final String customerId;
  final SnapshotMobileMoney? mobileMoney;
  final SnapshotOwner? owner;
  final Type type;
  final bool verified;
  final DateTime? verifiedAt;
  const Snapshot({
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
  factory Snapshot.fromJson(Map<String, Object?> json) => Snapshot(
        id: json["id"] as String,
        bankAccount: json["bank_account"] == null
            ? null
            : SnapshotBankAccount.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        card: json["card"] == null
            ? null
            : Card.fromJson(
                (json["card"] as Map).cast<String, Object?>(),
              ),
        createdAt: decodeDateTime(json["created_at"]),
        customerId: json["customer_id"] as String,
        mobileMoney: json["mobile_money"] == null
            ? null
            : SnapshotMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        owner: json["owner"] == null
            ? null
            : SnapshotOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        type: Type.fromJson(json["type"]),
        verified: json["verified"] as bool,
        verifiedAt: json["verified_at"] == null
            ? null
            : decodeDateTime(json["verified_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        if (bankAccount != null) "bank_account": encodeValue(bankAccount),
        if (card != null) "card": encodeValue(card),
        "created_at": encodeValue(createdAt),
        "customer_id": encodeValue(customerId),
        if (mobileMoney != null) "mobile_money": encodeValue(mobileMoney),
        if (owner != null) "owner": encodeValue(owner),
        "type": encodeValue(type),
        "verified": encodeValue(verified),
        if (verifiedAt != null) "verified_at": encodeValue(verifiedAt),
      };
}
