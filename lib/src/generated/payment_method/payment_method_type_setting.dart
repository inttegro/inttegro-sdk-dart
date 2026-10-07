part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodTypeSetting implements _InttegroValue {
  final PaymentMethodType? type;
  final String? name;
  final String? description;
  final bool enabled;
  final bool confirmsUse;
  const PaymentMethodTypeSetting({
    this.type,
    this.name,
    this.description,
    required this.enabled,
    required this.confirmsUse,
  });
  factory PaymentMethodTypeSetting.fromJson(Map<String, Object?> json) =>
      PaymentMethodTypeSetting(
        type: json["type"] == null
            ? null
            : PaymentMethodType.fromJson(json["type"]),
        name: json["name"] == null ? null : json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        enabled: json["enabled"] as bool,
        confirmsUse: json["confirms_use"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (name != null) "name": _encodeValue(name),
        if (description != null) "description": _encodeValue(description),
        "enabled": _encodeValue(enabled),
        "confirms_use": _encodeValue(confirmsUse),
      };
}
