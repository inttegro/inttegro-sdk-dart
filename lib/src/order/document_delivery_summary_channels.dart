part of '../../order.dart';

/// Accepted delivery totals grouped by channel.
final class DocumentDeliverySummaryChannels implements InttegroValue {
  final DocumentDeliveryChannelSummary? email;
  final DocumentDeliveryChannelSummary? sms;
  const DocumentDeliverySummaryChannels({this.email, this.sms});
  factory DocumentDeliverySummaryChannels.fromJson(Map<String, Object?> json) =>
      DocumentDeliverySummaryChannels(
        email: json['email'] == null
            ? null
            : DocumentDeliveryChannelSummary.fromJson(
                (json['email'] as Map).cast<String, Object?>()),
        sms: json['sms'] == null
            ? null
            : DocumentDeliveryChannelSummary.fromJson(
                (json['sms'] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        if (email != null) 'email': encodeValue(email),
        if (sms != null) 'sms': encodeValue(sms),
      };
}
