part of '../../price.dart';

/// The product snapshot embedded in a price response.
///
/// Exposes [id], [about], [active], and [archivedAt], among other contract
/// fields.
final class EmbeddedProduct implements InttegroValue {
  final String id;
  final String? about;
  final bool active;
  final DateTime? archivedAt;
  final List<EmbeddedProductAttributesItem>? attributes;
  final String? category;
  final DateTime createdAt;
  final core.CustomData? customData;
  final String? description;
  final inttegro_product.Dimensions? dimensions;
  final inttegro_product.Media? media;
  final String name;
  final DateTime? publishedAt;
  final String? reference;
  final inttegro_product.Shipment? shipment;
  final String? taxCode;
  final inttegro_product.Type type;
  final String? unitDim;
  final DateTime? updatedAt;
  const EmbeddedProduct({
    required this.id,
    this.about,
    required this.active,
    this.archivedAt,
    this.attributes,
    this.category,
    required this.createdAt,
    this.customData,
    this.description,
    this.dimensions,
    this.media,
    required this.name,
    this.publishedAt,
    this.reference,
    this.shipment,
    this.taxCode,
    required this.type,
    this.unitDim,
    this.updatedAt,
  });
  factory EmbeddedProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      EmbeddedProduct(
        id: json["id"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        active: json["active"] as bool,
        archivedAt: json["archived_at"] == null
            ? null
            : decodeDateTime(json["archived_at"]),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => EmbeddedProductAttributesItem.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        category: json["category"] == null ? null : json["category"] as String,
        createdAt: decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        dimensions: json["dimensions"] == null
            ? null
            : inttegro_product.Dimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        media: json["media"] == null
            ? null
            : inttegro_product.Media.fromJson(
                (json["media"] as Map).cast<String, Object?>()),
        name: json["name"] as String,
        publishedAt: json["published_at"] == null
            ? null
            : decodeDateTime(json["published_at"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        shipment: json["shipment"] == null
            ? null
            : inttegro_product.Shipment.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        type: inttegro_product.Type.fromJson(json["type"]),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
        updatedAt: json["updated_at"] == null
            ? null
            : decodeDateTime(json["updated_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        if (about != null) "about": encodeValue(about),
        "active": encodeValue(active),
        if (archivedAt != null) "archived_at": encodeValue(archivedAt),
        if (attributes != null) "attributes": encodeValue(attributes),
        if (category != null) "category": encodeValue(category),
        "created_at": encodeValue(createdAt),
        if (customData != null) "custom_data": encodeValue(customData),
        if (description != null) "description": encodeValue(description),
        if (dimensions != null) "dimensions": encodeValue(dimensions),
        if (media != null) "media": encodeValue(media),
        "name": encodeValue(name),
        if (publishedAt != null) "published_at": encodeValue(publishedAt),
        if (reference != null) "reference": encodeValue(reference),
        if (shipment != null) "shipment": encodeValue(shipment),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        "type": encodeValue(type),
        if (unitDim != null) "unit_dim": encodeValue(unitDim),
        if (updatedAt != null) "updated_at": encodeValue(updatedAt),
      };
}
