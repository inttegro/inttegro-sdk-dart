part of '../../product.dart';

/// Parameters for creating a product.
///
/// Carries [reference], [description], [about], and [taxCode], among other
/// supported fields.
final class CreateRequest implements InttegroValue {
  final String? reference;
  final String? description;
  final String? about;
  final String? taxCode;
  final String? category;
  final ShipmentInput? shipment;
  final DimensionsInput? dimensions;
  final String? unitDimension;
  final MediaInput? media;
  final List<AttributeInput>? attributes;
  final bool? publish;
  final core.CustomData? customData;
  final Type type;
  final String name;
  const CreateRequest({
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
  factory CreateRequest.fromJson(Map<String, Object?> json) => CreateRequest(
        reference:
            json["reference"] == null ? null : json["reference"] as String,
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
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => AttributeInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        publish: json["publish"] == null ? null : json["publish"] as bool,
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        type: Type.fromJson(json["type"]),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reference != null) "reference": encodeValue(reference),
        if (description != null) "description": encodeValue(description),
        if (about != null) "about": encodeValue(about),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        if (category != null) "category": encodeValue(category),
        if (shipment != null) "shipment": encodeValue(shipment),
        if (dimensions != null) "dimensions": encodeValue(dimensions),
        if (unitDimension != null) "unit_dimension": encodeValue(unitDimension),
        if (media != null) "media": encodeValue(media),
        if (attributes != null) "attributes": encodeValue(attributes),
        if (publish != null) "publish": encodeValue(publish),
        if (customData != null) "custom_data": encodeValue(customData),
        "type": encodeValue(type),
        "name": encodeValue(name),
      };
}
