part of '../../operating_policy.dart';

/// A mutually exclusive reusable-policy reference or inline configuration.
final class Selection implements InttegroValue {
  final String? id;
  final CapabilitiesInput? capabilities;
  const Selection.byId(String value)
      : id = value,
        capabilities = null;
  const Selection.inline(CapabilitiesInput value)
      : id = null,
        capabilities = value;
  factory Selection.fromJson(Map<String, Object?> json) => json['id'] != null
      ? Selection.byId(json['id'] as String)
      : Selection.inline(
          CapabilitiesInput.fromJson(
            (json['capabilities'] as Map).cast<String, Object?>(),
          ),
        );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) 'id': id,
        if (capabilities != null) 'capabilities': encodeValue(capabilities),
      };
}
