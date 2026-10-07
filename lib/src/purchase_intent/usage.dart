part of '../../purchase_intent.dart';

/// Single-use or multi-use state for a purchase intent.
///
/// Exposes [multiUse], [order], and [singleUse].
final class Usage implements InttegroValue {
  final bool? multiUse;
  final UsageOrder? order;
  final bool? singleUse;
  const Usage({this.multiUse, this.order, this.singleUse});
  factory Usage.fromJson(Map<String, Object?> json) => Usage(
        multiUse: json["multi_use"] == null ? null : json["multi_use"] as bool,
        order: json["order"] == null
            ? null
            : UsageOrder.fromJson(
                (json["order"] as Map).cast<String, Object?>(),
              ),
        singleUse:
            json["single_use"] == null ? null : json["single_use"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (multiUse != null) "multi_use": encodeValue(multiUse),
        if (order != null) "order": encodeValue(order),
        if (singleUse != null) "single_use": encodeValue(singleUse),
      };
}
