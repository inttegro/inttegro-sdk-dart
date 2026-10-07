part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderCreatedFrom implements _InttegroValue {
  final String? source;
  final OrderCreatedFromResourceType? resourceType;
  final String? resourceId;
  const OrderCreatedFrom({this.source, this.resourceType, this.resourceId});
  factory OrderCreatedFrom.fromJson(Map<String, Object?> json) =>
      OrderCreatedFrom(
        source: json["source"] == null ? null : json["source"] as String,
        resourceType: json["resource_type"] == null
            ? null
            : OrderCreatedFromResourceType.fromJson(json["resource_type"]),
        resourceId:
            json["resource_id"] == null ? null : json["resource_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (source != null) "source": _encodeValue(source),
        if (resourceType != null) "resource_type": _encodeValue(resourceType),
        if (resourceId != null) "resource_id": _encodeValue(resourceId),
      };
}
