part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderDocumentDelivery implements _InttegroValue {
  final List<OrderDocumentDeliveryAttempt>? deliveries;
  final OrderDocumentKind? documentKind;
  final String? documentUrl;
  final List<String>? failedChannels;
  final List<OrderDocumentDeliveryFailure>? failures;
  final List<String>? sentChannels;
  const OrderDocumentDelivery({
    this.deliveries,
    this.documentKind,
    this.documentUrl,
    this.failedChannels,
    this.failures,
    this.sentChannels,
  });
  factory OrderDocumentDelivery.fromJson(Map<String, Object?> json) =>
      OrderDocumentDelivery(
        deliveries: json["deliveries"] == null
            ? null
            : (json["deliveries"] as List)
                .map(
                  (item) => OrderDocumentDeliveryAttempt.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        documentKind: json["document_kind"] == null
            ? null
            : OrderDocumentKind.fromJson(json["document_kind"]),
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
                  (item) => OrderDocumentDeliveryFailure.fromJson(
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
        if (deliveries != null) "deliveries": _encodeValue(deliveries),
        if (documentKind != null) "document_kind": _encodeValue(documentKind),
        if (documentUrl != null) "document_url": _encodeValue(documentUrl),
        if (failedChannels != null)
          "failed_channels": _encodeValue(failedChannels),
        if (failures != null) "failures": _encodeValue(failures),
        if (sentChannels != null) "sent_channels": _encodeValue(sentChannels),
      };
}
