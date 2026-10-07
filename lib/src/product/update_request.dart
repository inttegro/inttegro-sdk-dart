part of '../../product.dart';

/// Parameters for updating a product.
///
/// Carries [type], [name], [description], and [about], among other supported
/// fields.
final class UpdateRequest implements InttegroValue {
  final Type? type;
  final String? name;
  final String? description;
  final String? about;
  final String? taxCode;
  final String? category;
  final ShipmentInput? shipment;
  final DimensionsInput? dimensions;
  final String? unitDimension;
  final MediaInput? media;
  final List<String>? images;
  final List<AttributeInput>? attributes;
  final core.CustomData? customData;
  final String productId;
  const UpdateRequest({
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
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        type: json["type"] == null ? null : Type.fromJson(json["type"]),
        name: json["name"] == null ? null : json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        shipment: json["shipment"] == null
            ? null
            : ShipmentInput.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        dimensions: json["dimensions"] == null
            ? null
            : DimensionsInput.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        unitDimension: json["unit_dimension"] == null
            ? null
            : json["unit_dimension"] as String,
        media: json["media"] == null
            ? null
            : MediaInput.fromJson(
                (json["media"] as Map).cast<String, Object?>(),
              ),
        images: json["images"] == null
            ? null
            : (json["images"] as List).map((item) => item as String).toList(),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => AttributeInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        productId: json["product_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": encodeValue(type),
        if (name != null) "name": encodeValue(name),
        if (description != null) "description": encodeValue(description),
        if (about != null) "about": encodeValue(about),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        if (category != null) "category": encodeValue(category),
        if (shipment != null) "shipment": encodeValue(shipment),
        if (dimensions != null) "dimensions": encodeValue(dimensions),
        if (unitDimension != null) "unit_dimension": encodeValue(unitDimension),
        if (media != null) "media": encodeValue(media),
        if (images != null) "images": encodeValue(images),
        if (attributes != null) "attributes": encodeValue(attributes),
        if (customData != null) "custom_data": encodeValue(customData),
        "product_id": encodeValue(productId),
      };
}
