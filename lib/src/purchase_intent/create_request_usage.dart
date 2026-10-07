part of '../../purchase_intent.dart';

/// Single-use or multi-use configuration for a new purchase intent.
final class CreateRequestUsage implements InttegroValue {
  final bool? singleUse;
  final bool? multiUse;
  const CreateRequestUsage({this.singleUse, this.multiUse});
  factory CreateRequestUsage.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateRequestUsage(
        singleUse:
            json["single_use"] == null ? null : json["single_use"] as bool,
        multiUse: json["multi_use"] == null ? null : json["multi_use"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (singleUse != null) "single_use": encodeValue(singleUse),
        if (multiUse != null) "multi_use": encodeValue(multiUse),
      };
}
