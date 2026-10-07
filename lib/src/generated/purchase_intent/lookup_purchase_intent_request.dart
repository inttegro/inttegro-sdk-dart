part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupPurchaseIntentRequest implements _InttegroValue {
  final String id;
  const LookupPurchaseIntentRequest({required this.id});
  factory LookupPurchaseIntentRequest.fromJson(Map<String, Object?> json) =>
      LookupPurchaseIntentRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": _encodeValue(id)};
}
