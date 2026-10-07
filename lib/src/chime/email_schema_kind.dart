part of '../../chime.dart';

/// The structured-data schema embedded in an email message.
final class EmailSchemaKind implements InttegroValue {
  final String value;
  const EmailSchemaKind(this.value);
  factory EmailSchemaKind.fromJson(Object? json) =>
      EmailSchemaKind(json as String);
  static const gmailViewAction = EmailSchemaKind("gmail_view_action");
  static const schemaOrgOrder = EmailSchemaKind("schema_org_order");
  static const schemaOrgInvoice = EmailSchemaKind("schema_org_invoice");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is EmailSchemaKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
