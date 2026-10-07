part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentProduct implements _InttegroValue {
  final String id;
  final String? about;
  final bool active;
  final DateTime? archivedAt;
  final List<PurchaseIntentProductAttributesItem>? attributes;
  final String? category;
  final DateTime createdAt;
  final CustomData? customData;
  final String? description;
  final ProductDimensions? dimensions;
  final ProductMedia? media;
  final String name;
  final DateTime? publishedAt;
  final String? reference;
  final ProductShipment? shipment;
  final String? taxCode;
  final ProductType type;
  final String? unitDim;
  final DateTime? updatedAt;
  final List<ProductPriceSummary>? prices;
  final String? variantSetId;
  const PurchaseIntentProduct({
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
    this.prices,
    this.variantSetId,
  });
  factory PurchaseIntentProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      PurchaseIntentProduct(
        id: json["id"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        active: json["active"] as bool,
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => PurchaseIntentProductAttributesItem.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        category: json["category"] == null ? null : json["category"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        media: json["media"] == null
            ? null
            : ProductMedia.fromJson(
                (json["media"] as Map).cast<String, Object?>()),
        name: json["name"] as String,
        publishedAt: json["published_at"] == null
            ? null
            : _decodeDateTime(json["published_at"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        shipment: json["shipment"] == null
            ? null
            : ProductShipment.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        type: ProductType.fromJson(json["type"]),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => ProductPriceSummary.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        variantSetId: json["variant_set_id"] == null
            ? null
            : json["variant_set_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (about != null) "about": _encodeValue(about),
        "active": _encodeValue(active),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        if (attributes != null) "attributes": _encodeValue(attributes),
        if (category != null) "category": _encodeValue(category),
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (media != null) "media": _encodeValue(media),
        "name": _encodeValue(name),
        if (publishedAt != null) "published_at": _encodeValue(publishedAt),
        if (reference != null) "reference": _encodeValue(reference),
        if (shipment != null) "shipment": _encodeValue(shipment),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        "type": _encodeValue(type),
        if (unitDim != null) "unit_dim": _encodeValue(unitDim),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (prices != null) "prices": _encodeValue(prices),
        if (variantSetId != null) "variant_set_id": _encodeValue(variantSetId),
      };
}
