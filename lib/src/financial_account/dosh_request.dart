part of '../../financial_account.dart';

/// Dosh-account fields used by the Dosh variant of [CreateRequest].
final class DoshRequest implements InttegroValue {
  final core.CustomDataInput? customData;
  final String? description;
  final DoshRequestPullConfiguration? pullConfiguration;
  final DoshRequestPushConfiguration? pushConfiguration;
  final String currency;
  final String label;
  final OwnerInput owner;
  final String reference;
  final Type type;
  final core.DoshAccount doshAccount;
  const DoshRequest({
    this.customData,
    this.description,
    this.pullConfiguration,
    this.pushConfiguration,
    required this.currency,
    required this.label,
    required this.owner,
    required this.reference,
    required this.type,
    required this.doshAccount,
  });
  factory DoshRequest.fromJson(Map<String, Object?> json) => DoshRequest(
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataInput.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : DoshRequestPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : DoshRequestPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        currency: json["currency"] as String,
        label: json["label"] as String,
        owner: OwnerInput.fromJson(
          (json["owner"] as Map).cast<String, Object?>(),
        ),
        reference: json["reference"] as String,
        type: Type.fromJson(json["type"]),
        doshAccount: core.DoshAccount.fromJson(json["dosh_account"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": encodeValue(customData),
        if (description != null) "description": encodeValue(description),
        if (pullConfiguration != null)
          "pull_configuration": encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": encodeValue(pushConfiguration),
        "currency": encodeValue(currency),
        "label": encodeValue(label),
        "owner": encodeValue(owner),
        "reference": encodeValue(reference),
        "type": encodeValue(type),
        "dosh_account": encodeValue(doshAccount),
      };
}
