part of '../../product.dart';

/// A catalog product and its prices, attributes, media, and fulfillment data.
///
/// [type] and [dimensions] describe what is sold, while [shipment] describes
/// how the product is delivered or fulfilled.
final class Product implements InttegroValue {
  final String id;
  final Type type;
  final String? reference;
  final String name;
  final String? description;
  final String? about;
  final String? taxCode;
  final String? category;
  final List<PriceSummary>? prices;
  final Shipment? shipment;
  final Media? media;
  final List<Attribute>? attributes;
  final Dimensions? dimensions;
  final core.CustomData? customData;
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
        type: Type.fromJson(json["type"]),
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
                  (item) => PriceSummary.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        shipment: json["shipment"] == null
            ? null
            : Shipment.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        media: json["media"] == null
            ? null
            : Media.fromJson((json["media"] as Map).cast<String, Object?>()),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => Attribute.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        active: json["active"] as bool,
        createdAt: decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : decodeDateTime(json["archived_at"]),
        publishedAt: json["published_at"] == null
            ? null
            : decodeDateTime(json["published_at"]),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "type": encodeValue(type),
        if (reference != null) "reference": encodeValue(reference),
        "name": encodeValue(name),
        if (description != null) "description": encodeValue(description),
        if (about != null) "about": encodeValue(about),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        if (category != null) "category": encodeValue(category),
        if (prices != null) "prices": encodeValue(prices),
        if (shipment != null) "shipment": encodeValue(shipment),
        if (media != null) "media": encodeValue(media),
        if (attributes != null) "attributes": encodeValue(attributes),
        if (dimensions != null) "dimensions": encodeValue(dimensions),
        if (customData != null) "custom_data": encodeValue(customData),
        "active": encodeValue(active),
        "created_at": encodeValue(createdAt),
        if (updatedAt != null) "updated_at": encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": encodeValue(archivedAt),
        if (publishedAt != null) "published_at": encodeValue(publishedAt),
        if (unitDim != null) "unit_dim": encodeValue(unitDim),
      };
}
