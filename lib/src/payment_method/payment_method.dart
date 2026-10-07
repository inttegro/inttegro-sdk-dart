part of '../../payment_method.dart';

/// A reusable or ephemeral way to pay, including its owner and verification
/// state.
///
/// Inspect [type] before reading the type-specific [mobileMoney], [bankAccount],
/// or [card] projection.
final class PaymentMethod implements InttegroValue {
  final bool active;
  final DateTime? archivedAt;
  final BankAccount? bankAccount;
  final Card? card;
  final DateTime createdAt;
  final core.CustomData? customData;
  final String customerId;
  final bool? ephemeral;
  final DateTime? expiresOn;
  final String fingerprint;
  final String id;
  final MobileMoney? mobileMoney;
  final Owner? owner;
  final Type type;
  final Supplied? supplied;
  final Verification? verification;
  final DateTime? verifiedAt;
  const PaymentMethod({
    required this.active,
    this.archivedAt,
    this.bankAccount,
    this.card,
    required this.createdAt,
    this.customData,
    required this.customerId,
    this.ephemeral,
    this.expiresOn,
    required this.fingerprint,
    required this.id,
    this.mobileMoney,
    this.owner,
    required this.type,
    this.supplied,
    this.verification,
    this.verifiedAt,
  });
  factory PaymentMethod.fromJson(Map<String, Object?> json) => PaymentMethod(
        active: json["active"] as bool,
        archivedAt: json["archived_at"] == null
            ? null
            : decodeDateTime(json["archived_at"]),
        bankAccount: json["bank_account"] == null
            ? null
            : BankAccount.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        card: json["card"] == null
            ? null
            : Card.fromJson(
                (json["card"] as Map).cast<String, Object?>(),
              ),
        createdAt: decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        customerId: json["customer_id"] as String,
        ephemeral: json["ephemeral"] == null ? null : json["ephemeral"] as bool,
        expiresOn: json["expires_on"] == null
            ? null
            : decodeDateTime(json["expires_on"]),
        fingerprint: json["fingerprint"] as String,
        id: json["id"] as String,
        mobileMoney: json["mobile_money"] == null
            ? null
            : MobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        owner: json["owner"] == null
            ? null
            : Owner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        type: Type.fromJson(json["type"]),
        supplied: json["supplied"] == null
            ? null
            : Supplied.fromJson(
                (json["supplied"] as Map).cast<String, Object?>(),
              ),
        verification: json["verification"] == null
            ? null
            : Verification.fromJson(
                (json["verification"] as Map).cast<String, Object?>(),
              ),
        verifiedAt: json["verified_at"] == null
            ? null
            : decodeDateTime(json["verified_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": encodeValue(active),
        if (archivedAt != null) "archived_at": encodeValue(archivedAt),
        if (bankAccount != null) "bank_account": encodeValue(bankAccount),
        if (card != null) "card": encodeValue(card),
        "created_at": encodeValue(createdAt),
        if (customData != null) "custom_data": encodeValue(customData),
        "customer_id": encodeValue(customerId),
        if (ephemeral != null) "ephemeral": encodeValue(ephemeral),
        if (expiresOn != null) "expires_on": encodeValue(expiresOn),
        "fingerprint": encodeValue(fingerprint),
        "id": encodeValue(id),
        if (mobileMoney != null) "mobile_money": encodeValue(mobileMoney),
        if (owner != null) "owner": encodeValue(owner),
        "type": encodeValue(type),
        if (supplied != null) "supplied": encodeValue(supplied),
        if (verification != null) "verification": encodeValue(verification),
        if (verifiedAt != null) "verified_at": encodeValue(verifiedAt),
      };
}
