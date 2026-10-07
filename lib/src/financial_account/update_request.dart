part of '../../financial_account.dart';

/// Parameters for updating a financial account.
///
/// Carries [customData], [description], [label], and [owner], among other
/// supported fields.
final class UpdateRequest implements InttegroValue {
  final core.CustomDataPatch? customData;
  final String? description;
  final String? label;
  final OwnerUpdateInput? owner;
  final String? reference;
  final String accountId;
  const UpdateRequest({
    this.customData,
    this.description,
    this.label,
    this.owner,
    this.reference,
    required this.accountId,
  });
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataPatch.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        owner: json["owner"] == null
            ? null
            : OwnerUpdateInput.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        accountId: json["account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": encodeValue(customData),
        if (description != null) "description": encodeValue(description),
        if (label != null) "label": encodeValue(label),
        if (owner != null) "owner": encodeValue(owner),
        if (reference != null) "reference": encodeValue(reference),
        "account_id": encodeValue(accountId),
      };
}
