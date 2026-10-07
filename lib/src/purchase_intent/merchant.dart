part of '../../purchase_intent.dart';

/// The merchant identity presented with a purchase intent.
///
/// Exposes [appName], [organizationId], and [organizationName].
final class Merchant implements InttegroValue {
  final String? appName;
  final String? organizationId;
  final String? organizationName;
  const Merchant({
    this.appName,
    this.organizationId,
    this.organizationName,
  });
  factory Merchant.fromJson(Map<String, Object?> json) => Merchant(
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
        if (appName != null) "app_name": encodeValue(appName),
        if (organizationId != null)
          "organization_id": encodeValue(organizationId),
        if (organizationName != null)
          "organization_name": encodeValue(organizationName),
      };
}
