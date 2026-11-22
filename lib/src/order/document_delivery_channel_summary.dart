part of '../../order.dart';

/// Accepted deliveries aggregated for one channel.
final class DocumentDeliveryChannelSummary implements InttegroValue {
  final int count;
  final DateTime latestSentAt;
  const DocumentDeliveryChannelSummary({
    required this.count,
    required this.latestSentAt,
  });
  factory DocumentDeliveryChannelSummary.fromJson(Map<String, Object?> json) =>
      DocumentDeliveryChannelSummary(
        count: json['count'] as int,
        latestSentAt: decodeDateTime(json['latest_sent_at']),
      );
  @override
  Map<String, Object?> toJson() => {
        'count': count,
        'latest_sent_at': encodeValue(latestSentAt),
      };
}
