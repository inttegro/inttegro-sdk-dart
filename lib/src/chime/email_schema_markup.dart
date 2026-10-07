part of '../../chime.dart';

/// Structured schema markup embedded in an email message.
///
/// Exposes [kind] and [jsonLd].
final class EmailSchemaMarkup implements InttegroValue {
  final EmailSchemaKind? kind;
  final core.JsonData? jsonLd;
  const EmailSchemaMarkup({this.kind, this.jsonLd});
  factory EmailSchemaMarkup.fromJson(Map<String, Object?> json) =>
      EmailSchemaMarkup(
        kind: json["kind"] == null
            ? null
            : EmailSchemaKind.fromJson(json["kind"]),
        jsonLd: json["json_ld"] == null
            ? null
            : core.JsonData.fromJson(json["json_ld"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (kind != null) "kind": encodeValue(kind),
        if (jsonLd != null) "json_ld": encodeValue(jsonLd),
      };
}
