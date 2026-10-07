part of '../../financial_account.dart';

/// Wallet fields used by the wallet variant of [CreateRequest].
final class WalletRequest implements InttegroValue {
  final core.CustomDataInput? customData;
  final String? description;
  final WalletRequestPullConfiguration? pullConfiguration;
  final WalletRequestPushConfiguration? pushConfiguration;
  final String currency;
  final String label;
  final OwnerInput owner;
  final String reference;
  final Type type;
  final WalletDetails wallet;
  const WalletRequest({
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
  factory WalletRequest.fromJson(Map<String, Object?> json) => WalletRequest(
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataInput.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : WalletRequestPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : WalletRequestPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        currency: json["currency"] as String,
        label: json["label"] as String,
        owner: OwnerInput.fromJson(
          (json["owner"] as Map).cast<String, Object?>(),
        ),
        reference: json["reference"] as String,
        type: Type.fromJson(json["type"]),
        wallet: WalletDetails.fromJson(
          (json["wallet"] as Map).cast<String, Object?>(),
        ),
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
        "wallet": encodeValue(wallet),
      };
}
