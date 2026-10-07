part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplate implements _InttegroValue {
  final String id;
  final String name;
  final String? about;
  final MessageTemplateChannel channel;
  final String purpose;
  final String locale;
  final MessageTemplateStatus status;
  final int version;
  final int? publishedVersion;
  final int draftVersion;
  final bool hasUnpublishedChanges;
  final List<MessageTemplateVariable>? variables;
  final MessageTemplateSMSContent? sms;
  final MessageTemplateEmailContent? email;
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
        channel: MessageTemplateChannel.fromJson(json["channel"]),
        purpose: json["purpose"] as String,
        locale: json["locale"] as String,
        status: MessageTemplateStatus.fromJson(json["status"]),
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
                  (item) => MessageTemplateVariable.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        sms: json["sms"] == null
            ? null
            : MessageTemplateSMSContent.fromJson(
                (json["sms"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : MessageTemplateEmailContent.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        attachments: json["attachments"] == null
            ? null
            : (json["attachments"] as List)
                .map((item) => item as String)
                .toList(),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: _decodeDateTime(json["updated_at"]),
        publishedAt: json["published_at"] == null
            ? null
            : _decodeDateTime(json["published_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (about != null) "about": _encodeValue(about),
        "channel": _encodeValue(channel),
        "purpose": _encodeValue(purpose),
        "locale": _encodeValue(locale),
        "status": _encodeValue(status),
        "version": _encodeValue(version),
        if (publishedVersion != null)
          "published_version": _encodeValue(publishedVersion),
        "draft_version": _encodeValue(draftVersion),
        "has_unpublished_changes": _encodeValue(hasUnpublishedChanges),
        if (variables != null) "variables": _encodeValue(variables),
        if (sms != null) "sms": _encodeValue(sms),
        if (email != null) "email": _encodeValue(email),
        if (attachments != null) "attachments": _encodeValue(attachments),
        "created_at": _encodeValue(createdAt),
        "updated_at": _encodeValue(updatedAt),
        if (publishedAt != null) "published_at": _encodeValue(publishedAt),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
      };
}
