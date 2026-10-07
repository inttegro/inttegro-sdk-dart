part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdateProductRequest implements _InttegroValue {
  final ProductType? type;
  final String? name;
  final String? description;
  final String? about;
  final String? taxCode;
  final String? category;
  final ProductShipmentInput? shipment;
  final ProductDimensionsInput? dimensions;
  final String? unitDimension;
  final ProductMediaInput? media;
  final List<String>? images;
  final List<ProductAttributeInput>? attributes;
  final CustomData? customData;
  final String productId;
  const UpdateProductRequest({
    this.type,
    this.name,
    this.description,
    this.about,
    this.taxCode,
    this.category,
    this.shipment,
    this.dimensions,
    this.unitDimension,
    this.media,
    this.images,
    this.attributes,
    this.customData,
    required this.productId,
  });
  factory UpdateProductRequest.fromJson(Map<String, Object?> json) =>
      UpdateProductRequest(
        type: json["type"] == null ? null : ProductType.fromJson(json["type"]),
        name: json["name"] == null ? null : json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        shipment: json["shipment"] == null
            ? null
            : ProductShipmentInput.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensionsInput.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        unitDimension: json["unit_dimension"] == null
            ? null
            : json["unit_dimension"] as String,
        media: json["media"] == null
            ? null
            : ProductMediaInput.fromJson(
                (json["media"] as Map).cast<String, Object?>(),
              ),
        images: json["images"] == null
            ? null
            : (json["images"] as List).map((item) => item as String).toList(),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => ProductAttributeInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        productId: json["product_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (name != null) "name": _encodeValue(name),
        if (description != null) "description": _encodeValue(description),
        if (about != null) "about": _encodeValue(about),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (category != null) "category": _encodeValue(category),
        if (shipment != null) "shipment": _encodeValue(shipment),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (unitDimension != null)
          "unit_dimension": _encodeValue(unitDimension),
        if (media != null) "media": _encodeValue(media),
        if (images != null) "images": _encodeValue(images),
        if (attributes != null) "attributes": _encodeValue(attributes),
        if (customData != null) "custom_data": _encodeValue(customData),
        "product_id": _encodeValue(productId),
      };
}
