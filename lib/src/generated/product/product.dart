part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Product implements _InttegroValue {
  final String id;
  final ProductType type;
  final String? reference;
  final String name;
  final String? description;
  final String? about;
  final String? taxCode;
  final String? category;
  final List<ProductPriceSummary>? prices;
  final ProductShipment? shipment;
  final ProductMedia? media;
  final List<ProductAttribute>? attributes;
  final ProductDimensions? dimensions;
  final CustomData? customData;
  final bool active;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;
  final DateTime? publishedAt;
  final String? unitDim;
  const Product({
    required this.id,
    required this.type,
    this.reference,
    required this.name,
    this.description,
    this.about,
    this.taxCode,
    this.category,
    this.prices,
    this.shipment,
    this.media,
    this.attributes,
    this.dimensions,
    this.customData,
    required this.active,
    required this.createdAt,
    this.updatedAt,
    this.archivedAt,
    this.publishedAt,
    this.unitDim,
  });
  factory Product.fromJson(Map<String, Object?> json) => Product(
        id: json["id"] as String,
        type: ProductType.fromJson(json["type"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        name: json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => ProductPriceSummary.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        shipment: json["shipment"] == null
            ? null
            : ProductShipment.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        media: json["media"] == null
            ? null
            : ProductMedia.fromJson(
                (json["media"] as Map).cast<String, Object?>()),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => ProductAttribute.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        active: json["active"] as bool,
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        publishedAt: json["published_at"] == null
            ? null
            : _decodeDateTime(json["published_at"]),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "type": _encodeValue(type),
        if (reference != null) "reference": _encodeValue(reference),
        "name": _encodeValue(name),
        if (description != null) "description": _encodeValue(description),
        if (about != null) "about": _encodeValue(about),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (category != null) "category": _encodeValue(category),
        if (prices != null) "prices": _encodeValue(prices),
        if (shipment != null) "shipment": _encodeValue(shipment),
        if (media != null) "media": _encodeValue(media),
        if (attributes != null) "attributes": _encodeValue(attributes),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (customData != null) "custom_data": _encodeValue(customData),
        "active": _encodeValue(active),
        "created_at": _encodeValue(createdAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        if (publishedAt != null) "published_at": _encodeValue(publishedAt),
        if (unitDim != null) "unit_dim": _encodeValue(unitDim),
      };
}
