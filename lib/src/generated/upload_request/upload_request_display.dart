part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UploadRequestDisplay implements _InttegroValue {
  final String? title;
  final String? description;
  final String? helpText;
  const UploadRequestDisplay({this.title, this.description, this.helpText});
  factory UploadRequestDisplay.fromJson(Map<String, Object?> json) =>
      UploadRequestDisplay(
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
