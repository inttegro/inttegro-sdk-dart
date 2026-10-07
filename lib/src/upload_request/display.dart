part of '../../upload_request.dart';

/// Customer-facing instructions shown for an upload request.
///
/// Exposes [title], [description], and [helpText].
final class Display implements InttegroValue {
  final String? title;
  final String? description;
  final String? helpText;
  const Display({this.title, this.description, this.helpText});
  factory Display.fromJson(Map<String, Object?> json) => Display(
        title: json["title"] == null ? null : json["title"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        helpText:
            json["help_text"] == null ? null : json["help_text"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (title != null) "title": encodeValue(title),
        if (description != null) "description": encodeValue(description),
        if (helpText != null) "help_text": encodeValue(helpText),
      };
}
