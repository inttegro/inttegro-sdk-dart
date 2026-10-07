part of '../../../inttegro.dart';

/// A typed `ChimeEmailSchemaKind` value used by the Inttegro API.
final class ChimeEmailSchemaKind implements _InttegroValue {
  final String value;
  const ChimeEmailSchemaKind(this.value);
  factory ChimeEmailSchemaKind.fromJson(Object? json) =>
      ChimeEmailSchemaKind(json as String);
  static const gmailViewAction = ChimeEmailSchemaKind("gmail_view_action");
  static const schemaOrgOrder = ChimeEmailSchemaKind("schema_org_order");
  static const schemaOrgInvoice = ChimeEmailSchemaKind("schema_org_invoice");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ChimeEmailSchemaKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
