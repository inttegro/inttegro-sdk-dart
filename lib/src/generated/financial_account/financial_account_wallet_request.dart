part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequest implements _InttegroValue {
  final CustomDataInput? customData;
  final String? description;
  final FinancialAccountWalletRequestPullConfiguration? pullConfiguration;
  final FinancialAccountWalletRequestPushConfiguration? pushConfiguration;
  final String currency;
  final String label;
  final FinancialAccountOwnerInput owner;
  final String reference;
  final FinancialAccountType type;
  final FinancialAccountWalletRequestWallet wallet;
  const FinancialAccountWalletRequest({
    this.customData,
    this.description,
    this.pullConfiguration,
    this.pushConfiguration,
    required this.currency,
    required this.label,
    required this.owner,
    required this.reference,
    required this.type,
    required this.wallet,
  });
  factory FinancialAccountWalletRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountWalletRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : FinancialAccountWalletRequestPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : FinancialAccountWalletRequestPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        currency: json["currency"] as String,
        label: json["label"] as String,
        owner: FinancialAccountOwnerInput.fromJson(
          (json["owner"] as Map).cast<String, Object?>(),
        ),
        reference: json["reference"] as String,
        type: FinancialAccountType.fromJson(json["type"]),
        wallet: FinancialAccountWalletRequestWallet.fromJson(
          (json["wallet"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (pullConfiguration != null)
          "pull_configuration": _encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": _encodeValue(pushConfiguration),
        "currency": _encodeValue(currency),
        "label": _encodeValue(label),
        "owner": _encodeValue(owner),
        "reference": _encodeValue(reference),
        "type": _encodeValue(type),
        "wallet": _encodeValue(wallet),
      };
}
