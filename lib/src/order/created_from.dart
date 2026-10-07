part of '../../order.dart';

/// The source resource from which an order was created.
///
/// Exposes [source], [resourceType], and [resourceId].
final class CreatedFrom implements InttegroValue {
  final String? source;
  final CreatedFromResourceType? resourceType;
  final String? resourceId;
  const CreatedFrom({this.source, this.resourceType, this.resourceId});
  factory CreatedFrom.fromJson(Map<String, Object?> json) => CreatedFrom(
        source: json["source"] == null ? null : json["source"] as String,
        resourceType: json["resource_type"] == null
            ? null
            : CreatedFromResourceType.fromJson(json["resource_type"]),
        resourceId:
            json["resource_id"] == null ? null : json["resource_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (source != null) "source": encodeValue(source),
        if (resourceType != null) "resource_type": encodeValue(resourceType),
        if (resourceId != null) "resource_id": encodeValue(resourceId),
      };
}
