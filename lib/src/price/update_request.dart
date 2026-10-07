part of '../../price.dart';

/// Parameters for updating a price.
///
/// Carries [label], [about], and [priceId].
final class UpdateRequest implements InttegroValue {
  final String? label;
  final String? about;
  final String priceId;
  const UpdateRequest({this.label, this.about, required this.priceId});
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        priceId: json["price_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": encodeValue(label),
        if (about != null) "about": encodeValue(about),
        "price_id": encodeValue(priceId),
      };
}
