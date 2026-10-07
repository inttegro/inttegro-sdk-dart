part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateProductRequest implements _InttegroValue {
  final String? reference;
  final String? description;
  final String? about;
  final String? taxCode;
  final String? category;
  final ProductShipmentInput? shipment;
  final ProductDimensionsInput? dimensions;
  final String? unitDimension;
  final ProductMediaInput? media;
  final List<ProductAttributeInput>? attributes;
  final bool? publish;
  final CustomData? customData;
  final ProductType type;
  final String name;
  const CreateProductRequest({
    this.reference,
    this.description,
    this.about,
    this.taxCode,
    this.category,
    this.shipment,
    this.dimensions,
    this.unitDimension,
    this.media,
    this.attributes,
    this.publish,
    this.customData,
    required this.type,
    required this.name,
  });
  factory CreateProductRequest.fromJson(Map<String, Object?> json) =>
      CreateProductRequest(
        reference:
            json["reference"] == null ? null : json["reference"] as String,
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
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => ProductAttributeInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        publish: json["publish"] == null ? null : json["publish"] as bool,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        type: ProductType.fromJson(json["type"]),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reference != null) "reference": _encodeValue(reference),
        if (description != null) "description": _encodeValue(description),
        if (about != null) "about": _encodeValue(about),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (category != null) "category": _encodeValue(category),
        if (shipment != null) "shipment": _encodeValue(shipment),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (unitDimension != null)
          "unit_dimension": _encodeValue(unitDimension),
        if (media != null) "media": _encodeValue(media),
        if (attributes != null) "attributes": _encodeValue(attributes),
        if (publish != null) "publish": _encodeValue(publish),
        if (customData != null) "custom_data": _encodeValue(customData),
        "type": _encodeValue(type),
        "name": _encodeValue(name),
      };
}
