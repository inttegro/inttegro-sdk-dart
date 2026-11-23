part of '../../chime.dart';

/// Public delivery lifecycle for a Chime message.
///
/// Undeclared JSON fields are ignored by [fromJson].
final class Transmission implements InttegroValue {
  final String address;
  final DateTime createdAt;
  final DateTime? deliveredAt;
  final DateTime? failedAt;
  final DateTime initializedAt;
  final Transport mechanism;
  final DateTime? sentAt;
  final Transport? sentVia;
  final String status;
  final DateTime? suppressedAt;

  const Transmission({
    required this.address,
    required this.createdAt,
    this.deliveredAt,
    this.failedAt,
    required this.initializedAt,
    required this.mechanism,
    this.sentAt,
    this.sentVia,
    required this.status,
    this.suppressedAt,
  });

  factory Transmission.fromJson(Map<String, Object?> json) => Transmission(
        address: json['address'] as String,
        createdAt: decodeDateTime(json['created_at']),
        deliveredAt: json['delivered_at'] == null
            ? null
            : decodeDateTime(json['delivered_at']),
        failedAt: json['failed_at'] == null
            ? null
            : decodeDateTime(json['failed_at']),
        initializedAt: decodeDateTime(json['initialized_at']),
        mechanism: Transport.fromJson(json['mechanism']),
        sentAt:
            json['sent_at'] == null ? null : decodeDateTime(json['sent_at']),
        sentVia: json['sent_via'] == null
            ? null
            : Transport.fromJson(json['sent_via']),
        status: json['status'] as String,
        suppressedAt: json['suppressed_at'] == null
            ? null
            : decodeDateTime(json['suppressed_at']),
      );

  @override
  Map<String, Object?> toJson() => {
        'address': encodeValue(address),
        'created_at': encodeValue(createdAt),
        if (deliveredAt != null) 'delivered_at': encodeValue(deliveredAt),
        if (failedAt != null) 'failed_at': encodeValue(failedAt),
        'initialized_at': encodeValue(initializedAt),
        'mechanism': encodeValue(mechanism),
        if (sentAt != null) 'sent_at': encodeValue(sentAt),
        if (sentVia != null) 'sent_via': encodeValue(sentVia),
        'status': encodeValue(status),
        if (suppressedAt != null) 'suppressed_at': encodeValue(suppressedAt),
      };
}
