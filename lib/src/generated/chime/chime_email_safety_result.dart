part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeEmailSafetyResult implements _InttegroValue {
  final ContentSafetyStatus? status;
  final List<String>? reasonCodes;
  final String? sanitizedHtml;
  final String? normalizedText;
  final List<ChimeEmailScannedLink>? links;
  final String? scanner;
  final String? contentHash;
  final String? quarantineNotes;
  const ChimeEmailSafetyResult({
    this.status,
    this.reasonCodes,
    this.sanitizedHtml,
    this.normalizedText,
    this.links,
    this.scanner,
    this.contentHash,
    this.quarantineNotes,
  });
  factory ChimeEmailSafetyResult.fromJson(Map<String, Object?> json) =>
      ChimeEmailSafetyResult(
        status: json["status"] == null
            ? null
            : ContentSafetyStatus.fromJson(json["status"]),
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
                  (item) => ChimeEmailScannedLink.fromJson(
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
        if (status != null) "status": _encodeValue(status),
        if (reasonCodes != null) "reason_codes": _encodeValue(reasonCodes),
        if (sanitizedHtml != null)
          "sanitized_html": _encodeValue(sanitizedHtml),
        if (normalizedText != null)
          "normalized_text": _encodeValue(normalizedText),
        if (links != null) "links": _encodeValue(links),
        if (scanner != null) "scanner": _encodeValue(scanner),
        if (contentHash != null) "content_hash": _encodeValue(contentHash),
        if (quarantineNotes != null)
          "quarantine_notes": _encodeValue(quarantineNotes),
      };
}
