part of '../../order.dart';

/// The delivery state of an order invoice or receipt.
///
/// Exposes [deliveries], [documentKind], [documentUrl], and [failedChannels],
/// among other contract fields.
final class DocumentDelivery implements InttegroValue {
  final List<DocumentDeliveryAttempt>? deliveries;
  final DocumentKind? documentKind;
  final String? documentUrl;
  final List<String>? failedChannels;
  final List<DocumentDeliveryFailure>? failures;
  final List<String>? sentChannels;
  const DocumentDelivery({
    this.deliveries,
    this.documentKind,
    this.documentUrl,
    this.failedChannels,
    this.failures,
    this.sentChannels,
  });
  factory DocumentDelivery.fromJson(Map<String, Object?> json) =>
      DocumentDelivery(
        deliveries: json["deliveries"] == null
            ? null
            : (json["deliveries"] as List)
                .map(
                  (item) => DocumentDeliveryAttempt.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        documentKind: json["document_kind"] == null
            ? null
            : DocumentKind.fromJson(json["document_kind"]),
        documentUrl: json["document_url"] == null
            ? null
            : json["document_url"] as String,
        failedChannels: json["failed_channels"] == null
            ? null
            : (json["failed_channels"] as List)
                .map((item) => item as String)
                .toList(),
        failures: json["failures"] == null
            ? null
            : (json["failures"] as List)
                .map(
                  (item) => DocumentDeliveryFailure.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        sentChannels: json["sent_channels"] == null
            ? null
            : (json["sent_channels"] as List)
                .map((item) => item as String)
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (deliveries != null) "deliveries": encodeValue(deliveries),
        if (documentKind != null) "document_kind": encodeValue(documentKind),
        if (documentUrl != null) "document_url": encodeValue(documentUrl),
        if (failedChannels != null)
          "failed_channels": encodeValue(failedChannels),
        if (failures != null) "failures": encodeValue(failures),
        if (sentChannels != null) "sent_channels": encodeValue(sentChannels),
      };
}
