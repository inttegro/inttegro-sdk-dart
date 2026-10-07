part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CatalogPrice implements _InttegroValue {
  final String id;
  final String? label;
  final String? about;
  final bool active;
  final Amount nominal;
  final String? productId;
  final PriceEmbeddedProduct? product;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;
  const CatalogPrice({
    required this.id,
    this.label,
    this.about,
    required this.active,
    required this.nominal,
    this.productId,
    this.product,
    required this.createdAt,
    this.updatedAt,
    this.archivedAt,
  });
  factory CatalogPrice.fromJson(Map<String, Object?> json) => CatalogPrice(
        id: json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        active: json["active"] as bool,
        nominal:
            Amount.fromJson((json["nominal"] as Map).cast<String, Object?>()),
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        product: json["product"] == null
            ? null
            : PriceEmbeddedProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        if (about != null) "about": _encodeValue(about),
        "active": _encodeValue(active),
        "nominal": _encodeValue(nominal),
        if (productId != null) "product_id": _encodeValue(productId),
        if (product != null) "product": _encodeValue(product),
        "created_at": _encodeValue(createdAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
      };
}
