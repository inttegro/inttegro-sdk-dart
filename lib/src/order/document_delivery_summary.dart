part of '../../order.dart';

/// Accepted invoice or receipt deliveries aggregated across channels.
final class DocumentDeliverySummary implements InttegroValue {
  final DocumentDeliverySummaryChannels channels;
  final DateTime latestSentAt;
  final int totalCount;
  const DocumentDeliverySummary({
    required this.channels,
    required this.latestSentAt,
    required this.totalCount,
  });
  factory DocumentDeliverySummary.fromJson(Map<String, Object?> json) =>
      DocumentDeliverySummary(
        channels: DocumentDeliverySummaryChannels.fromJson(
          (json['channels'] as Map).cast<String, Object?>(),
        ),
        latestSentAt: decodeDateTime(json['latest_sent_at']),
        totalCount: json['total_count'] as int,
      );
  @override
  Map<String, Object?> toJson() => {
        'channels': encodeValue(channels),
        'latest_sent_at': encodeValue(latestSentAt),
        'total_count': totalCount,
      };
}
