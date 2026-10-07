part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageMessageTemplatesRequest implements _InttegroValue {
  final int? page;
  final int? size;
  final MessageTemplateStatus? status;
  final MessageTemplateChannel? channel;
  final String? purpose;
  final String? locale;
  const PageMessageTemplatesRequest({
    this.page,
    this.size,
    this.status,
    this.channel,
    this.purpose,
    this.locale,
  });
  factory PageMessageTemplatesRequest.fromJson(Map<String, Object?> json) =>
      PageMessageTemplatesRequest(
        page: json["page"] == null ? null : (json["page"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
        status: json["status"] == null
            ? null
            : MessageTemplateStatus.fromJson(json["status"]),
        channel: json["channel"] == null
            ? null
            : MessageTemplateChannel.fromJson(json["channel"]),
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        locale: json["locale"] == null ? null : json["locale"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (page != null) "page": _encodeValue(page),
        if (size != null) "size": _encodeValue(size),
        if (status != null) "status": _encodeValue(status),
        if (channel != null) "channel": _encodeValue(channel),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (locale != null) "locale": _encodeValue(locale),
      };
}
