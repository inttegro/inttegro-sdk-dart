part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentMerchant implements _InttegroValue {
  final String? appName;
  final String? organizationId;
  final String? organizationName;
  const PurchaseIntentMerchant({
    this.appName,
    this.organizationId,
    this.organizationName,
  });
  factory PurchaseIntentMerchant.fromJson(Map<String, Object?> json) =>
      PurchaseIntentMerchant(
        appName: json["app_name"] == null ? null : json["app_name"] as String,
        organizationId: json["organization_id"] == null
            ? null
            : json["organization_id"] as String,
        organizationName: json["organization_name"] == null
            ? null
            : json["organization_name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (appName != null) "app_name": _encodeValue(appName),
        if (organizationId != null)
          "organization_id": _encodeValue(organizationId),
        if (organizationName != null)
          "organization_name": _encodeValue(organizationName),
      };
}
