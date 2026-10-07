part of '../../message_template.dart';

/// A versioned SMS or email template and its declared variables.
///
/// Channel-specific content is exposed through [sms] or [email]. Publication
/// fields distinguish the current draft from the version available for use.
final class MessageTemplate implements InttegroValue {
  final String id;
  final String name;
  final String? about;
  final Channel channel;
  final String purpose;
  final String locale;
  final Status status;
  final int version;
  final int? publishedVersion;
  final int draftVersion;
  final bool hasUnpublishedChanges;
  final List<Variable>? variables;
  final SMSContent? sms;
  final EmailContent? email;
  final List<String>? attachments;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? publishedAt;
  final DateTime? archivedAt;
  const MessageTemplate({
    required this.id,
    required this.name,
    this.about,
    required this.channel,
    required this.purpose,
    required this.locale,
    required this.status,
    required this.version,
    this.publishedVersion,
    required this.draftVersion,
    required this.hasUnpublishedChanges,
    this.variables,
    this.sms,
    this.email,
    this.attachments,
    required this.createdAt,
    required this.updatedAt,
    this.publishedAt,
    this.archivedAt,
  });
  factory MessageTemplate.fromJson(Map<String, Object?> json) =>
      MessageTemplate(
        id: json["id"] as String,
        name: json["name"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        channel: Channel.fromJson(json["channel"]),
        purpose: json["purpose"] as String,
        locale: json["locale"] as String,
        status: Status.fromJson(json["status"]),
        version: (json["version"] as num).toInt(),
        publishedVersion: json["published_version"] == null
            ? null
            : (json["published_version"] as num).toInt(),
        draftVersion: (json["draft_version"] as num).toInt(),
        hasUnpublishedChanges: json["has_unpublished_changes"] as bool,
        variables: json["variables"] == null
            ? null
            : (json["variables"] as List)
                .map(
                  (item) => Variable.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        sms: json["sms"] == null
            ? null
            : SMSContent.fromJson(
                (json["sms"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : EmailContent.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        attachments: json["attachments"] == null
            ? null
            : (json["attachments"] as List)
                .map((item) => item as String)
                .toList(),
        createdAt: decodeDateTime(json["created_at"]),
        updatedAt: decodeDateTime(json["updated_at"]),
        publishedAt: json["published_at"] == null
            ? null
            : decodeDateTime(json["published_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : decodeDateTime(json["archived_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "name": encodeValue(name),
        if (about != null) "about": encodeValue(about),
        "channel": encodeValue(channel),
        "purpose": encodeValue(purpose),
        "locale": encodeValue(locale),
        "status": encodeValue(status),
        "version": encodeValue(version),
        if (publishedVersion != null)
          "published_version": encodeValue(publishedVersion),
        "draft_version": encodeValue(draftVersion),
        "has_unpublished_changes": encodeValue(hasUnpublishedChanges),
        if (variables != null) "variables": encodeValue(variables),
        if (sms != null) "sms": encodeValue(sms),
        if (email != null) "email": encodeValue(email),
        if (attachments != null) "attachments": encodeValue(attachments),
        "created_at": encodeValue(createdAt),
        "updated_at": encodeValue(updatedAt),
        if (publishedAt != null) "published_at": encodeValue(publishedAt),
        if (archivedAt != null) "archived_at": encodeValue(archivedAt),
      };
}
