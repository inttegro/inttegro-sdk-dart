part of '../../product.dart';

/// The product representation returned after an update.
///
/// Exposes [id], [name], [description], and [about], among other contract
/// fields.
final class Updated implements InttegroValue {
  final String id;
  final String name;
  final String? description;
  final String? about;
  final Type type;
  final String? reference;
  final String? taxCode;
  final String? category;
  final core.CustomData? customData;
  final Dimensions? dimensions;
  final List<PriceSummary>? prices;
  final String? unitDim;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const Updated({
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
  factory Updated.fromJson(Map<String, Object?> json) => Updated(
        id: json["id"] as String,
        name: json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        type: Type.fromJson(json["type"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => PriceSummary.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
        createdAt: decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : decodeDateTime(json["updated_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "name": encodeValue(name),
        if (description != null) "description": encodeValue(description),
        if (about != null) "about": encodeValue(about),
        "type": encodeValue(type),
        if (reference != null) "reference": encodeValue(reference),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        if (category != null) "category": encodeValue(category),
        if (customData != null) "custom_data": encodeValue(customData),
        if (dimensions != null) "dimensions": encodeValue(dimensions),
        if (prices != null) "prices": encodeValue(prices),
        if (unitDim != null) "unit_dim": encodeValue(unitDim),
        "created_at": encodeValue(createdAt),
        if (updatedAt != null) "updated_at": encodeValue(updatedAt),
      };
}
