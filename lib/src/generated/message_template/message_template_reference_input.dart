part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class MessageTemplateReferenceInput implements _InttegroValue {
  final JsonData? variables;
  final String templateId;
  const MessageTemplateReferenceInput({
    this.variables,
    required this.templateId,
  });
  factory MessageTemplateReferenceInput.fromJson(Map<String, Object?> json) =>
      MessageTemplateReferenceInput(
        variables: json["variables"] == null
            ? null
            : JsonData.fromJson(json["variables"]),
        templateId: json["template_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (variables != null) "variables": _encodeValue(variables),
        "template_id": _encodeValue(templateId),
      };
}
