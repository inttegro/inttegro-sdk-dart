part of '../../message_template.dart';

/// Pagination and filtering parameters for listing message templates.
///
/// Carries [page], [size], [status], and [channel], among other supported
/// fields.
final class PageRequest implements InttegroValue {
  final int? page;
  final int? size;
  final Status? status;
  final Channel? channel;
  final String? purpose;
  final String? locale;
  const PageRequest({
    this.page,
    this.size,
    this.status,
    this.channel,
    this.purpose,
    this.locale,
  });
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        page: json["page"] == null ? null : (json["page"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        channel:
            json["channel"] == null ? null : Channel.fromJson(json["channel"]),
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        locale: json["locale"] == null ? null : json["locale"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (page != null) "page": encodeValue(page),
        if (size != null) "size": encodeValue(size),
        if (status != null) "status": encodeValue(status),
        if (channel != null) "channel": encodeValue(channel),
        if (purpose != null) "purpose": encodeValue(purpose),
        if (locale != null) "locale": encodeValue(locale),
      };
}
