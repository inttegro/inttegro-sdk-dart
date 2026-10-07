part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdatePriceRequest implements _InttegroValue {
  final String? label;
  final String? about;
  final String priceId;
  const UpdatePriceRequest({this.label, this.about, required this.priceId});
  factory UpdatePriceRequest.fromJson(Map<String, Object?> json) =>
      UpdatePriceRequest(
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        priceId: json["price_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": _encodeValue(label),
        if (about != null) "about": _encodeValue(about),
        "price_id": _encodeValue(priceId),
      };
}
