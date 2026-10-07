part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequestUsage implements _InttegroValue {
  final bool? singleUse;
  final bool? multiUse;
  const CreatePurchaseIntentRequestUsage({this.singleUse, this.multiUse});
  factory CreatePurchaseIntentRequestUsage.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequestUsage(
        singleUse:
            json["single_use"] == null ? null : json["single_use"] as bool,
        multiUse: json["multi_use"] == null ? null : json["multi_use"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (singleUse != null) "single_use": _encodeValue(singleUse),
        if (multiUse != null) "multi_use": _encodeValue(multiUse),
      };
}
