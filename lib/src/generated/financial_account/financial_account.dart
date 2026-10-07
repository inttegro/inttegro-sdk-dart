part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccount implements _InttegroValue {
  final DateTime? archivedAt;
  final DateTime createdAt;
  final String currency;
  final CustomData? customData;
  final String? description;
  final String fingerprint;
  final String id;
  final FinancialInstitution? institution;
  final String? label;
  final FinancialAccountPullConfiguration? pullConfiguration;
  final FinancialAccountPushConfiguration? pushConfiguration;
  final String? reference;
  final ResourceSupply? supplied;
  final FinancialAccountType type;
  final FinancialAccountVerification? verification;
  final FinancialAccountBank? bankAccount;
  final DateTime? disconnectedAt;
  final DoshAccount? doshAccount;
  final FinancialAccountOwner? owner;
  final FinancialAccountWallet? wallet;
  const FinancialAccount({
    this.archivedAt,
    required this.createdAt,
    required this.currency,
    this.customData,
    this.description,
    required this.fingerprint,
    required this.id,
    this.institution,
    this.label,
    this.pullConfiguration,
    this.pushConfiguration,
    this.reference,
    this.supplied,
    required this.type,
    this.verification,
    this.bankAccount,
    this.disconnectedAt,
    this.doshAccount,
    this.owner,
    this.wallet,
  });
  factory FinancialAccount.fromJson(Map<String, Object?> json) =>
      FinancialAccount(
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        createdAt: _decodeDateTime(json["created_at"]),
        currency: json["currency"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        fingerprint: json["fingerprint"] as String,
        id: json["id"] as String,
        institution: json["institution"] == null
            ? null
            : FinancialInstitution.fromJson(
                (json["institution"] as Map).cast<String, Object?>(),
              ),
        label: json["label"] == null ? null : json["label"] as String,
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : FinancialAccountPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : FinancialAccountPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        supplied: json["supplied"] == null
            ? null
            : ResourceSupply.fromJson(
                (json["supplied"] as Map).cast<String, Object?>(),
              ),
        type: FinancialAccountType.fromJson(json["type"]),
        verification: json["verification"] == null
            ? null
            : FinancialAccountVerification.fromJson(json["verification"]),
        bankAccount: json["bank_account"] == null
            ? null
            : FinancialAccountBank.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        disconnectedAt: json["disconnected_at"] == null
            ? null
            : _decodeDateTime(json["disconnected_at"]),
        doshAccount: json["dosh_account"] == null
            ? null
            : DoshAccount.fromJson(json["dosh_account"]),
        owner: json["owner"] == null
            ? null
            : FinancialAccountOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        wallet: json["wallet"] == null
            ? null
            : FinancialAccountWallet.fromJson(
                (json["wallet"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        "created_at": _encodeValue(createdAt),
        "currency": _encodeValue(currency),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        "fingerprint": _encodeValue(fingerprint),
        "id": _encodeValue(id),
        if (institution != null) "institution": _encodeValue(institution),
        if (label != null) "label": _encodeValue(label),
        if (pullConfiguration != null)
          "pull_configuration": _encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": _encodeValue(pushConfiguration),
        if (reference != null) "reference": _encodeValue(reference),
        if (supplied != null) "supplied": _encodeValue(supplied),
        "type": _encodeValue(type),
        if (verification != null) "verification": _encodeValue(verification),
        if (bankAccount != null) "bank_account": _encodeValue(bankAccount),
        if (disconnectedAt != null)
          "disconnected_at": _encodeValue(disconnectedAt),
        if (doshAccount != null) "dosh_account": _encodeValue(doshAccount),
        if (owner != null) "owner": _encodeValue(owner),
        if (wallet != null) "wallet": _encodeValue(wallet),
      };
}
