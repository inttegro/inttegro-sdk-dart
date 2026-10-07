part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethod implements _InttegroValue {
  final bool active;
  final DateTime? archivedAt;
  final PaymentMethodBankAccount? bankAccount;
  final PaymentMethodCard? card;
  final DateTime createdAt;
  final CustomData? customData;
  final String customerId;
  final bool? ephemeral;
  final DateTime? expiresOn;
  final String fingerprint;
  final String id;
  final PaymentMethodMobileMoney? mobileMoney;
  final PaymentMethodOwner? owner;
  final PaymentMethodType type;
  final PaymentMethodSupplied? supplied;
  final PaymentMethodVerification? verification;
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
            : _decodeDateTime(json["archived_at"]),
        bankAccount: json["bank_account"] == null
            ? null
            : PaymentMethodBankAccount.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        card: json["card"] == null
            ? null
            : PaymentMethodCard.fromJson(
                (json["card"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        customerId: json["customer_id"] as String,
        ephemeral: json["ephemeral"] == null ? null : json["ephemeral"] as bool,
        expiresOn: json["expires_on"] == null
            ? null
            : _decodeDateTime(json["expires_on"]),
        fingerprint: json["fingerprint"] as String,
        id: json["id"] as String,
        mobileMoney: json["mobile_money"] == null
            ? null
            : PaymentMethodMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        owner: json["owner"] == null
            ? null
            : PaymentMethodOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        type: PaymentMethodType.fromJson(json["type"]),
        supplied: json["supplied"] == null
            ? null
            : PaymentMethodSupplied.fromJson(
                (json["supplied"] as Map).cast<String, Object?>(),
              ),
        verification: json["verification"] == null
            ? null
            : PaymentMethodVerification.fromJson(
                (json["verification"] as Map).cast<String, Object?>(),
              ),
        verifiedAt: json["verified_at"] == null
            ? null
            : _decodeDateTime(json["verified_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": _encodeValue(active),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        if (bankAccount != null) "bank_account": _encodeValue(bankAccount),
        if (card != null) "card": _encodeValue(card),
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        "customer_id": _encodeValue(customerId),
        if (ephemeral != null) "ephemeral": _encodeValue(ephemeral),
        if (expiresOn != null) "expires_on": _encodeValue(expiresOn),
        "fingerprint": _encodeValue(fingerprint),
        "id": _encodeValue(id),
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
        if (owner != null) "owner": _encodeValue(owner),
        "type": _encodeValue(type),
        if (supplied != null) "supplied": _encodeValue(supplied),
        if (verification != null) "verification": _encodeValue(verification),
        if (verifiedAt != null) "verified_at": _encodeValue(verifiedAt),
      };
}
