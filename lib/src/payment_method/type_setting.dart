part of '../../payment_method.dart';

/// Configuration and confirmation requirements for one payment-method type.
///
/// Exposes [type], [name], [description], and [enabled], among other contract
/// fields.
final class TypeSetting implements InttegroValue {
  final Type? type;
  final String? name;
  final String? description;
  final bool enabled;
  final bool confirmsUse;
  const TypeSetting({
    this.type,
    this.name,
    this.description,
    required this.enabled,
    required this.confirmsUse,
  });
  factory TypeSetting.fromJson(Map<String, Object?> json) => TypeSetting(
        type: json["type"] == null ? null : Type.fromJson(json["type"]),
        name: json["name"] == null ? null : json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        enabled: json["enabled"] as bool,
        confirmsUse: json["confirms_use"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": encodeValue(type),
        if (name != null) "name": encodeValue(name),
        if (description != null) "description": encodeValue(description),
        "enabled": encodeValue(enabled),
        "confirms_use": encodeValue(confirmsUse),
      };
}
