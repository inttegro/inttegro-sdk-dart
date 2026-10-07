part of '../../financial_account.dart';

/// A financial account that can receive payouts or support configured money
/// movement operations.
///
/// Inspect [type] before reading the type-specific [wallet], [bankAccount], or
/// [doshAccount] projection. Capability and verification details are exposed
/// separately through [pullConfiguration], [pushConfiguration], and
/// [verification].
final class FinancialAccount implements InttegroValue {
  final DateTime? archivedAt;
  final DateTime createdAt;
  final String currency;
  final core.CustomData? customData;
  final String? description;
  final String fingerprint;
  final String id;
  final Institution? institution;
  final String? label;
  final PullConfiguration? pullConfiguration;
  final PushConfiguration? pushConfiguration;
  final String? reference;
  final inttegro_product.ResourceSupply? supplied;
  final Type type;
  final core.FinancialAccountVerification? verification;
  final Bank? bankAccount;
  final DateTime? disconnectedAt;
  final core.DoshAccount? doshAccount;
  final Owner? owner;
  final Wallet? wallet;
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
            : decodeDateTime(json["archived_at"]),
        createdAt: decodeDateTime(json["created_at"]),
        currency: json["currency"] as String,
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        fingerprint: json["fingerprint"] as String,
        id: json["id"] as String,
        institution: json["institution"] == null
            ? null
            : Institution.fromJson(
                (json["institution"] as Map).cast<String, Object?>(),
              ),
        label: json["label"] == null ? null : json["label"] as String,
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : PullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : PushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        supplied: json["supplied"] == null
            ? null
            : inttegro_product.ResourceSupply.fromJson(
                (json["supplied"] as Map).cast<String, Object?>(),
              ),
        type: Type.fromJson(json["type"]),
        verification: json["verification"] == null
            ? null
            : core.FinancialAccountVerification.fromJson(json["verification"]),
        bankAccount: json["bank_account"] == null
            ? null
            : Bank.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        disconnectedAt: json["disconnected_at"] == null
            ? null
            : decodeDateTime(json["disconnected_at"]),
        doshAccount: json["dosh_account"] == null
            ? null
            : core.DoshAccount.fromJson(json["dosh_account"]),
        owner: json["owner"] == null
            ? null
            : Owner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        wallet: json["wallet"] == null
            ? null
            : Wallet.fromJson(
                (json["wallet"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (archivedAt != null) "archived_at": encodeValue(archivedAt),
        "created_at": encodeValue(createdAt),
        "currency": encodeValue(currency),
        if (customData != null) "custom_data": encodeValue(customData),
        if (description != null) "description": encodeValue(description),
        "fingerprint": encodeValue(fingerprint),
        "id": encodeValue(id),
        if (institution != null) "institution": encodeValue(institution),
        if (label != null) "label": encodeValue(label),
        if (pullConfiguration != null)
          "pull_configuration": encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": encodeValue(pushConfiguration),
        if (reference != null) "reference": encodeValue(reference),
        if (supplied != null) "supplied": encodeValue(supplied),
        "type": encodeValue(type),
        if (verification != null) "verification": encodeValue(verification),
        if (bankAccount != null) "bank_account": encodeValue(bankAccount),
        if (disconnectedAt != null)
          "disconnected_at": encodeValue(disconnectedAt),
        if (doshAccount != null) "dosh_account": encodeValue(doshAccount),
        if (owner != null) "owner": encodeValue(owner),
        if (wallet != null) "wallet": encodeValue(wallet),
      };
}
