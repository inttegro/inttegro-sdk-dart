part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UpdatedProduct implements _InttegroValue {
  final String id;
  final String name;
  final String? description;
  final String? about;
  final ProductType type;
  final String? reference;
  final String? taxCode;
  final String? category;
  final CustomData? customData;
  final ProductDimensions? dimensions;
  final List<ProductPriceSummary>? prices;
  final String? unitDim;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const UpdatedProduct({
    required this.id,
    required this.name,
    this.description,
    this.about,
    required this.type,
    this.reference,
    this.taxCode,
    this.category,
    this.customData,
    this.dimensions,
    this.prices,
    this.unitDim,
    required this.createdAt,
    this.updatedAt,
  });
  factory UpdatedProduct.fromJson(Map<String, Object?> json) => UpdatedProduct(
        id: json["id"] as String,
        name: json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        type: ProductType.fromJson(json["type"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => ProductPriceSummary.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (description != null) "description": _encodeValue(description),
        if (about != null) "about": _encodeValue(about),
        "type": _encodeValue(type),
        if (reference != null) "reference": _encodeValue(reference),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (category != null) "category": _encodeValue(category),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (prices != null) "prices": _encodeValue(prices),
        if (unitDim != null) "unit_dim": _encodeValue(unitDim),
        "created_at": _encodeValue(createdAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
      };
}
