part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeEmailSchemaMarkup implements _InttegroValue {
  final ChimeEmailSchemaKind? kind;
  final JsonData? jsonLd;
  const ChimeEmailSchemaMarkup({this.kind, this.jsonLd});
  factory ChimeEmailSchemaMarkup.fromJson(Map<String, Object?> json) =>
      ChimeEmailSchemaMarkup(
        kind: json["kind"] == null
            ? null
            : ChimeEmailSchemaKind.fromJson(json["kind"]),
        jsonLd:
            json["json_ld"] == null ? null : JsonData.fromJson(json["json_ld"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (kind != null) "kind": _encodeValue(kind),
        if (jsonLd != null) "json_ld": _encodeValue(jsonLd),
      };
}
