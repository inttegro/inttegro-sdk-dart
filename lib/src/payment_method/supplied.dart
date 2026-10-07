part of '../../payment_method.dart';

/// Audit metadata describing how a payment method was supplied.
///
/// Exposes [attemptId], [by], [channel], and [resourceId], among other
/// contract fields.
final class Supplied implements InttegroValue {
  final String? attemptId;
  final String by;
  final String? channel;
  final String? resourceId;
  final String? resourceType;
  final DateTime suppliedAt;
  const Supplied({
    this.attemptId,
    required this.by,
    this.channel,
    this.resourceId,
    this.resourceType,
    required this.suppliedAt,
  });
  factory Supplied.fromJson(Map<String, Object?> json) => Supplied(
        attemptId:
            json["attempt_id"] == null ? null : json["attempt_id"] as String,
        by: json["by"] as String,
        channel: json["channel"] == null ? null : json["channel"] as String,
        resourceId:
            json["resource_id"] == null ? null : json["resource_id"] as String,
        resourceType: json["resource_type"] == null
            ? null
            : json["resource_type"] as String,
        suppliedAt: decodeDateTime(json["supplied_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (attemptId != null) "attempt_id": encodeValue(attemptId),
        "by": encodeValue(by),
        if (channel != null) "channel": encodeValue(channel),
        if (resourceId != null) "resource_id": encodeValue(resourceId),
        if (resourceType != null) "resource_type": encodeValue(resourceType),
        "supplied_at": encodeValue(suppliedAt),
      };
}
