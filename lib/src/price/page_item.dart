part of '../../price.dart';

/// A catalog price entry returned in a paginated result.
///
/// Exposes [id], [label], [about], and [active], among other contract fields.
final class PageItem implements InttegroValue {
  final String id;
  final String? label;
  final String? about;
  final bool active;
  final inttegro_money.Amount nominal;
  final String? productId;
  final EmbeddedProduct? product;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;
  const PageItem({
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
  factory PageItem.fromJson(Map<String, Object?> json) => PageItem(
        id: json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        active: json["active"] as bool,
        nominal: inttegro_money.Amount.fromJson(
            (json["nominal"] as Map).cast<String, Object?>()),
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        product: json["product"] == null
            ? null
            : EmbeddedProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        createdAt: decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : decodeDateTime(json["archived_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        if (label != null) "label": encodeValue(label),
        if (about != null) "about": encodeValue(about),
        "active": encodeValue(active),
        "nominal": encodeValue(nominal),
        if (productId != null) "product_id": encodeValue(productId),
        if (product != null) "product": encodeValue(product),
        "created_at": encodeValue(createdAt),
        if (updatedAt != null) "updated_at": encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": encodeValue(archivedAt),
      };
}
