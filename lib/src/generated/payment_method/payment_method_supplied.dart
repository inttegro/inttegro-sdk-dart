part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodSupplied implements _InttegroValue {
  final String? attemptId;
  final String by;
  final String? channel;
  final String? resourceId;
  final String? resourceType;
  final DateTime suppliedAt;
  const PaymentMethodSupplied({
    this.attemptId,
    required this.by,
    this.channel,
    this.resourceId,
    this.resourceType,
    required this.suppliedAt,
  });
  factory PaymentMethodSupplied.fromJson(Map<String, Object?> json) =>
      PaymentMethodSupplied(
        attemptId:
            json["attempt_id"] == null ? null : json["attempt_id"] as String,
        by: json["by"] as String,
        channel: json["channel"] == null ? null : json["channel"] as String,
        resourceId:
            json["resource_id"] == null ? null : json["resource_id"] as String,
        resourceType: json["resource_type"] == null
            ? null
            : json["resource_type"] as String,
        suppliedAt: _decodeDateTime(json["supplied_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (attemptId != null) "attempt_id": _encodeValue(attemptId),
        "by": _encodeValue(by),
        if (channel != null) "channel": _encodeValue(channel),
        if (resourceId != null) "resource_id": _encodeValue(resourceId),
        if (resourceType != null) "resource_type": _encodeValue(resourceType),
        "supplied_at": _encodeValue(suppliedAt),
      };
}
