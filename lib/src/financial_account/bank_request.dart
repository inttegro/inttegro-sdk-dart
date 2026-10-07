part of '../../financial_account.dart';

/// Bank-account fields used by the bank variant of [CreateRequest].
final class BankRequest implements InttegroValue {
  final core.CustomDataInput? customData;
  final String? description;
  final OwnerInput? owner;
  final BankRequestPullConfiguration? pullConfiguration;
  final BankRequestPushConfiguration? pushConfiguration;
  final String currency;
  final String label;
  final String reference;
  final Type type;
  final BankAccountDetails bankAccount;
  const BankRequest({
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
  factory BankRequest.fromJson(Map<String, Object?> json) => BankRequest(
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataInput.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        owner: json["owner"] == null
            ? null
            : OwnerInput.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : BankRequestPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : BankRequestPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        currency: json["currency"] as String,
        label: json["label"] as String,
        reference: json["reference"] as String,
        type: Type.fromJson(json["type"]),
        bankAccount: BankAccountDetails.fromJson(
          (json["bank_account"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": encodeValue(customData),
        if (description != null) "description": encodeValue(description),
        if (owner != null) "owner": encodeValue(owner),
        if (pullConfiguration != null)
          "pull_configuration": encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": encodeValue(pushConfiguration),
        "currency": encodeValue(currency),
        "label": encodeValue(label),
        "reference": encodeValue(reference),
        "type": encodeValue(type),
        "bank_account": encodeValue(bankAccount),
      };
}
