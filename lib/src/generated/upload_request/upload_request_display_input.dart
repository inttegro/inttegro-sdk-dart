part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UploadRequestDisplayInput implements _InttegroValue {
  final String? title;
  final String? description;
  final String? helpText;
  const UploadRequestDisplayInput({
    this.title,
    this.description,
    this.helpText,
  });
  factory UploadRequestDisplayInput.fromJson(Map<String, Object?> json) =>
      UploadRequestDisplayInput(
        title: json["title"] == null ? null : json["title"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        helpText:
            json["help_text"] == null ? null : json["help_text"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (title != null) "title": _encodeValue(title),
        if (description != null) "description": _encodeValue(description),
        if (helpText != null) "help_text": _encodeValue(helpText),
      };
}
