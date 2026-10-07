part of '../../message_template.dart';

/// The content-safety evaluation of a rendered message template.
///
/// Exposes [contentHash], [links], [normalizedText], and [quarantineNotes],
/// among other contract fields.
final class SafetyResult implements InttegroValue {
  final String contentHash;
  final List<ScannedLink>? links;
  final String normalizedText;
  final String? quarantineNotes;
  final List<String>? reasonCodes;
  final String? sanitizedHtml;
  final String scanner;
  final inttegro_shared.ContentSafetyStatus status;
  const SafetyResult({
    required this.contentHash,
    this.links,
    required this.normalizedText,
    this.quarantineNotes,
    this.reasonCodes,
    this.sanitizedHtml,
    required this.scanner,
    required this.status,
  });
  factory SafetyResult.fromJson(Map<String, Object?> json) => SafetyResult(
        contentHash: json["content_hash"] as String,
        links: json["links"] == null
            ? null
            : (json["links"] as List)
                .map(
                  (item) => ScannedLink.fromJson(
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
        status: inttegro_shared.ContentSafetyStatus.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "content_hash": encodeValue(contentHash),
        if (links != null) "links": encodeValue(links),
        "normalized_text": encodeValue(normalizedText),
        if (quarantineNotes != null)
          "quarantine_notes": encodeValue(quarantineNotes),
        if (reasonCodes != null) "reason_codes": encodeValue(reasonCodes),
        if (sanitizedHtml != null) "sanitized_html": encodeValue(sanitizedHtml),
        "scanner": encodeValue(scanner),
        "status": encodeValue(status),
      };
}
