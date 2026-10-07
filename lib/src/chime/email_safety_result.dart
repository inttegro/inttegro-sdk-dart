part of '../../chime.dart';

/// The content-safety evaluation of an email message.
///
/// Exposes [status], [reasonCodes], [sanitizedHtml], and [normalizedText],
/// among other contract fields.
final class EmailSafetyResult implements InttegroValue {
  final inttegro_shared.ContentSafetyStatus? status;
  final List<String>? reasonCodes;
  final String? sanitizedHtml;
  final String? normalizedText;
  final List<EmailScannedLink>? links;
  final String? scanner;
  final String? contentHash;
  final String? quarantineNotes;
  const EmailSafetyResult({
    this.status,
    this.reasonCodes,
    this.sanitizedHtml,
    this.normalizedText,
    this.links,
    this.scanner,
    this.contentHash,
    this.quarantineNotes,
  });
  factory EmailSafetyResult.fromJson(Map<String, Object?> json) =>
      EmailSafetyResult(
        status: json["status"] == null
            ? null
            : inttegro_shared.ContentSafetyStatus.fromJson(json["status"]),
        reasonCodes: json["reason_codes"] == null
            ? null
            : (json["reason_codes"] as List)
                .map((item) => item as String)
                .toList(),
        sanitizedHtml: json["sanitized_html"] == null
            ? null
            : json["sanitized_html"] as String,
        normalizedText: json["normalized_text"] == null
            ? null
            : json["normalized_text"] as String,
        links: json["links"] == null
            ? null
            : (json["links"] as List)
                .map(
                  (item) => EmailScannedLink.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        scanner: json["scanner"] == null ? null : json["scanner"] as String,
        contentHash: json["content_hash"] == null
            ? null
            : json["content_hash"] as String,
        quarantineNotes: json["quarantine_notes"] == null
            ? null
            : json["quarantine_notes"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (status != null) "status": encodeValue(status),
        if (reasonCodes != null) "reason_codes": encodeValue(reasonCodes),
        if (sanitizedHtml != null) "sanitized_html": encodeValue(sanitizedHtml),
        if (normalizedText != null)
          "normalized_text": encodeValue(normalizedText),
        if (links != null) "links": encodeValue(links),
        if (scanner != null) "scanner": encodeValue(scanner),
        if (contentHash != null) "content_hash": encodeValue(contentHash),
        if (quarantineNotes != null)
          "quarantine_notes": encodeValue(quarantineNotes),
      };
}
