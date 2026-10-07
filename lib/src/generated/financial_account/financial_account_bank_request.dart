part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequest implements _InttegroValue {
  final CustomDataInput? customData;
  final String? description;
  final FinancialAccountOwnerInput? owner;
  final FinancialAccountBankRequestPullConfiguration? pullConfiguration;
  final FinancialAccountBankRequestPushConfiguration? pushConfiguration;
  final String currency;
  final String label;
  final String reference;
  final FinancialAccountType type;
  final FinancialAccountBankRequestBankAccount bankAccount;
  const FinancialAccountBankRequest({
    this.customData,
    this.description,
    this.owner,
    this.pullConfiguration,
    this.pushConfiguration,
    required this.currency,
    required this.label,
    required this.reference,
    required this.type,
    required this.bankAccount,
  });
  factory FinancialAccountBankRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountBankRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        owner: json["owner"] == null
            ? null
            : FinancialAccountOwnerInput.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : FinancialAccountBankRequestPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : FinancialAccountBankRequestPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        currency: json["currency"] as String,
        label: json["label"] as String,
        reference: json["reference"] as String,
        type: FinancialAccountType.fromJson(json["type"]),
        bankAccount: FinancialAccountBankRequestBankAccount.fromJson(
          (json["bank_account"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (owner != null) "owner": _encodeValue(owner),
        if (pullConfiguration != null)
          "pull_configuration": _encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": _encodeValue(pushConfiguration),
        "currency": _encodeValue(currency),
        "label": _encodeValue(label),
        "reference": _encodeValue(reference),
        "type": _encodeValue(type),
        "bank_account": _encodeValue(bankAccount),
      };
}
