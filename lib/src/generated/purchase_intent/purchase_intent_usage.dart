part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentUsage implements _InttegroValue {
  final bool? multiUse;
  final PurchaseIntentUsageOrder? order;
  final bool? singleUse;
  const PurchaseIntentUsage({this.multiUse, this.order, this.singleUse});
  factory PurchaseIntentUsage.fromJson(Map<String, Object?> json) =>
      PurchaseIntentUsage(
        multiUse: json["multi_use"] == null ? null : json["multi_use"] as bool,
        order: json["order"] == null
            ? null
            : PurchaseIntentUsageOrder.fromJson(
                (json["order"] as Map).cast<String, Object?>(),
              ),
        singleUse:
            json["single_use"] == null ? null : json["single_use"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (multiUse != null) "multi_use": _encodeValue(multiUse),
        if (order != null) "order": _encodeValue(order),
        if (singleUse != null) "single_use": _encodeValue(singleUse),
      };
}
