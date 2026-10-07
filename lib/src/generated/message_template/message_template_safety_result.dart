part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplateSafetyResult implements _InttegroValue {
  final String contentHash;
  final List<MessageTemplateScannedLink>? links;
  final String normalizedText;
  final String? quarantineNotes;
  final List<String>? reasonCodes;
  final String? sanitizedHtml;
  final String scanner;
  final ContentSafetyStatus status;
  const MessageTemplateSafetyResult({
    required this.contentHash,
    this.links,
    required this.normalizedText,
    this.quarantineNotes,
    this.reasonCodes,
    this.sanitizedHtml,
    required this.scanner,
    required this.status,
  });
  factory MessageTemplateSafetyResult.fromJson(Map<String, Object?> json) =>
      MessageTemplateSafetyResult(
        contentHash: json["content_hash"] as String,
        links: json["links"] == null
            ? null
            : (json["links"] as List)
                .map(
                  (item) => MessageTemplateScannedLink.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        normalizedText: json["normalized_text"] as String,
        quarantineNotes: json["quarantine_notes"] == null
            ? null
            : json["quarantine_notes"] as String,
        reasonCodes: json["reason_codes"] == null
            ? null
            : (json["reason_codes"] as List)
                .map((item) => item as String)
                .toList(),
        sanitizedHtml: json["sanitized_html"] == null
            ? null
            : json["sanitized_html"] as String,
        scanner: json["scanner"] as String,
        status: ContentSafetyStatus.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "content_hash": _encodeValue(contentHash),
        if (links != null) "links": _encodeValue(links),
        "normalized_text": _encodeValue(normalizedText),
        if (quarantineNotes != null)
          "quarantine_notes": _encodeValue(quarantineNotes),
        if (reasonCodes != null) "reason_codes": _encodeValue(reasonCodes),
        if (sanitizedHtml != null)
          "sanitized_html": _encodeValue(sanitizedHtml),
        "scanner": _encodeValue(scanner),
        "status": _encodeValue(status),
      };
}
