part of '../../upload_request.dart';

/// Display fields accepted by the upload request API.
///
/// Carries [title], [description], and [helpText].
final class DisplayInput implements InttegroValue {
  final String? title;
  final String? description;
  final String? helpText;
  const DisplayInput({
    this.title,
    this.description,
    this.helpText,
  });
  factory DisplayInput.fromJson(Map<String, Object?> json) => DisplayInput(
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
