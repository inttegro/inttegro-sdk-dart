part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountUpdateRequest implements _InttegroValue {
  final CustomDataPatch? customData;
  final String? description;
  final String? label;
  final FinancialAccountOwnerUpdateInput? owner;
  final String? reference;
  final String accountId;
  const FinancialAccountUpdateRequest({
    this.customData,
    this.description,
    this.label,
    this.owner,
    this.reference,
    required this.accountId,
  });
  factory FinancialAccountUpdateRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountUpdateRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomDataPatch.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        owner: json["owner"] == null
            ? null
            : FinancialAccountOwnerUpdateInput.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        accountId: json["account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (label != null) "label": _encodeValue(label),
        if (owner != null) "owner": _encodeValue(owner),
        if (reference != null) "reference": _encodeValue(reference),
        "account_id": _encodeValue(accountId),
      };
}
