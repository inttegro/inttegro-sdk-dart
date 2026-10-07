part of '../../message_template.dart';

/// Reference fields accepted by the message template API.
///
/// Carries [variables] and [templateId].
final class ReferenceInput implements InttegroValue {
  final core.JsonData? variables;
  final String templateId;
  const ReferenceInput({
    this.variables,
    required this.templateId,
  });
  factory ReferenceInput.fromJson(Map<String, Object?> json) => ReferenceInput(
        variables: json["variables"] == null
            ? null
            : core.JsonData.fromJson(json["variables"]),
        templateId: json["template_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (variables != null) "variables": encodeValue(variables),
        "template_id": encodeValue(templateId),
      };
}
