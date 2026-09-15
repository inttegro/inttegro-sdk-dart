part of '../inttegro.dart';

abstract interface class _InttegroValue {
  Object? toJson();
}

Object? _encodeValue(Object? value) {
  if (value is _InttegroValue) {
    return value.toJson();
  }
  if (value is Uint8List) {
    return value.toList();
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  if (value is List) {
    return value.map(_encodeValue).toList();
  }
  if (value is Map) {
    return value.map(
      (key, item) => MapEntry(key.toString(), _encodeValue(item)),
    );
  }
  return value;
}

DateTime _decodeDateTime(Object? value) {
  if (value is! String) {
    throw FormatException('Expected an ISO-8601 timestamp, got $value');
  }
  final decoded = DateTime.tryParse(value);
  if (decoded == null || !value.contains(RegExp(r'(Z|[+-]\d\d:\d\d)$'))) {
    throw FormatException('Invalid offset-aware ISO-8601 timestamp: $value');
  }
  return decoded;
}

void _expectExactKeys(
  Map<String, Object?> value,
  Set<String> expected,
  String name,
) {
  if (value.length != expected.length ||
      value.keys.any((key) => !expected.contains(key))) {
    throw FormatException('Invalid $name shape');
  }
}

/// A typed `AppCredentialOwner` value used by the Inttegro API.
final class AppCredentialOwner implements _InttegroValue {
  final String value;
  const AppCredentialOwner(this.value);
  factory AppCredentialOwner.fromJson(Object? json) =>
      AppCredentialOwner(json as String);
  static const child = AppCredentialOwner("child");
  static const parent = AppCredentialOwner("parent");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AppCredentialOwner && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `AppManagementRole` value used by the Inttegro API.
final class AppManagementRole implements _InttegroValue {
  final String value;
  const AppManagementRole(this.value);
  factory AppManagementRole.fromJson(Object? json) =>
      AppManagementRole(json as String);
  static const parent = AppManagementRole("parent");
  static const child = AppManagementRole("child");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AppManagementRole && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `AppRelationshipKind` value used by the Inttegro API.
final class AppRelationshipKind implements _InttegroValue {
  final String value;
  const AppRelationshipKind(this.value);
  factory AppRelationshipKind.fromJson(Object? json) =>
      AppRelationshipKind(json as String);
  static const placement = AppRelationshipKind("placement");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AppRelationshipKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `AppRelationshipStatus` value used by the Inttegro API.
final class AppRelationshipStatus implements _InttegroValue {
  final String value;
  const AppRelationshipStatus(this.value);
  factory AppRelationshipStatus.fromJson(Object? json) =>
      AppRelationshipStatus(json as String);
  static const active = AppRelationshipStatus("active");
  static const inactive = AppRelationshipStatus("inactive");
  static const suspended = AppRelationshipStatus("suspended");
  static const revoked = AppRelationshipStatus("revoked");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AppRelationshipStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `BalanceTransactionType` value used by the Inttegro API.
final class BalanceTransactionType implements _InttegroValue {
  final String value;
  const BalanceTransactionType(this.value);
  factory BalanceTransactionType.fromJson(Object? json) =>
      BalanceTransactionType(json as String);
  static const payment = BalanceTransactionType("payment");
  static const refund = BalanceTransactionType("refund");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is BalanceTransactionType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `BankAccountType` value used by the Inttegro API.
final class BankAccountType implements _InttegroValue {
  final String value;
  const BankAccountType(this.value);
  factory BankAccountType.fromJson(Object? json) =>
      BankAccountType(json as String);
  static const ghanaBankAccount = BankAccountType("ghana_bank_account");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is BankAccountType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `CheckoutOrderStatus` value used by the Inttegro API.
final class CheckoutOrderStatus implements _InttegroValue {
  final String value;
  const CheckoutOrderStatus(this.value);
  factory CheckoutOrderStatus.fromJson(Object? json) =>
      CheckoutOrderStatus(json as String);
  static const preparing = CheckoutOrderStatus("preparing");
  static const requiresPayment = CheckoutOrderStatus("requires_payment");
  static const completed = CheckoutOrderStatus("completed");
  static const canceled = CheckoutOrderStatus("canceled");
  static const expired = CheckoutOrderStatus("expired");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is CheckoutOrderStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `CheckoutPaymentStatus` value used by the Inttegro API.
final class CheckoutPaymentStatus implements _InttegroValue {
  final String value;
  const CheckoutPaymentStatus(this.value);
  factory CheckoutPaymentStatus.fromJson(Object? json) =>
      CheckoutPaymentStatus(json as String);
  static const requiresAction = CheckoutPaymentStatus("requires_action");
  static const processing = CheckoutPaymentStatus("processing");
  static const succeeded = CheckoutPaymentStatus("succeeded");
  static const failed = CheckoutPaymentStatus("failed");
  static const cancelled = CheckoutPaymentStatus("cancelled");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is CheckoutPaymentStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

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

/// A typed `ChimeRecipientType` value used by the Inttegro API.
final class ChimeRecipientType implements _InttegroValue {
  final String value;
  const ChimeRecipientType(this.value);
  factory ChimeRecipientType.fromJson(Object? json) =>
      ChimeRecipientType(json as String);
  static const phone = ChimeRecipientType("phone");
  static const email = ChimeRecipientType("email");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ChimeRecipientType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `ChimeTransport` value used by the Inttegro API.
final class ChimeTransport implements _InttegroValue {
  final String value;
  const ChimeTransport(this.value);
  factory ChimeTransport.fromJson(Object? json) =>
      ChimeTransport(json as String);
  static const sms = ChimeTransport("sms");
  static const email = ChimeTransport("email");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ChimeTransport && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `ContentSafetyStatus` value used by the Inttegro API.
final class ContentSafetyStatus implements _InttegroValue {
  final String value;
  const ContentSafetyStatus(this.value);
  factory ContentSafetyStatus.fromJson(Object? json) =>
      ContentSafetyStatus(json as String);
  static const allowed = ContentSafetyStatus("allowed");
  static const rejected = ContentSafetyStatus("rejected");
  static const quarantined = ContentSafetyStatus("quarantined");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ContentSafetyStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `Currency` value used by the Inttegro API.
final class Currency implements _InttegroValue {
  final String value;
  const Currency(this.value);
  factory Currency.fromJson(Object? json) => Currency(json as String);
  static const ghs = Currency("ghs");
  static const usd = Currency("usd");
  static const gbp = Currency("gbp");
  static const eur = Currency("eur");
  static const cny = Currency("cny");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Currency && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `DeliveryChannel` value used by the Inttegro API.
final class DeliveryChannel implements _InttegroValue {
  final String value;
  const DeliveryChannel(this.value);
  factory DeliveryChannel.fromJson(Object? json) =>
      DeliveryChannel(json as String);
  static const email = DeliveryChannel("email");
  static const sms = DeliveryChannel("sms");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is DeliveryChannel && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FileDelivery` value used by the Inttegro API.
final class FileDelivery implements _InttegroValue {
  final String value;
  const FileDelivery(this.value);
  factory FileDelivery.fromJson(Object? json) => FileDelivery(json as String);
  static const stream = FileDelivery("stream");
  static const redirect = FileDelivery("redirect");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileDelivery && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FileDisposition` value used by the Inttegro API.
final class FileDisposition implements _InttegroValue {
  final String value;
  const FileDisposition(this.value);
  factory FileDisposition.fromJson(Object? json) =>
      FileDisposition(json as String);
  static const attachment = FileDisposition("attachment");
  static const inline = FileDisposition("inline");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileDisposition && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FileLinkDeliveryMode` value used by the Inttegro API.
final class FileLinkDeliveryMode implements _InttegroValue {
  final String value;
  const FileLinkDeliveryMode(this.value);
  factory FileLinkDeliveryMode.fromJson(Object? json) =>
      FileLinkDeliveryMode(json as String);
  static const redirect = FileLinkDeliveryMode("redirect");
  static const download = FileLinkDeliveryMode("download");
  static const inline = FileLinkDeliveryMode("inline");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileLinkDeliveryMode && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FileLinkKind` value used by the Inttegro API.
final class FileLinkKind implements _InttegroValue {
  final String value;
  const FileLinkKind(this.value);
  factory FileLinkKind.fromJson(Object? json) => FileLinkKind(json as String);
  static const public = FileLinkKind("public");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileLinkKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FileLinkStatus` value used by the Inttegro API.
final class FileLinkStatus implements _InttegroValue {
  final String value;
  const FileLinkStatus(this.value);
  factory FileLinkStatus.fromJson(Object? json) =>
      FileLinkStatus(json as String);
  static const active = FileLinkStatus("active");
  static const revoked = FileLinkStatus("revoked");
  static const expired = FileLinkStatus("expired");
  static const disabled = FileLinkStatus("disabled");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileLinkStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FileScanStatus` value used by the Inttegro API.
final class FileScanStatus implements _InttegroValue {
  final String value;
  const FileScanStatus(this.value);
  factory FileScanStatus.fromJson(Object? json) =>
      FileScanStatus(json as String);
  static const pending = FileScanStatus("pending");
  static const passed = FileScanStatus("passed");
  static const failed = FileScanStatus("failed");
  static const skipped = FileScanStatus("skipped");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileScanStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FileSourceType` value used by the Inttegro API.
final class FileSourceType implements _InttegroValue {
  final String value;
  const FileSourceType(this.value);
  factory FileSourceType.fromJson(Object? json) =>
      FileSourceType(json as String);
  static const direct = FileSourceType("direct");
  static const uploadRequest = FileSourceType("upload_request");
  static const service = FileSourceType("service");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileSourceType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FileStatus` value used by the Inttegro API.
final class FileStatus implements _InttegroValue {
  final String value;
  const FileStatus(this.value);
  factory FileStatus.fromJson(Object? json) => FileStatus(json as String);
  static const uploading = FileStatus("uploading");
  static const processing = FileStatus("processing");
  static const available = FileStatus("available");
  static const failed = FileStatus("failed");
  static const deleted = FileStatus("deleted");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is FileStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FileStorageEncoding` value used by the Inttegro API.
final class FileStorageEncoding implements _InttegroValue {
  final String value;
  const FileStorageEncoding(this.value);
  factory FileStorageEncoding.fromJson(Object? json) =>
      FileStorageEncoding(json as String);
  static const identity = FileStorageEncoding("identity");
  static const brotli = FileStorageEncoding("br");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileStorageEncoding && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `FinancialAccountType` value used by the Inttegro API.
final class FinancialAccountType implements _InttegroValue {
  final String value;
  const FinancialAccountType(this.value);
  factory FinancialAccountType.fromJson(Object? json) =>
      FinancialAccountType(json as String);
  static const wallet = FinancialAccountType("wallet");
  static const bankAccount = FinancialAccountType("bank_account");
  static const doshAccount = FinancialAccountType("dosh_account");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FinancialAccountType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `LineItemType` value used by the Inttegro API.
final class LineItemType implements _InttegroValue {
  final String value;
  const LineItemType(this.value);
  factory LineItemType.fromJson(Object? json) => LineItemType(json as String);
  static const product = LineItemType("product");
  static const fee = LineItemType("fee");
  static const shipping = LineItemType("shipping");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is LineItemType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `MessageTemplateChannel` value used by the Inttegro API.
final class MessageTemplateChannel implements _InttegroValue {
  final String value;
  const MessageTemplateChannel(this.value);
  factory MessageTemplateChannel.fromJson(Object? json) =>
      MessageTemplateChannel(json as String);
  static const sms = MessageTemplateChannel("sms");
  static const email = MessageTemplateChannel("email");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MessageTemplateChannel && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `MessageTemplateStatus` value used by the Inttegro API.
final class MessageTemplateStatus implements _InttegroValue {
  final String value;
  const MessageTemplateStatus(this.value);
  factory MessageTemplateStatus.fromJson(Object? json) =>
      MessageTemplateStatus(json as String);
  static const draft = MessageTemplateStatus("draft");
  static const published = MessageTemplateStatus("published");
  static const archived = MessageTemplateStatus("archived");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MessageTemplateStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `MessageTemplateVariableItemType` value used by the Inttegro API.
final class MessageTemplateVariableItemType implements _InttegroValue {
  final String value;
  const MessageTemplateVariableItemType(this.value);
  factory MessageTemplateVariableItemType.fromJson(Object? json) =>
      MessageTemplateVariableItemType(json as String);
  static const string = MessageTemplateVariableItemType("string");
  static const number = MessageTemplateVariableItemType("number");
  static const integer = MessageTemplateVariableItemType("integer");
  static const boolean = MessageTemplateVariableItemType("boolean");
  static const url = MessageTemplateVariableItemType("url");
  static const email = MessageTemplateVariableItemType("email");
  static const phone = MessageTemplateVariableItemType("phone");
  static const date = MessageTemplateVariableItemType("date");
  static const datetime = MessageTemplateVariableItemType("datetime");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MessageTemplateVariableItemType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `MessageTemplateVariableType` value used by the Inttegro API.
final class MessageTemplateVariableType implements _InttegroValue {
  final String value;
  const MessageTemplateVariableType(this.value);
  factory MessageTemplateVariableType.fromJson(Object? json) =>
      MessageTemplateVariableType(json as String);
  static const string = MessageTemplateVariableType("string");
  static const number = MessageTemplateVariableType("number");
  static const integer = MessageTemplateVariableType("integer");
  static const boolean = MessageTemplateVariableType("boolean");
  static const url = MessageTemplateVariableType("url");
  static const email = MessageTemplateVariableType("email");
  static const phone = MessageTemplateVariableType("phone");
  static const date = MessageTemplateVariableType("date");
  static const datetime = MessageTemplateVariableType("datetime");
  static const array = MessageTemplateVariableType("array");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MessageTemplateVariableType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `MobileMoneyNetwork` value used by the Inttegro API.
final class MobileMoneyNetwork implements _InttegroValue {
  final String value;
  const MobileMoneyNetwork(this.value);
  factory MobileMoneyNetwork.fromJson(Object? json) =>
      MobileMoneyNetwork(json as String);
  static const airtel = MobileMoneyNetwork("airtel");
  static const mtn = MobileMoneyNetwork("mtn");
  static const telecel = MobileMoneyNetwork("telecel");
  static const vodafone = MobileMoneyNetwork("vodafone");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MobileMoneyNetwork && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `OTPAlphabetType` value used by the Inttegro API.
final class OTPAlphabetType implements _InttegroValue {
  final String value;
  const OTPAlphabetType(this.value);
  factory OTPAlphabetType.fromJson(Object? json) =>
      OTPAlphabetType(json as String);
  static const numeric = OTPAlphabetType("numeric");
  static const alpha = OTPAlphabetType("alpha");
  static const alphanumeric = OTPAlphabetType("alphanumeric");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OTPAlphabetType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `OTPStatus` value used by the Inttegro API.
final class OTPStatus implements _InttegroValue {
  final String value;
  const OTPStatus(this.value);
  factory OTPStatus.fromJson(Object? json) => OTPStatus(json as String);
  static const canceled = OTPStatus("canceled");
  static const expired = OTPStatus("expired");
  static const pending = OTPStatus("pending");
  static const pendingDelivery = OTPStatus("pending_delivery");
  static const pendingVerification = OTPStatus("pending_verification");
  static const verified = OTPStatus("verified");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is OTPStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `OTPTransmissionStatus` value used by the Inttegro API.
final class OTPTransmissionStatus implements _InttegroValue {
  final String value;
  const OTPTransmissionStatus(this.value);
  factory OTPTransmissionStatus.fromJson(Object? json) =>
      OTPTransmissionStatus(json as String);
  static const delivered = OTPTransmissionStatus("delivered");
  static const failed = OTPTransmissionStatus("failed");
  static const submitted = OTPTransmissionStatus("submitted");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OTPTransmissionStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `OTPVerificationVerdict` value used by the Inttegro API.
final class OTPVerificationVerdict implements _InttegroValue {
  final String value;
  const OTPVerificationVerdict(this.value);
  factory OTPVerificationVerdict.fromJson(Object? json) =>
      OTPVerificationVerdict(json as String);
  static const fail = OTPVerificationVerdict("fail");
  static const pass = OTPVerificationVerdict("pass");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OTPVerificationVerdict && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `OrderCreatedFromResourceType` value used by the Inttegro API.
final class OrderCreatedFromResourceType implements _InttegroValue {
  final String value;
  const OrderCreatedFromResourceType(this.value);
  factory OrderCreatedFromResourceType.fromJson(Object? json) =>
      OrderCreatedFromResourceType(json as String);
  static const purchaseIntent = OrderCreatedFromResourceType("purchase_intent");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OrderCreatedFromResourceType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `OrderDocumentKind` value used by the Inttegro API.
final class OrderDocumentKind implements _InttegroValue {
  final String value;
  const OrderDocumentKind(this.value);
  factory OrderDocumentKind.fromJson(Object? json) =>
      OrderDocumentKind(json as String);
  static const invoice = OrderDocumentKind("invoice");
  static const receipt = OrderDocumentKind("receipt");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OrderDocumentKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `OrderStatus` value used by the Inttegro API.
final class OrderStatus implements _InttegroValue {
  final String value;
  const OrderStatus(this.value);
  factory OrderStatus.fromJson(Object? json) => OrderStatus(json as String);
  static const preparing = OrderStatus("preparing");
  static const requiresPayment = OrderStatus("requires_payment");
  static const paid = OrderStatus("paid");
  static const completed = OrderStatus("completed");
  static const canceled = OrderStatus("canceled");
  static const expired = OrderStatus("expired");
  static const unknown = OrderStatus("unknown");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OrderStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `PaymentAttemptStatus` value used by the Inttegro API.
final class PaymentAttemptStatus implements _InttegroValue {
  final String value;
  const PaymentAttemptStatus(this.value);
  factory PaymentAttemptStatus.fromJson(Object? json) =>
      PaymentAttemptStatus(json as String);
  static const initiated = PaymentAttemptStatus("initiated");
  static const executed = PaymentAttemptStatus("executed");
  static const succeeded = PaymentAttemptStatus("succeeded");
  static const canceled = PaymentAttemptStatus("canceled");
  static const expired = PaymentAttemptStatus("expired");
  static const failed = PaymentAttemptStatus("failed");
  static const unknown = PaymentAttemptStatus("unknown");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentAttemptStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `PaymentConfirmationChannel` value used by the Inttegro API.
final class PaymentConfirmationChannel implements _InttegroValue {
  final String value;
  const PaymentConfirmationChannel(this.value);
  factory PaymentConfirmationChannel.fromJson(Object? json) =>
      PaymentConfirmationChannel(json as String);
  static const sms = PaymentConfirmationChannel("sms");
  static const email = PaymentConfirmationChannel("email");
  static const push = PaymentConfirmationChannel("push");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentConfirmationChannel && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `PaymentMethodType` value used by the Inttegro API.
final class PaymentMethodType implements _InttegroValue {
  final String value;
  const PaymentMethodType(this.value);
  factory PaymentMethodType.fromJson(Object? json) =>
      PaymentMethodType(json as String);
  static const mobileMoney = PaymentMethodType("mobile_money");
  static const bankAccount = PaymentMethodType("bank_account");
  static const card = PaymentMethodType("card");
  static const motito = PaymentMethodType("motito");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentMethodType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `PaymentNextActionType` value used by the Inttegro API.
final class PaymentNextActionType implements _InttegroValue {
  final String value;
  const PaymentNextActionType(this.value);
  factory PaymentNextActionType.fromJson(Object? json) =>
      PaymentNextActionType(json as String);
  static const confirmPayment = PaymentNextActionType("confirm_payment");
  static const execute = PaymentNextActionType("execute");
  static const redirect = PaymentNextActionType("redirect");
  static const authorizePayment = PaymentNextActionType("authorize_payment");
  static const requestConfirmation =
      PaymentNextActionType("request_confirmation");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentNextActionType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `PaymentResultStatus` value used by the Inttegro API.
final class PaymentResultStatus implements _InttegroValue {
  final String value;
  const PaymentResultStatus(this.value);
  factory PaymentResultStatus.fromJson(Object? json) =>
      PaymentResultStatus(json as String);
  static const pending = PaymentResultStatus("pending");
  static const requiresConfirmation = PaymentResultStatus(
    "requires_confirmation",
  );
  static const processing = PaymentResultStatus("processing");
  static const succeeded = PaymentResultStatus("succeeded");
  static const failed = PaymentResultStatus("failed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentResultStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `PaymentStatus` value used by the Inttegro API.
final class PaymentStatus implements _InttegroValue {
  final String value;
  const PaymentStatus(this.value);
  factory PaymentStatus.fromJson(Object? json) => PaymentStatus(json as String);
  static const initiated = PaymentStatus("initiated");
  static const requiresAction = PaymentStatus("requires_action");
  static const overdue = PaymentStatus("overdue");
  static const executed = PaymentStatus("executed");
  static const paid = PaymentStatus("paid");
  static const canceled = PaymentStatus("canceled");
  static const expired = PaymentStatus("expired");
  static const failed = PaymentStatus("failed");
  static const unknown = PaymentStatus("unknown");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `PayoutStatus` value used by the Inttegro API.
final class PayoutStatus implements _InttegroValue {
  final String value;
  const PayoutStatus(this.value);
  factory PayoutStatus.fromJson(Object? json) => PayoutStatus(json as String);
  static const initialized = PayoutStatus("initialized");
  static const scheduled = PayoutStatus("scheduled");
  static const processing = PayoutStatus("processing");
  static const executing = PayoutStatus("executing");
  static const succeeded = PayoutStatus("succeeded");
  static const invalid = PayoutStatus("invalid");
  static const canceled = PayoutStatus("canceled");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PayoutStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `ProductShipmentInputType` value used by the Inttegro API.
final class ProductShipmentInputType implements _InttegroValue {
  final String value;
  const ProductShipmentInputType(this.value);
  factory ProductShipmentInputType.fromJson(Object? json) =>
      ProductShipmentInputType(json as String);
  static const delivery = ProductShipmentInputType("delivery");
  static const download = ProductShipmentInputType("download");
  static const render = ProductShipmentInputType("render");
  static const stream = ProductShipmentInputType("stream");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ProductShipmentInputType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `ProductShipmentType` value used by the Inttegro API.
final class ProductShipmentType implements _InttegroValue {
  final String value;
  const ProductShipmentType(this.value);
  factory ProductShipmentType.fromJson(Object? json) =>
      ProductShipmentType(json as String);
  static const delivery = ProductShipmentType("delivery");
  static const download = ProductShipmentType("download");
  static const render = ProductShipmentType("render");
  static const service = ProductShipmentType("service");
  static const stream = ProductShipmentType("stream");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ProductShipmentType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `ProductType` value used by the Inttegro API.
final class ProductType implements _InttegroValue {
  final String value;
  const ProductType(this.value);
  factory ProductType.fromJson(Object? json) => ProductType(json as String);
  static const physical = ProductType("physical");
  static const digital = ProductType("digital");
  static const service = ProductType("service");
  static const voucher = ProductType("voucher");
  static const custom = ProductType("custom");
  static const cause = ProductType("cause");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ProductType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `PurchaseIntentStatus` value used by the Inttegro API.
final class PurchaseIntentStatus implements _InttegroValue {
  final String value;
  const PurchaseIntentStatus(this.value);
  factory PurchaseIntentStatus.fromJson(Object? json) =>
      PurchaseIntentStatus(json as String);
  static const active = PurchaseIntentStatus("active");
  static const expired = PurchaseIntentStatus("expired");
  static const inactive = PurchaseIntentStatus("inactive");
  static const used = PurchaseIntentStatus("used");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PurchaseIntentStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `RefundReason` value used by the Inttegro API.
final class RefundReason implements _InttegroValue {
  final String value;
  const RefundReason(this.value);
  factory RefundReason.fromJson(Object? json) => RefundReason(json as String);
  static const requestedByCustomer = RefundReason("requested_by_customer");
  static const duplicate = RefundReason("duplicate");
  static const fraudulent = RefundReason("fraudulent");
  static const orderCanceled = RefundReason("order_canceled");
  static const itemReturned = RefundReason("item_returned");
  static const itemDamaged = RefundReason("item_damaged");
  static const itemNotReceived = RefundReason("item_not_received");
  static const itemNotAsDescribed = RefundReason("item_not_as_described");
  static const custom = RefundReason("custom");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is RefundReason && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `RefundStatus` value used by the Inttegro API.
final class RefundStatus implements _InttegroValue {
  final String value;
  const RefundStatus(this.value);
  factory RefundStatus.fromJson(Object? json) => RefundStatus(json as String);
  static const canceled = RefundStatus("canceled");
  static const failed = RefundStatus("failed");
  static const pending = RefundStatus("pending");
  static const processing = RefundStatus("processing");
  static const succeeded = RefundStatus("succeeded");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is RefundStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `SecretKeyAuthResult` value used by the Inttegro API.
final class SecretKeyAuthResult implements _InttegroValue {
  final String value;
  const SecretKeyAuthResult(this.value);
  factory SecretKeyAuthResult.fromJson(Object? json) =>
      SecretKeyAuthResult(json as String);
  static const succeeded = SecretKeyAuthResult("succeeded");
  static const failed = SecretKeyAuthResult("failed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is SecretKeyAuthResult && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `SecretKeyStatus` value used by the Inttegro API.
final class SecretKeyStatus implements _InttegroValue {
  final String value;
  const SecretKeyStatus(this.value);
  factory SecretKeyStatus.fromJson(Object? json) =>
      SecretKeyStatus(json as String);
  static const active = SecretKeyStatus("active");
  static const revoked = SecretKeyStatus("revoked");
  static const expired = SecretKeyStatus("expired");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is SecretKeyStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `SecretKeyTokenType` value used by the Inttegro API.
final class SecretKeyTokenType implements _InttegroValue {
  final String value;
  const SecretKeyTokenType(this.value);
  factory SecretKeyTokenType.fromJson(Object? json) =>
      SecretKeyTokenType(json as String);
  static const bearer = SecretKeyTokenType("bearer");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is SecretKeyTokenType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `UploadRequestStatus` value used by the Inttegro API.
final class UploadRequestStatus implements _InttegroValue {
  final String value;
  const UploadRequestStatus(this.value);
  factory UploadRequestStatus.fromJson(Object? json) =>
      UploadRequestStatus(json as String);
  static const pending = UploadRequestStatus("pending");
  static const uploading = UploadRequestStatus("uploading");
  static const fulfilled = UploadRequestStatus("fulfilled");
  static const expired = UploadRequestStatus("expired");
  static const canceled = UploadRequestStatus("canceled");
  static const failed = UploadRequestStatus("failed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is UploadRequestStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `UploadReviewDecision` value used by the Inttegro API.
final class UploadReviewDecision implements _InttegroValue {
  final String value;
  const UploadReviewDecision(this.value);
  factory UploadReviewDecision.fromJson(Object? json) =>
      UploadReviewDecision(json as String);
  static const approved = UploadReviewDecision("approved");
  static const rejected = UploadReviewDecision("rejected");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is UploadReviewDecision && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `UploadReviewType` value used by the Inttegro API.
final class UploadReviewType implements _InttegroValue {
  final String value;
  const UploadReviewType(this.value);
  factory UploadReviewType.fromJson(Object? json) =>
      UploadReviewType(json as String);
  static const automatic = UploadReviewType("automatic");
  static const manual = UploadReviewType("manual");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is UploadReviewType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

/// A typed `WalletType` value used by the Inttegro API.
final class WalletType implements _InttegroValue {
  final String value;
  const WalletType(this.value);
  factory WalletType.fromJson(Object? json) => WalletType(json as String);
  static const mobileMoney = WalletType("mobile_money");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is WalletType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

sealed class ChimeInlineRecipientInput implements _InttegroValue {
  const ChimeInlineRecipientInput();
  factory ChimeInlineRecipientInput.fromJson(Object? json) {
    try {
      return ChimeInlineRecipientInputChimeInlineRecipientInputVariant1(
        ChimeInlineRecipientInputVariant1.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ChimeInlineRecipientInputChimeInlineRecipientInputVariant2(
        ChimeInlineRecipientInputVariant2.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported ChimeInlineRecipientInput value');
  }
}

final class ChimeInlineRecipientInputChimeInlineRecipientInputVariant1
    extends ChimeInlineRecipientInput {
  final ChimeInlineRecipientInputVariant1 value;
  const ChimeInlineRecipientInputChimeInlineRecipientInputVariant1(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class ChimeInlineRecipientInputChimeInlineRecipientInputVariant2
    extends ChimeInlineRecipientInput {
  final ChimeInlineRecipientInputVariant2 value;
  const ChimeInlineRecipientInputChimeInlineRecipientInputVariant2(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

sealed class ChimeRecipientInput implements _InttegroValue {
  const ChimeRecipientInput();
  factory ChimeRecipientInput.fromJson(Object? json) {
    try {
      return ChimeRecipientInputChimeInlineRecipientInputVariant1(
        ChimeInlineRecipientInputVariant1.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ChimeRecipientInputChimeInlineRecipientInputVariant2(
        ChimeInlineRecipientInputVariant2.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ChimeRecipientInputChimeSavedCustomerRecipientInput(
        ChimeSavedCustomerRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported ChimeRecipientInput value');
  }
}

final class ChimeRecipientInputChimeInlineRecipientInputVariant1
    extends ChimeRecipientInput {
  final ChimeInlineRecipientInputVariant1 value;
  const ChimeRecipientInputChimeInlineRecipientInputVariant1(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class ChimeRecipientInputChimeInlineRecipientInputVariant2
    extends ChimeRecipientInput {
  final ChimeInlineRecipientInputVariant2 value;
  const ChimeRecipientInputChimeInlineRecipientInputVariant2(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class ChimeRecipientInputChimeSavedCustomerRecipientInput
    extends ChimeRecipientInput {
  final ChimeSavedCustomerRecipientInput value;
  const ChimeRecipientInputChimeSavedCustomerRecipientInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

sealed class CreateMessageTemplateRequest implements _InttegroValue {
  const CreateMessageTemplateRequest();
  factory CreateMessageTemplateRequest.fromJson(Object? json) {
    try {
      return CreateMessageTemplateRequestCreateSMSMessageTemplateRequest(
        CreateSMSMessageTemplateRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return CreateMessageTemplateRequestCreateEmailMessageTemplateRequest(
        CreateEmailMessageTemplateRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported CreateMessageTemplateRequest value');
  }
}

final class CreateMessageTemplateRequestCreateSMSMessageTemplateRequest
    extends CreateMessageTemplateRequest {
  final CreateSMSMessageTemplateRequest value;
  const CreateMessageTemplateRequestCreateSMSMessageTemplateRequest(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class CreateMessageTemplateRequestCreateEmailMessageTemplateRequest
    extends CreateMessageTemplateRequest {
  final CreateEmailMessageTemplateRequest value;
  const CreateMessageTemplateRequestCreateEmailMessageTemplateRequest(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}

sealed class CreateOrderRequest implements _InttegroValue {
  const CreateOrderRequest();
  factory CreateOrderRequest.fromJson(Object? json) {
    try {
      return CreateOrderRequestCreateOrderNewCustomerInput(
        CreateOrderNewCustomerInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return CreateOrderRequestCreateOrderExistingCustomerInput(
        CreateOrderExistingCustomerInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported CreateOrderRequest value');
  }
}

final class CreateOrderRequestCreateOrderNewCustomerInput
    extends CreateOrderRequest {
  final CreateOrderNewCustomerInput value;
  const CreateOrderRequestCreateOrderNewCustomerInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class CreateOrderRequestCreateOrderExistingCustomerInput
    extends CreateOrderRequest {
  final CreateOrderExistingCustomerInput value;
  const CreateOrderRequestCreateOrderExistingCustomerInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

sealed class FinancialAccountCreateRequest implements _InttegroValue {
  const FinancialAccountCreateRequest();
  factory FinancialAccountCreateRequest.fromJson(Object? json) {
    try {
      return FinancialAccountCreateRequestFinancialAccountWalletRequest(
        FinancialAccountWalletRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return FinancialAccountCreateRequestFinancialAccountBankRequest(
        FinancialAccountBankRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return FinancialAccountCreateRequestFinancialAccountDoshRequest(
        FinancialAccountDoshRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported FinancialAccountCreateRequest value');
  }
}

final class FinancialAccountCreateRequestFinancialAccountWalletRequest
    extends FinancialAccountCreateRequest {
  final FinancialAccountWalletRequest value;
  const FinancialAccountCreateRequestFinancialAccountWalletRequest(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class FinancialAccountCreateRequestFinancialAccountBankRequest
    extends FinancialAccountCreateRequest {
  final FinancialAccountBankRequest value;
  const FinancialAccountCreateRequestFinancialAccountBankRequest(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class FinancialAccountCreateRequestFinancialAccountDoshRequest
    extends FinancialAccountCreateRequest {
  final FinancialAccountDoshRequest value;
  const FinancialAccountCreateRequestFinancialAccountDoshRequest(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

sealed class LineItemInput implements _InttegroValue {
  const LineItemInput();
  factory LineItemInput.fromJson(Object? json) {
    try {
      return LineItemInputProductLineItemInput(
        ProductLineItemInput.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return LineItemInputFeeLineItemInput(
        FeeLineItemInput.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return LineItemInputShippingLineItemInput(
        ShippingLineItemInput.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    throw FormatException('Unsupported LineItemInput value');
  }
}

final class LineItemInputProductLineItemInput extends LineItemInput {
  final ProductLineItemInput value;
  const LineItemInputProductLineItemInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class LineItemInputFeeLineItemInput extends LineItemInput {
  final FeeLineItemInput value;
  const LineItemInputFeeLineItemInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class LineItemInputShippingLineItemInput extends LineItemInput {
  final ShippingLineItemInput value;
  const LineItemInputShippingLineItemInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

typedef MessageTemplateAttachmentIDs = List<String>;

typedef MessageTemplateAttachmentIDsInput = List<String>;

typedef MessageTemplateVariablesInput = JsonData;

sealed class OrderLineItem implements _InttegroValue {
  const OrderLineItem();
  factory OrderLineItem.fromJson(Object? json) {
    try {
      return OrderLineItemOrderProductLineItem(
        OrderProductLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return OrderLineItemOrderFeeLineItem(
        OrderFeeLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return OrderLineItemOrderShippingLineItem(
        OrderShippingLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return OrderLineItemOrderDiscountLineItem(
        OrderDiscountLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    throw FormatException('Unsupported OrderLineItem value');
  }
}

final class OrderLineItemOrderProductLineItem extends OrderLineItem {
  final OrderProductLineItem value;
  const OrderLineItemOrderProductLineItem(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class OrderLineItemOrderFeeLineItem extends OrderLineItem {
  final OrderFeeLineItem value;
  const OrderLineItemOrderFeeLineItem(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class OrderLineItemOrderShippingLineItem extends OrderLineItem {
  final OrderShippingLineItem value;
  const OrderLineItemOrderShippingLineItem(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class OrderLineItemOrderDiscountLineItem extends OrderLineItem {
  final OrderDiscountLineItem value;
  const OrderLineItemOrderDiscountLineItem(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

sealed class ProductDetailsInput implements _InttegroValue {
  const ProductDetailsInput();
  factory ProductDetailsInput.fromJson(Object? json) {
    try {
      return ProductDetailsInputInlineProductDetailsInput(
        InlineProductDetailsInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ProductDetailsInputCatalogProductWithPriceDataInput(
        CatalogProductWithPriceDataInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ProductDetailsInputCatalogProductWithPriceReferenceInput(
        CatalogProductWithPriceReferenceInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported ProductDetailsInput value');
  }
}

final class ProductDetailsInputInlineProductDetailsInput
    extends ProductDetailsInput {
  final InlineProductDetailsInput value;
  const ProductDetailsInputInlineProductDetailsInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class ProductDetailsInputCatalogProductWithPriceDataInput
    extends ProductDetailsInput {
  final CatalogProductWithPriceDataInput value;
  const ProductDetailsInputCatalogProductWithPriceDataInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class ProductDetailsInputCatalogProductWithPriceReferenceInput
    extends ProductDetailsInput {
  final CatalogProductWithPriceReferenceInput value;
  const ProductDetailsInputCatalogProductWithPriceReferenceInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

typedef RefundReasonInput = RefundReason;

typedef RefundReasonValue = RefundReason;

/// Immutable destination snapshot for a refund.
sealed class RefundSettlement implements _InttegroValue {
  const RefundSettlement();

  factory RefundSettlement.fromJson(Object? json) {
    final value = (json as Map).cast<String, Object?>();
    return switch (value["type"]) {
      "offline" => RefundOfflineSettlement.fromJson(value),
      "payment_method" => RefundPaymentMethodSettlement.fromJson(value),
      _ => throw const FormatException("Unsupported refund settlement type"),
    };
  }
}

/// Settlement for an order paid outside Inttegro.
final class RefundOfflineSettlement extends RefundSettlement {
  const RefundOfflineSettlement();

  factory RefundOfflineSettlement.fromJson(Map<String, Object?> json) {
    _expectExactKeys(json, const {"type"}, "offline refund settlement");
    if (json["type"] != "offline") {
      throw const FormatException("Invalid offline refund settlement");
    }
    return const RefundOfflineSettlement();
  }

  String get type => "offline";

  @override
  Map<String, Object?> toJson() => const {"type": "offline"};
}

/// Settlement returned to the original payment method.
final class RefundPaymentMethodSettlement extends RefundSettlement {
  final RefundSettlementPaymentMethod paymentMethod;
  const RefundPaymentMethodSettlement({required this.paymentMethod});

  factory RefundPaymentMethodSettlement.fromJson(
    Map<String, Object?> json,
  ) {
    _expectExactKeys(
      json,
      const {"type", "payment_method"},
      "payment-method refund settlement",
    );
    if (json["type"] != "payment_method") {
      throw const FormatException("Invalid payment-method refund settlement");
    }
    return RefundPaymentMethodSettlement(
      paymentMethod: RefundSettlementPaymentMethod.fromJson(
        json["payment_method"],
      ),
    );
  }

  String get type => "payment_method";

  @override
  Map<String, Object?> toJson() => {
        "type": type,
        "payment_method": _encodeValue(paymentMethod),
      };
}

/// Caller-safe original payment-method snapshot for a refund.
sealed class RefundSettlementPaymentMethod implements _InttegroValue {
  const RefundSettlementPaymentMethod();

  factory RefundSettlementPaymentMethod.fromJson(Object? json) {
    final value = (json as Map).cast<String, Object?>();
    return switch (value["type"]) {
      "mobile_money" =>
        RefundSettlementMobileMoneyPaymentMethod.fromJson(value),
      "bank_account" =>
        RefundSettlementBankAccountPaymentMethod.fromJson(value),
      _ => throw const FormatException(
          "Unsupported refund settlement payment-method type",
        ),
    };
  }

  String get id;
  String get type;
}

final class RefundSettlementMobileMoneyPaymentMethod
    extends RefundSettlementPaymentMethod {
  @override
  final String id;
  final RefundSettlementMobileMoney mobileMoney;
  const RefundSettlementMobileMoneyPaymentMethod({
    required this.id,
    required this.mobileMoney,
  });

  factory RefundSettlementMobileMoneyPaymentMethod.fromJson(
    Map<String, Object?> json,
  ) {
    _expectExactKeys(
      json,
      const {"id", "type", "mobile_money"},
      "mobile-money refund settlement",
    );
    if (json["type"] != "mobile_money") {
      throw const FormatException("Invalid mobile-money refund settlement");
    }
    return RefundSettlementMobileMoneyPaymentMethod(
      id: json["id"] as String,
      mobileMoney: RefundSettlementMobileMoney.fromJson(
        (json["mobile_money"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  String get type => "mobile_money";

  @override
  Map<String, Object?> toJson() => {
        "id": id,
        "type": type,
        "mobile_money": _encodeValue(mobileMoney),
      };
}

final class RefundSettlementMobileMoney implements _InttegroValue {
  final MobileMoneyNetwork network;
  final String accountNumber;
  final String last4;
  const RefundSettlementMobileMoney({
    required this.network,
    required this.accountNumber,
    required this.last4,
  });

  factory RefundSettlementMobileMoney.fromJson(Map<String, Object?> json) {
    _expectExactKeys(
      json,
      const {"account_number", "last4", "network"},
      "refund settlement mobile-money details",
    );
    return RefundSettlementMobileMoney(
      network: MobileMoneyNetwork.fromJson(json["network"]),
      accountNumber: json["account_number"] as String,
      last4: json["last4"] as String,
    );
  }

  @override
  Map<String, Object?> toJson() => {
        "network": _encodeValue(network),
        "account_number": accountNumber,
        "last4": last4,
      };
}

final class RefundSettlementBankAccountPaymentMethod
    extends RefundSettlementPaymentMethod {
  @override
  final String id;
  final RefundSettlementBankAccount bankAccount;
  const RefundSettlementBankAccountPaymentMethod({
    required this.id,
    required this.bankAccount,
  });

  factory RefundSettlementBankAccountPaymentMethod.fromJson(
    Map<String, Object?> json,
  ) {
    _expectExactKeys(
      json,
      const {"id", "type", "bank_account"},
      "bank-account refund settlement",
    );
    if (json["type"] != "bank_account") {
      throw const FormatException("Invalid bank-account refund settlement");
    }
    return RefundSettlementBankAccountPaymentMethod(
      id: json["id"] as String,
      bankAccount: RefundSettlementBankAccount.fromJson(
        (json["bank_account"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  String get type => "bank_account";

  @override
  Map<String, Object?> toJson() => {
        "id": id,
        "type": type,
        "bank_account": _encodeValue(bankAccount),
      };
}

final class RefundSettlementBankAccount implements _InttegroValue {
  final RefundSettlementGhanaBankAccount ghanaBankAccount;
  const RefundSettlementBankAccount({required this.ghanaBankAccount});

  String get type => "ghana_bank_account";

  factory RefundSettlementBankAccount.fromJson(Map<String, Object?> json) {
    _expectExactKeys(
      json,
      const {"type", "ghana_bank_account"},
      "refund settlement bank-account details",
    );
    if (json["type"] != "ghana_bank_account") {
      throw const FormatException("Unsupported refund bank-account type");
    }
    return RefundSettlementBankAccount(
      ghanaBankAccount: RefundSettlementGhanaBankAccount.fromJson(
        (json["ghana_bank_account"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  Map<String, Object?> toJson() => {
        "type": type,
        "ghana_bank_account": _encodeValue(ghanaBankAccount),
      };
}

final class RefundSettlementGhanaBankAccount implements _InttegroValue {
  final String accountNumber;
  final String last4;
  const RefundSettlementGhanaBankAccount({
    required this.accountNumber,
    required this.last4,
  });

  factory RefundSettlementGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) {
    _expectExactKeys(
      json,
      const {"account_number", "last4"},
      "refund settlement Ghana bank-account details",
    );
    return RefundSettlementGhanaBankAccount(
      accountNumber: json["account_number"] as String,
      last4: json["last4"] as String,
    );
  }

  @override
  Map<String, Object?> toJson() => {
        "account_number": accountNumber,
        "last4": last4,
      };
}

sealed class ReviewUploadRequestAttemptRequest implements _InttegroValue {
  const ReviewUploadRequestAttemptRequest();
  factory ReviewUploadRequestAttemptRequest.fromJson(Object? json) {
    try {
      return ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByIDRequest(
        ReviewUploadRequestAttemptByIDRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByOrdinalRequest(
        ReviewUploadRequestAttemptByOrdinalRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException(
      'Unsupported ReviewUploadRequestAttemptRequest value',
    );
  }
}

final class ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByIDRequest
    extends ReviewUploadRequestAttemptRequest {
  final ReviewUploadRequestAttemptByIDRequest value;
  const ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByIDRequest(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}

final class ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByOrdinalRequest
    extends ReviewUploadRequestAttemptRequest {
  final ReviewUploadRequestAttemptByOrdinalRequest value;
  const ReviewUploadRequestAttemptRequestReviewUploadRequestAttemptByOrdinalRequest(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}

sealed class BroadcastRequestMessageTemplate implements _InttegroValue {
  const BroadcastRequestMessageTemplate();
  factory BroadcastRequestMessageTemplate.fromJson(Object? json) {
    try {
      return BroadcastRequestMessageTemplateStringValue(json as String);
    } catch (_) {}
    try {
      return BroadcastRequestMessageTemplateMessageTemplateReferenceInput(
        MessageTemplateReferenceInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported BroadcastRequestMessageTemplate value');
  }
}

final class BroadcastRequestMessageTemplateStringValue
    extends BroadcastRequestMessageTemplate {
  final String value;
  const BroadcastRequestMessageTemplateStringValue(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class BroadcastRequestMessageTemplateMessageTemplateReferenceInput
    extends BroadcastRequestMessageTemplate {
  final MessageTemplateReferenceInput value;
  const BroadcastRequestMessageTemplateMessageTemplateReferenceInput(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}

sealed class ProductLineItemInputProduct implements _InttegroValue {
  const ProductLineItemInputProduct();
  factory ProductLineItemInputProduct.fromJson(Object? json) {
    try {
      return ProductLineItemInputProductInlineProductDetailsInput(
        InlineProductDetailsInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ProductLineItemInputProductCatalogProductWithPriceDataInput(
        CatalogProductWithPriceDataInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ProductLineItemInputProductCatalogProductWithPriceReferenceInput(
        CatalogProductWithPriceReferenceInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported ProductLineItemInputProduct value');
  }
}

final class ProductLineItemInputProductInlineProductDetailsInput
    extends ProductLineItemInputProduct {
  final InlineProductDetailsInput value;
  const ProductLineItemInputProductInlineProductDetailsInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class ProductLineItemInputProductCatalogProductWithPriceDataInput
    extends ProductLineItemInputProduct {
  final CatalogProductWithPriceDataInput value;
  const ProductLineItemInputProductCatalogProductWithPriceDataInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class ProductLineItemInputProductCatalogProductWithPriceReferenceInput
    extends ProductLineItemInputProduct {
  final CatalogProductWithPriceReferenceInput value;
  const ProductLineItemInputProductCatalogProductWithPriceReferenceInput(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}

sealed class SendChimeRequestRecipient implements _InttegroValue {
  const SendChimeRequestRecipient();
  factory SendChimeRequestRecipient.fromJson(Object? json) {
    try {
      return SendChimeRequestRecipientChimeInlineRecipientInputVariant1(
        ChimeInlineRecipientInputVariant1.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return SendChimeRequestRecipientChimeInlineRecipientInputVariant2(
        ChimeInlineRecipientInputVariant2.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return SendChimeRequestRecipientChimeSavedCustomerRecipientInput(
        ChimeSavedCustomerRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported SendChimeRequestRecipient value');
  }
}

final class SendChimeRequestRecipientChimeInlineRecipientInputVariant1
    extends SendChimeRequestRecipient {
  final ChimeInlineRecipientInputVariant1 value;
  const SendChimeRequestRecipientChimeInlineRecipientInputVariant1(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class SendChimeRequestRecipientChimeInlineRecipientInputVariant2
    extends SendChimeRequestRecipient {
  final ChimeInlineRecipientInputVariant2 value;
  const SendChimeRequestRecipientChimeInlineRecipientInputVariant2(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

final class SendChimeRequestRecipientChimeSavedCustomerRecipientInput
    extends SendChimeRequestRecipient {
  final ChimeSavedCustomerRecipientInput value;
  const SendChimeRequestRecipientChimeSavedCustomerRecipientInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}

/// Typed Inttegro request parameters.
final class ActivatePaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const ActivatePaymentMethodRequest({required this.paymentMethodId});
  factory ActivatePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      ActivatePaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}

/// Typed Inttegro request parameters.
final class AddProductPriceRequest implements _InttegroValue {
  final String? label;
  final String? about;
  final String productId;
  final AmountParams amount;
  const AddProductPriceRequest({
    this.label,
    this.about,
    required this.productId,
    required this.amount,
  });
  factory AddProductPriceRequest.fromJson(Map<String, Object?> json) =>
      AddProductPriceRequest(
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        productId: json["product_id"] as String,
        amount: AmountParams.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": _encodeValue(label),
        if (about != null) "about": _encodeValue(about),
        "product_id": _encodeValue(productId),
        "amount": _encodeValue(amount),
      };
}

/// Typed Inttegro request parameters.
final class AddressInput implements _InttegroValue {
  final String? line2;
  final String? region;
  final String? district;
  final String? postCode;
  final String name;
  final String phoneNumber;
  final String line1;
  final String town;
  final String country;
  const AddressInput({
    this.line2,
    this.region,
    this.district,
    this.postCode,
    required this.name,
    required this.phoneNumber,
    required this.line1,
    required this.town,
    required this.country,
  });
  factory AddressInput.fromJson(Map<String, Object?> json) => AddressInput(
        line2: json["line2"] == null ? null : json["line2"] as String,
        region: json["region"] == null ? null : json["region"] as String,
        district: json["district"] == null ? null : json["district"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        name: json["name"] as String,
        phoneNumber: json["phone_number"] as String,
        line1: json["line1"] as String,
        town: json["town"] as String,
        country: json["country"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (line2 != null) "line2": _encodeValue(line2),
        if (region != null) "region": _encodeValue(region),
        if (district != null) "district": _encodeValue(district),
        if (postCode != null) "post_code": _encodeValue(postCode),
        "name": _encodeValue(name),
        "phone_number": _encodeValue(phoneNumber),
        "line1": _encodeValue(line1),
        "town": _encodeValue(town),
        "country": _encodeValue(country),
      };
}

/// Typed Inttegro domain value.
final class Amount implements _InttegroValue {
  final Currency currency;
  final int value;
  const Amount({required this.currency, required this.value});
  factory Amount.fromJson(Map<String, Object?> json) => Amount(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}

/// Typed Inttegro request parameters.
final class AmountParams implements _InttegroValue {
  final Currency currency;
  final int value;
  const AmountParams({required this.currency, required this.value});
  factory AmountParams.fromJson(Map<String, Object?> json) => AmountParams(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}

/// Typed Inttegro domain value.
final class Application implements _InttegroValue {
  final String id;
  final String name;
  final String? alias;
  final String? description;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;
  final ApplicationSecretKey? secretKey;
  final ApplicationRelationship? relationship;
  const Application({
    required this.id,
    required this.name,
    this.alias,
    this.description,
    required this.createdAt,
    this.updatedAt,
    this.archivedAt,
    this.secretKey,
    this.relationship,
  });
  factory Application.fromJson(Map<String, Object?> json) => Application(
        id: json["id"] as String,
        name: json["name"] as String,
        alias: json["alias"] == null ? null : json["alias"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        secretKey: json["secret_key"] == null
            ? null
            : ApplicationSecretKey.fromJson(
                (json["secret_key"] as Map).cast<String, Object?>(),
              ),
        relationship: json["relationship"] == null
            ? null
            : ApplicationRelationship.fromJson(
                (json["relationship"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (alias != null) "alias": _encodeValue(alias),
        if (description != null) "description": _encodeValue(description),
        "created_at": _encodeValue(createdAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        if (secretKey != null) "secret_key": _encodeValue(secretKey),
        if (relationship != null) "relationship": _encodeValue(relationship),
      };
}

/// Typed Inttegro domain value.
final class ApplicationRelationship implements _InttegroValue {
  final String id;
  final AppRelationshipKind kind;
  final String policyVersion;
  final AppRelationshipStatus status;
  final String actorAppId;
  final String creatorAppId;
  final String placementParentAppId;
  final String subjectAppId;
  final String childAppId;
  final String childStanding;
  final ApplicationRelationshipPolicy relationshipPolicy;
  final bool retainedCreatorAuthorityExists;
  final DateTime createdAt;
  const ApplicationRelationship({
    required this.id,
    required this.kind,
    required this.policyVersion,
    required this.status,
    required this.actorAppId,
    required this.creatorAppId,
    required this.placementParentAppId,
    required this.subjectAppId,
    required this.childAppId,
    required this.childStanding,
    required this.relationshipPolicy,
    required this.retainedCreatorAuthorityExists,
    required this.createdAt,
  });
  factory ApplicationRelationship.fromJson(Map<String, Object?> json) =>
      ApplicationRelationship(
        id: json["id"] as String,
        kind: AppRelationshipKind.fromJson(json["kind"]),
        policyVersion: json["policy_version"] as String,
        status: AppRelationshipStatus.fromJson(json["status"]),
        actorAppId: json["actor_app_id"] as String,
        creatorAppId: json["creator_app_id"] as String,
        placementParentAppId: json["placement_parent_app_id"] as String,
        subjectAppId: json["subject_app_id"] as String,
        childAppId: json["child_app_id"] as String,
        childStanding: json["child_standing"] as String,
        relationshipPolicy: ApplicationRelationshipPolicy.fromJson(
          (json["relationship_policy"] as Map).cast<String, Object?>(),
        ),
        retainedCreatorAuthorityExists:
            json["retained_creator_authority_exists"] as bool,
        createdAt: _decodeDateTime(json["created_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "kind": _encodeValue(kind),
        "policy_version": _encodeValue(policyVersion),
        "status": _encodeValue(status),
        "actor_app_id": _encodeValue(actorAppId),
        "creator_app_id": _encodeValue(creatorAppId),
        "placement_parent_app_id": _encodeValue(placementParentAppId),
        "subject_app_id": _encodeValue(subjectAppId),
        "child_app_id": _encodeValue(childAppId),
        "child_standing": _encodeValue(childStanding),
        "relationship_policy": _encodeValue(relationshipPolicy),
        "retained_creator_authority_exists": _encodeValue(
          retainedCreatorAuthorityExists,
        ),
        "created_at": _encodeValue(createdAt),
      };
}

/// Typed Inttegro domain value.
final class ApplicationRelationshipPolicy implements _InttegroValue {
  final String childStanding;
  final AppManagementRole management;
  final AppCredentialOwner credentials;
  const ApplicationRelationshipPolicy({
    required this.childStanding,
    required this.management,
    required this.credentials,
  });
  factory ApplicationRelationshipPolicy.fromJson(Map<String, Object?> json) =>
      ApplicationRelationshipPolicy(
        childStanding: json["child_standing"] as String,
        management: AppManagementRole.fromJson(json["management"]),
        credentials: AppCredentialOwner.fromJson(json["credentials"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "child_standing": _encodeValue(childStanding),
        "management": _encodeValue(management),
        "credentials": _encodeValue(credentials),
      };
}

/// Typed Inttegro domain value.
final class ApplicationSecretKey implements _InttegroValue {
  final String? id;
  final String? tokenType;
  final DateTime? issuedAt;
  final String? token;
  const ApplicationSecretKey({
    this.id,
    this.tokenType,
    this.issuedAt,
    this.token,
  });
  factory ApplicationSecretKey.fromJson(
    Map<String, Object?> json,
  ) =>
      ApplicationSecretKey(
        id: json["id"] == null ? null : json["id"] as String,
        tokenType:
            json["token_type"] == null ? null : json["token_type"] as String,
        issuedAt: json["issued_at"] == null
            ? null
            : _decodeDateTime(json["issued_at"]),
        token: json["token"] == null ? null : json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (tokenType != null) "token_type": _encodeValue(tokenType),
        if (issuedAt != null) "issued_at": _encodeValue(issuedAt),
        if (token != null) "token": _encodeValue(token),
      };
}

/// Typed Inttegro request parameters.
final class ArchivePaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const ArchivePaymentMethodRequest({required this.paymentMethodId});
  factory ArchivePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      ArchivePaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}

/// Typed Inttegro domain value.
final class BalanceTransaction implements _InttegroValue {
  final BalanceTransactionAmount amount;
  final DateTime? availableAt;
  final DateTime? claimedAt;
  final DateTime createdAt;
  final String id;
  final String orderId;
  final DateTime? paidAt;
  final String? paymentId;
  final String? payoutId;
  final PaymentPayoutConfiguration? payoutConfiguration;
  final String? refundId;
  final BalanceTransactionType type;
  const BalanceTransaction({
    required this.amount,
    this.availableAt,
    this.claimedAt,
    required this.createdAt,
    required this.id,
    required this.orderId,
    this.paidAt,
    this.paymentId,
    this.payoutId,
    this.payoutConfiguration,
    this.refundId,
    required this.type,
  });
  factory BalanceTransaction.fromJson(
    Map<String, Object?> json,
  ) =>
      BalanceTransaction(
        amount: BalanceTransactionAmount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
        availableAt: json["available_at"] == null
            ? null
            : _decodeDateTime(json["available_at"]),
        claimedAt: json["claimed_at"] == null
            ? null
            : _decodeDateTime(json["claimed_at"]),
        createdAt: _decodeDateTime(json["created_at"]),
        id: json["id"] as String,
        orderId: json["order_id"] as String,
        paidAt:
            json["paid_at"] == null ? null : _decodeDateTime(json["paid_at"]),
        paymentId:
            json["payment_id"] == null ? null : json["payment_id"] as String,
        payoutId:
            json["payout_id"] == null ? null : json["payout_id"] as String,
        payoutConfiguration: json["payout_configuration"] == null
            ? null
            : PaymentPayoutConfiguration.fromJson(
                (json["payout_configuration"] as Map).cast<String, Object?>(),
              ),
        refundId:
            json["refund_id"] == null ? null : json["refund_id"] as String,
        type: BalanceTransactionType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "amount": _encodeValue(amount),
        if (availableAt != null) "available_at": _encodeValue(availableAt),
        if (claimedAt != null) "claimed_at": _encodeValue(claimedAt),
        "created_at": _encodeValue(createdAt),
        "id": _encodeValue(id),
        "order_id": _encodeValue(orderId),
        if (paidAt != null) "paid_at": _encodeValue(paidAt),
        if (paymentId != null) "payment_id": _encodeValue(paymentId),
        if (payoutId != null) "payout_id": _encodeValue(payoutId),
        if (payoutConfiguration != null)
          "payout_configuration": _encodeValue(payoutConfiguration),
        if (refundId != null) "refund_id": _encodeValue(refundId),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class BalanceTransactionAmount implements _InttegroValue {
  final String currency;
  final int value;
  const BalanceTransactionAmount({required this.currency, required this.value});
  factory BalanceTransactionAmount.fromJson(Map<String, Object?> json) =>
      BalanceTransactionAmount(
        currency: json["currency"] as String,
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}

/// Typed Inttegro domain value.
final class BalanceTransactionPage implements _InttegroValue {
  final int number;
  final int size;
  final List<BalanceTransaction>? transactions;
  const BalanceTransactionPage({
    required this.number,
    required this.size,
    this.transactions,
  });
  factory BalanceTransactionPage.fromJson(Map<String, Object?> json) =>
      BalanceTransactionPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        transactions: json["transactions"] == null
            ? null
            : (json["transactions"] as List)
                .map(
                  (item) => BalanceTransaction.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        if (transactions != null) "transactions": _encodeValue(transactions),
      };
}

/// Typed Inttegro domain value.
final class BalanceValue implements _InttegroValue {
  final int amount;
  const BalanceValue({required this.amount});
  factory BalanceValue.fromJson(Map<String, Object?> json) =>
      BalanceValue(amount: (json["amount"] as num).toInt());
  @override
  Map<String, Object?> toJson() => {"amount": _encodeValue(amount)};
}

/// Typed Inttegro request parameters.
final class BillingDetailsInput implements _InttegroValue {
  final AddressInput? address;
  final String name;
  final String emailAddress;
  final String phoneNumber;
  const BillingDetailsInput({
    this.address,
    required this.name,
    required this.emailAddress,
    required this.phoneNumber,
  });
  factory BillingDetailsInput.fromJson(Map<String, Object?> json) =>
      BillingDetailsInput(
        address: json["address"] == null
            ? null
            : AddressInput.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
        emailAddress: json["email_address"] as String,
        phoneNumber: json["phone_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (address != null) "address": _encodeValue(address),
        "name": _encodeValue(name),
        "email_address": _encodeValue(emailAddress),
        "phone_number": _encodeValue(phoneNumber),
      };
}

/// Typed Inttegro domain value.
final class BroadcastCancelDetail implements _InttegroValue {
  final List<String>? chimeIds;
  final String content;
  final DateTime createdAt;
  final List<String>? customerIds;
  final ChimeEmailMessage? email;
  final List<BroadcastError>? errors;
  final DateTime? executedAt;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String> recipients;
  final DateTime sendAfter;
  final String senderId;
  final DateTime? canceledAt;
  const BroadcastCancelDetail({
    this.chimeIds,
    required this.content,
    required this.createdAt,
    this.customerIds,
    this.email,
    this.errors,
    this.executedAt,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
    required this.senderId,
    this.canceledAt,
  });
  factory BroadcastCancelDetail.fromJson(
    Map<String, Object?> json,
  ) =>
      BroadcastCancelDetail(
        chimeIds: json["chime_ids"] == null
            ? null
            : (json["chime_ids"] as List)
                .map((item) => item as String)
                .toList(),
        content: json["content"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        customerIds: json["customer_ids"] == null
            ? null
            : (json["customer_ids"] as List)
                .map((item) => item as String)
                .toList(),
        email: json["email"] == null
            ? null
            : ChimeEmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        errors: json["errors"] == null
            ? null
            : (json["errors"] as List)
                .map(
                  (item) => BroadcastError.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients:
            (json["recipients"] as List).map((item) => item as String).toList(),
        sendAfter: _decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (chimeIds != null) "chime_ids": _encodeValue(chimeIds),
        "content": _encodeValue(content),
        "created_at": _encodeValue(createdAt),
        if (customerIds != null) "customer_ids": _encodeValue(customerIds),
        if (email != null) "email": _encodeValue(email),
        if (errors != null) "errors": _encodeValue(errors),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
        "sender_id": _encodeValue(senderId),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
      };
}

/// Typed Inttegro domain value.
final class BroadcastCreationDetail implements _InttegroValue {
  final String content;
  final DateTime createdAt;
  final List<String>? customerIds;
  final ChimeEmailMessage? email;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String> recipients;
  final DateTime sendAfter;
  final String senderId;
  const BroadcastCreationDetail({
    required this.content,
    required this.createdAt,
    this.customerIds,
    this.email,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
    required this.senderId,
  });
  factory BroadcastCreationDetail.fromJson(Map<String, Object?> json) =>
      BroadcastCreationDetail(
        content: json["content"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        customerIds: json["customer_ids"] == null
            ? null
            : (json["customer_ids"] as List)
                .map((item) => item as String)
                .toList(),
        email: json["email"] == null
            ? null
            : ChimeEmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients:
            (json["recipients"] as List).map((item) => item as String).toList(),
        sendAfter: _decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "content": _encodeValue(content),
        "created_at": _encodeValue(createdAt),
        if (customerIds != null) "customer_ids": _encodeValue(customerIds),
        if (email != null) "email": _encodeValue(email),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
        "sender_id": _encodeValue(senderId),
      };
}

/// Typed Inttegro domain value.
final class BroadcastDetail implements _InttegroValue {
  final List<String>? chimeIds;
  final String content;
  final DateTime createdAt;
  final List<String>? customerIds;
  final ChimeEmailMessage? email;
  final List<BroadcastError>? errors;
  final DateTime? executedAt;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String> recipients;
  final DateTime sendAfter;
  final String senderId;
  const BroadcastDetail({
    this.chimeIds,
    required this.content,
    required this.createdAt,
    this.customerIds,
    this.email,
    this.errors,
    this.executedAt,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
    required this.senderId,
  });
  factory BroadcastDetail.fromJson(
    Map<String, Object?> json,
  ) =>
      BroadcastDetail(
        chimeIds: json["chime_ids"] == null
            ? null
            : (json["chime_ids"] as List)
                .map((item) => item as String)
                .toList(),
        content: json["content"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        customerIds: json["customer_ids"] == null
            ? null
            : (json["customer_ids"] as List)
                .map((item) => item as String)
                .toList(),
        email: json["email"] == null
            ? null
            : ChimeEmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        errors: json["errors"] == null
            ? null
            : (json["errors"] as List)
                .map(
                  (item) => BroadcastError.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients:
            (json["recipients"] as List).map((item) => item as String).toList(),
        sendAfter: _decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (chimeIds != null) "chime_ids": _encodeValue(chimeIds),
        "content": _encodeValue(content),
        "created_at": _encodeValue(createdAt),
        if (customerIds != null) "customer_ids": _encodeValue(customerIds),
        if (email != null) "email": _encodeValue(email),
        if (errors != null) "errors": _encodeValue(errors),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
        "sender_id": _encodeValue(senderId),
      };
}

/// Typed Inttegro domain value.
final class BroadcastError implements _InttegroValue {
  final String? recipient;
  final String? fixCode;
  final String? type;
  const BroadcastError({this.recipient, this.fixCode, this.type});
  factory BroadcastError.fromJson(Map<String, Object?> json) => BroadcastError(
        recipient:
            json["recipient"] == null ? null : json["recipient"] as String,
        fixCode: json["fix_code"] == null ? null : json["fix_code"] as String,
        type: json["type"] == null ? null : json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (recipient != null) "recipient": _encodeValue(recipient),
        if (fixCode != null) "fix_code": _encodeValue(fixCode),
        if (type != null) "type": _encodeValue(type),
      };
}

/// Typed Inttegro request parameters.
final class BroadcastRequest implements _InttegroValue {
  final BroadcastRequestRequestMeta? requestMeta;
  final BroadcastRequestMessageTemplate? messageTemplate;
  final ChimeEmailMessageInput? email;
  final String? purpose;
  final String? sender;
  final List<Object?> recipients;
  const BroadcastRequest({
    this.requestMeta,
    this.messageTemplate,
    this.email,
    this.purpose,
    this.sender,
    required this.recipients,
  });
  factory BroadcastRequest.fromJson(Map<String, Object?> json) =>
      BroadcastRequest(
        requestMeta: json["request_meta"] == null
            ? null
            : BroadcastRequestRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        messageTemplate: json["message_template"] == null
            ? null
            : BroadcastRequestMessageTemplate.fromJson(
                json["message_template"],
              ),
        email: json["email"] == null
            ? null
            : ChimeEmailMessageInput.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        sender: json["sender"] == null ? null : json["sender"] as String,
        recipients: (json["recipients"] as List).map((item) => item).toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        if (messageTemplate != null)
          "message_template": _encodeValue(messageTemplate),
        if (email != null) "email": _encodeValue(email),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (sender != null) "sender": _encodeValue(sender),
        "recipients": _encodeValue(recipients),
      };
}

/// Typed Inttegro request parameters.
final class BroadcastRequestRequestMeta implements _InttegroValue {
  final String? idempotencyKey;
  const BroadcastRequestRequestMeta({this.idempotencyKey});
  factory BroadcastRequestRequestMeta.fromJson(Map<String, Object?> json) =>
      BroadcastRequestRequestMeta(
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
      };
}

/// Typed Inttegro request parameters.
final class CancelBroadcastRequest implements _InttegroValue {
  final String broadcastId;
  const CancelBroadcastRequest({required this.broadcastId});
  factory CancelBroadcastRequest.fromJson(Map<String, Object?> json) =>
      CancelBroadcastRequest(broadcastId: json["broadcast_id"] as String);
  @override
  Map<String, Object?> toJson() => {"broadcast_id": _encodeValue(broadcastId)};
}

/// Typed Inttegro request parameters.
final class CancelOrderRequest implements _InttegroValue {
  final String? reason;
  final bool? executeRefund;
  final String orderId;
  const CancelOrderRequest({
    this.reason,
    this.executeRefund,
    required this.orderId,
  });
  factory CancelOrderRequest.fromJson(Map<String, Object?> json) =>
      CancelOrderRequest(
        reason: json["reason"] == null ? null : json["reason"] as String,
        executeRefund: json["execute_refund"] == null
            ? null
            : json["execute_refund"] as bool,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reason != null) "reason": _encodeValue(reason),
        if (executeRefund != null)
          "execute_refund": _encodeValue(executeRefund),
        "order_id": _encodeValue(orderId),
      };
}

/// Typed Inttegro request parameters.
final class CancelPayoutRequest implements _InttegroValue {
  final String payoutId;
  const CancelPayoutRequest({required this.payoutId});
  factory CancelPayoutRequest.fromJson(Map<String, Object?> json) =>
      CancelPayoutRequest(payoutId: json["payout_id"] as String);
  @override
  Map<String, Object?> toJson() => {"payout_id": _encodeValue(payoutId)};
}

/// Typed Inttegro request parameters.
final class CancelPurchaseIntentRequest implements _InttegroValue {
  final String? id;
  final String? purchaseIntentId;
  const CancelPurchaseIntentRequest({this.id, this.purchaseIntentId});
  factory CancelPurchaseIntentRequest.fromJson(Map<String, Object?> json) =>
      CancelPurchaseIntentRequest(
        id: json["id"] == null ? null : json["id"] as String,
        purchaseIntentId: json["purchase_intent_id"] == null
            ? null
            : json["purchase_intent_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (purchaseIntentId != null)
          "purchase_intent_id": _encodeValue(purchaseIntentId),
      };
}

/// Typed Inttegro request parameters.
final class CancelRefundRequest implements _InttegroValue {
  final RefundRequestMetaInput? requestMeta;
  final String refundId;
  const CancelRefundRequest({this.requestMeta, required this.refundId});
  factory CancelRefundRequest.fromJson(Map<String, Object?> json) =>
      CancelRefundRequest(
        requestMeta: json["request_meta"] == null
            ? null
            : RefundRequestMetaInput.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        refundId: json["refund_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        "refund_id": _encodeValue(refundId),
      };
}

/// Typed Inttegro request parameters.
final class CancelScheduleRequest implements _InttegroValue {
  final String scheduleId;
  const CancelScheduleRequest({required this.scheduleId});
  factory CancelScheduleRequest.fromJson(Map<String, Object?> json) =>
      CancelScheduleRequest(scheduleId: json["schedule_id"] as String);
  @override
  Map<String, Object?> toJson() => {"schedule_id": _encodeValue(scheduleId)};
}

/// Typed Inttegro request parameters.
final class CancelUploadRequestRequest implements _InttegroValue {
  final FileActorInput? canceledBy;
  final String id;
  const CancelUploadRequestRequest({this.canceledBy, required this.id});
  factory CancelUploadRequestRequest.fromJson(Map<String, Object?> json) =>
      CancelUploadRequestRequest(
        canceledBy: json["canceled_by"] == null
            ? null
            : FileActorInput.fromJson(
                (json["canceled_by"] as Map).cast<String, Object?>(),
              ),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (canceledBy != null) "canceled_by": _encodeValue(canceledBy),
        "id": _encodeValue(id),
      };
}

/// Typed Inttegro domain value.
final class CatalogPrice implements _InttegroValue {
  final String id;
  final String? label;
  final String? about;
  final bool active;
  final Amount nominal;
  final String? productId;
  final PriceEmbeddedProduct? product;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;
  const CatalogPrice({
    required this.id,
    this.label,
    this.about,
    required this.active,
    required this.nominal,
    this.productId,
    this.product,
    required this.createdAt,
    this.updatedAt,
    this.archivedAt,
  });
  factory CatalogPrice.fromJson(Map<String, Object?> json) => CatalogPrice(
        id: json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        active: json["active"] as bool,
        nominal:
            Amount.fromJson((json["nominal"] as Map).cast<String, Object?>()),
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        product: json["product"] == null
            ? null
            : PriceEmbeddedProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        if (about != null) "about": _encodeValue(about),
        "active": _encodeValue(active),
        "nominal": _encodeValue(nominal),
        if (productId != null) "product_id": _encodeValue(productId),
        if (product != null) "product": _encodeValue(product),
        "created_at": _encodeValue(createdAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
      };
}

/// Typed Inttegro request parameters.
final class CatalogPriceParams implements _InttegroValue {
  final String? productId;
  final String? label;
  final String? about;
  final AmountParams amount;
  const CatalogPriceParams({
    this.productId,
    this.label,
    this.about,
    required this.amount,
  });
  factory CatalogPriceParams.fromJson(Map<String, Object?> json) =>
      CatalogPriceParams(
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        amount: AmountParams.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (productId != null) "product_id": _encodeValue(productId),
        if (label != null) "label": _encodeValue(label),
        if (about != null) "about": _encodeValue(about),
        "amount": _encodeValue(amount),
      };
}

/// Typed Inttegro request parameters.
final class CatalogProductWithPriceDataInput implements _InttegroValue {
  final PriceParams price;
  final String productId;
  final int quantity;
  const CatalogProductWithPriceDataInput({
    required this.price,
    required this.productId,
    required this.quantity,
  });
  factory CatalogProductWithPriceDataInput.fromJson(
    Map<String, Object?> json,
  ) =>
      CatalogProductWithPriceDataInput(
        price: PriceParams.fromJson(
            (json["price"] as Map).cast<String, Object?>()),
        productId: json["product_id"] as String,
        quantity: (json["quantity"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "price": _encodeValue(price),
        "product_id": _encodeValue(productId),
        "quantity": _encodeValue(quantity),
      };
}

/// Typed Inttegro request parameters.
final class CatalogProductWithPriceReferenceInput implements _InttegroValue {
  final String priceId;
  final String productId;
  final int quantity;
  const CatalogProductWithPriceReferenceInput({
    required this.priceId,
    required this.productId,
    required this.quantity,
  });
  factory CatalogProductWithPriceReferenceInput.fromJson(
    Map<String, Object?> json,
  ) =>
      CatalogProductWithPriceReferenceInput(
        priceId: json["price_id"] as String,
        productId: json["product_id"] as String,
        quantity: (json["quantity"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "price_id": _encodeValue(priceId),
        "product_id": _encodeValue(productId),
        "quantity": _encodeValue(quantity),
      };
}

/// Typed Inttegro domain value.
final class Chime implements _InttegroValue {
  final DateTime createdAt;
  final CustomData? customData;
  final String? customerId;
  final ChimeEmailMessage? email;
  final String fullMessage;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final ChimeRecipient recipient;
  final String senderId;
  final ChimeTransmission? transmission;
  const Chime({
    required this.createdAt,
    this.customData,
    this.customerId,
    this.email,
    required this.fullMessage,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    required this.recipient,
    required this.senderId,
    this.transmission,
  });
  factory Chime.fromJson(Map<String, Object?> json) => Chime(
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        email: json["email"] == null
            ? null
            : ChimeEmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        fullMessage: json["full_message"] as String,
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipient: ChimeRecipient.fromJson(
          (json["recipient"] as Map).cast<String, Object?>(),
        ),
        senderId: json["sender_id"] as String,
        transmission: json["transmission"] == null
            ? null
            : ChimeTransmission.fromJson(
                (json["transmission"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (customerId != null) "customer_id": _encodeValue(customerId),
        if (email != null) "email": _encodeValue(email),
        "full_message": _encodeValue(fullMessage),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipient": _encodeValue(recipient),
        "sender_id": _encodeValue(senderId),
        if (transmission != null) "transmission": _encodeValue(transmission),
      };
}

/// Typed Inttegro domain value.
final class ChimeEmailEvent implements _InttegroValue {
  final String? bounceSubType;
  final String? bounceType;
  final String? complaintSubType;
  final String id;
  final DateTime occurredAt;
  final String provider;
  final String providerMessageId;
  final String? reason;
  final String? reasonCode;
  final String? recipient;
  final String? source;
  final bool? suppressRecipient;
  final bool? temporary;
  final String type;
  const ChimeEmailEvent({
    this.bounceSubType,
    this.bounceType,
    this.complaintSubType,
    required this.id,
    required this.occurredAt,
    required this.provider,
    required this.providerMessageId,
    this.reason,
    this.reasonCode,
    this.recipient,
    this.source,
    this.suppressRecipient,
    this.temporary,
    required this.type,
  });
  factory ChimeEmailEvent.fromJson(Map<String, Object?> json) =>
      ChimeEmailEvent(
        bounceSubType: json["bounce_sub_type"] == null
            ? null
            : json["bounce_sub_type"] as String,
        bounceType:
            json["bounce_type"] == null ? null : json["bounce_type"] as String,
        complaintSubType: json["complaint_sub_type"] == null
            ? null
            : json["complaint_sub_type"] as String,
        id: json["id"] as String,
        occurredAt: _decodeDateTime(json["occurred_at"]),
        provider: json["provider"] as String,
        providerMessageId: json["provider_message_id"] as String,
        reason: json["reason"] == null ? null : json["reason"] as String,
        reasonCode:
            json["reason_code"] == null ? null : json["reason_code"] as String,
        recipient:
            json["recipient"] == null ? null : json["recipient"] as String,
        source: json["source"] == null ? null : json["source"] as String,
        suppressRecipient: json["suppress_recipient"] == null
            ? null
            : json["suppress_recipient"] as bool,
        temporary: json["temporary"] == null ? null : json["temporary"] as bool,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (bounceSubType != null)
          "bounce_sub_type": _encodeValue(bounceSubType),
        if (bounceType != null) "bounce_type": _encodeValue(bounceType),
        if (complaintSubType != null)
          "complaint_sub_type": _encodeValue(complaintSubType),
        "id": _encodeValue(id),
        "occurred_at": _encodeValue(occurredAt),
        "provider": _encodeValue(provider),
        "provider_message_id": _encodeValue(providerMessageId),
        if (reason != null) "reason": _encodeValue(reason),
        if (reasonCode != null) "reason_code": _encodeValue(reasonCode),
        if (recipient != null) "recipient": _encodeValue(recipient),
        if (source != null) "source": _encodeValue(source),
        if (suppressRecipient != null)
          "suppress_recipient": _encodeValue(suppressRecipient),
        if (temporary != null) "temporary": _encodeValue(temporary),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class ChimeEmailMailbox implements _InttegroValue {
  final String? name;
  final String? address;
  const ChimeEmailMailbox({this.name, this.address});
  factory ChimeEmailMailbox.fromJson(Map<String, Object?> json) =>
      ChimeEmailMailbox(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null ? null : json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}

/// Typed Inttegro request parameters.
final class ChimeEmailMailboxInput implements _InttegroValue {
  final String? name;
  final String? address;
  const ChimeEmailMailboxInput({this.name, this.address});
  factory ChimeEmailMailboxInput.fromJson(Map<String, Object?> json) =>
      ChimeEmailMailboxInput(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null ? null : json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}

/// Typed Inttegro domain value.
final class ChimeEmailMessage implements _InttegroValue {
  final String? subject;
  final String? text;
  final String? html;
  final ChimeEmailMailbox? from;
  final ChimeEmailMailbox? replyTo;
  final MessageHeaders? headers;
  final ChimeEmailSafetyResult? safety;
  final ChimeEmailSchemaMarkup? schema;
  const ChimeEmailMessage({
    this.subject,
    this.text,
    this.html,
    this.from,
    this.replyTo,
    this.headers,
    this.safety,
    this.schema,
  });
  factory ChimeEmailMessage.fromJson(Map<String, Object?> json) =>
      ChimeEmailMessage(
        subject: json["subject"] == null ? null : json["subject"] as String,
        text: json["text"] == null ? null : json["text"] as String,
        html: json["html"] == null ? null : json["html"] as String,
        from: json["from"] == null
            ? null
            : ChimeEmailMailbox.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : ChimeEmailMailbox.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : MessageHeaders.fromJson(json["headers"]),
        safety: json["safety"] == null
            ? null
            : ChimeEmailSafetyResult.fromJson(
                (json["safety"] as Map).cast<String, Object?>(),
              ),
        schema: json["schema"] == null
            ? null
            : ChimeEmailSchemaMarkup.fromJson(
                (json["schema"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (subject != null) "subject": _encodeValue(subject),
        if (text != null) "text": _encodeValue(text),
        if (html != null) "html": _encodeValue(html),
        if (from != null) "from": _encodeValue(from),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
        if (safety != null) "safety": _encodeValue(safety),
        if (schema != null) "schema": _encodeValue(schema),
      };
}

/// Typed Inttegro request parameters.
final class ChimeEmailMessageInput implements _InttegroValue {
  final String? html;
  final String? replyTo;
  final MessageHeaders? headers;
  final String subject;
  final String text;
  final ChimeEmailMailboxInput from;
  const ChimeEmailMessageInput({
    this.html,
    this.replyTo,
    this.headers,
    required this.subject,
    required this.text,
    required this.from,
  });
  factory ChimeEmailMessageInput.fromJson(Map<String, Object?> json) =>
      ChimeEmailMessageInput(
        html: json["html"] == null ? null : json["html"] as String,
        replyTo: json["reply_to"] == null ? null : json["reply_to"] as String,
        headers: json["headers"] == null
            ? null
            : MessageHeaders.fromJson(json["headers"]),
        subject: json["subject"] as String,
        text: json["text"] as String,
        from: ChimeEmailMailboxInput.fromJson(
          (json["from"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (html != null) "html": _encodeValue(html),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
        "subject": _encodeValue(subject),
        "text": _encodeValue(text),
        "from": _encodeValue(from),
      };
}

/// Typed Inttegro domain value.
final class ChimeEmailSafetyResult implements _InttegroValue {
  final ContentSafetyStatus? status;
  final List<String>? reasonCodes;
  final String? sanitizedHtml;
  final String? normalizedText;
  final List<ChimeEmailScannedLink>? links;
  final String? scanner;
  final String? contentHash;
  final String? quarantineNotes;
  const ChimeEmailSafetyResult({
    this.status,
    this.reasonCodes,
    this.sanitizedHtml,
    this.normalizedText,
    this.links,
    this.scanner,
    this.contentHash,
    this.quarantineNotes,
  });
  factory ChimeEmailSafetyResult.fromJson(Map<String, Object?> json) =>
      ChimeEmailSafetyResult(
        status: json["status"] == null
            ? null
            : ContentSafetyStatus.fromJson(json["status"]),
        reasonCodes: json["reason_codes"] == null
            ? null
            : (json["reason_codes"] as List)
                .map((item) => item as String)
                .toList(),
        sanitizedHtml: json["sanitized_html"] == null
            ? null
            : json["sanitized_html"] as String,
        normalizedText: json["normalized_text"] == null
            ? null
            : json["normalized_text"] as String,
        links: json["links"] == null
            ? null
            : (json["links"] as List)
                .map(
                  (item) => ChimeEmailScannedLink.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        scanner: json["scanner"] == null ? null : json["scanner"] as String,
        contentHash: json["content_hash"] == null
            ? null
            : json["content_hash"] as String,
        quarantineNotes: json["quarantine_notes"] == null
            ? null
            : json["quarantine_notes"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (status != null) "status": _encodeValue(status),
        if (reasonCodes != null) "reason_codes": _encodeValue(reasonCodes),
        if (sanitizedHtml != null)
          "sanitized_html": _encodeValue(sanitizedHtml),
        if (normalizedText != null)
          "normalized_text": _encodeValue(normalizedText),
        if (links != null) "links": _encodeValue(links),
        if (scanner != null) "scanner": _encodeValue(scanner),
        if (contentHash != null) "content_hash": _encodeValue(contentHash),
        if (quarantineNotes != null)
          "quarantine_notes": _encodeValue(quarantineNotes),
      };
}

/// Typed Inttegro domain value.
final class ChimeEmailScannedLink implements _InttegroValue {
  final String? raw;
  final String? scheme;
  final String? host;
  final ContentSafetyStatus? status;
  final String? reason;
  const ChimeEmailScannedLink({
    this.raw,
    this.scheme,
    this.host,
    this.status,
    this.reason,
  });
  factory ChimeEmailScannedLink.fromJson(Map<String, Object?> json) =>
      ChimeEmailScannedLink(
        raw: json["raw"] == null ? null : json["raw"] as String,
        scheme: json["scheme"] == null ? null : json["scheme"] as String,
        host: json["host"] == null ? null : json["host"] as String,
        status: json["status"] == null
            ? null
            : ContentSafetyStatus.fromJson(json["status"]),
        reason: json["reason"] == null ? null : json["reason"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (raw != null) "raw": _encodeValue(raw),
        if (scheme != null) "scheme": _encodeValue(scheme),
        if (host != null) "host": _encodeValue(host),
        if (status != null) "status": _encodeValue(status),
        if (reason != null) "reason": _encodeValue(reason),
      };
}

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

/// Typed Inttegro request parameters.
final class ChimeInlineRecipientInputVariant1 implements _InttegroValue {
  final String? name;
  final ChimeInlineRecipientInputVariant1Phone phone;
  final ChimeRecipientType type;
  const ChimeInlineRecipientInputVariant1({
    this.name,
    required this.phone,
    required this.type,
  });
  factory ChimeInlineRecipientInputVariant1.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeInlineRecipientInputVariant1(
        name: json["name"] == null ? null : json["name"] as String,
        phone: ChimeInlineRecipientInputVariant1Phone.fromJson(
          (json["phone"] as Map).cast<String, Object?>(),
        ),
        type: ChimeRecipientType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        "phone": _encodeValue(phone),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro request parameters.
final class ChimeInlineRecipientInputVariant1Phone implements _InttegroValue {
  final String number;
  const ChimeInlineRecipientInputVariant1Phone({required this.number});
  factory ChimeInlineRecipientInputVariant1Phone.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeInlineRecipientInputVariant1Phone(number: json["number"] as String);
  @override
  Map<String, Object?> toJson() => {"number": _encodeValue(number)};
}

/// Typed Inttegro request parameters.
final class ChimeInlineRecipientInputVariant2 implements _InttegroValue {
  final String? name;
  final ChimeInlineRecipientInputVariant2Email email;
  final ChimeRecipientType type;
  const ChimeInlineRecipientInputVariant2({
    this.name,
    required this.email,
    required this.type,
  });
  factory ChimeInlineRecipientInputVariant2.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeInlineRecipientInputVariant2(
        name: json["name"] == null ? null : json["name"] as String,
        email: ChimeInlineRecipientInputVariant2Email.fromJson(
          (json["email"] as Map).cast<String, Object?>(),
        ),
        type: ChimeRecipientType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        "email": _encodeValue(email),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro request parameters.
final class ChimeInlineRecipientInputVariant2Email implements _InttegroValue {
  final String address;
  const ChimeInlineRecipientInputVariant2Email({required this.address});
  factory ChimeInlineRecipientInputVariant2Email.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeInlineRecipientInputVariant2Email(
        address: json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {"address": _encodeValue(address)};
}

/// Typed Inttegro domain value.
final class ChimePage implements _InttegroValue {
  final int number;
  final int size;
  final List<Chime> chimes;
  const ChimePage({
    required this.number,
    required this.size,
    required this.chimes,
  });
  factory ChimePage.fromJson(Map<String, Object?> json) => ChimePage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        chimes: (json["chimes"] as List)
            .map(
                (item) => Chime.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "chimes": _encodeValue(chimes),
      };
}

/// Typed Inttegro domain value.
final class ChimeRecipient implements _InttegroValue {
  final ChimeRecipientType type;
  final String? name;
  final ChimeRecipientPhone? phone;
  final ChimeRecipientEmail? email;
  const ChimeRecipient({required this.type, this.name, this.phone, this.email});
  factory ChimeRecipient.fromJson(Map<String, Object?> json) => ChimeRecipient(
        type: ChimeRecipientType.fromJson(json["type"]),
        name: json["name"] == null ? null : json["name"] as String,
        phone: json["phone"] == null
            ? null
            : ChimeRecipientPhone.fromJson(
                (json["phone"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : ChimeRecipientEmail.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (name != null) "name": _encodeValue(name),
        if (phone != null) "phone": _encodeValue(phone),
        if (email != null) "email": _encodeValue(email),
      };
}

/// Typed Inttegro domain value.
final class ChimeRecipientEmail implements _InttegroValue {
  final String address;
  const ChimeRecipientEmail({required this.address});
  factory ChimeRecipientEmail.fromJson(Map<String, Object?> json) =>
      ChimeRecipientEmail(address: json["address"] as String);
  @override
  Map<String, Object?> toJson() => {"address": _encodeValue(address)};
}

/// Typed Inttegro domain value.
final class ChimeRecipientPhone implements _InttegroValue {
  final String number;
  const ChimeRecipientPhone({required this.number});
  factory ChimeRecipientPhone.fromJson(Map<String, Object?> json) =>
      ChimeRecipientPhone(number: json["number"] as String);
  @override
  Map<String, Object?> toJson() => {"number": _encodeValue(number)};
}

/// Typed Inttegro request parameters.
final class ChimeSavedCustomerRecipientInput implements _InttegroValue {
  final String customerId;
  final ChimeTransport transport;
  const ChimeSavedCustomerRecipientInput({
    required this.customerId,
    required this.transport,
  });
  factory ChimeSavedCustomerRecipientInput.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeSavedCustomerRecipientInput(
        customerId: json["customer_id"] as String,
        transport: ChimeTransport.fromJson(json["transport"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "customer_id": _encodeValue(customerId),
        "transport": _encodeValue(transport),
      };
}

/// Typed Inttegro domain value.
final class ChimeTransmission implements _InttegroValue {
  final String address;
  final DateTime createdAt;
  final DateTime? deliveredAt;
  final List<ChimeEmailEvent>? emailEvents;
  final String? emailFailureCode;
  final String? emailFailureReason;
  final String? emailStatus;
  final String? error;
  final DateTime? failedAt;
  final String gateway;
  final String? gatewayMessageId;
  final String id;
  final DateTime initializedAt;
  final DateTime? lastEmailEventAt;
  final ChimeTransport mechanism;
  final DateTime? sentAt;
  final ChimeTransport? sentVia;
  final String status;
  final DateTime? suppressedAt;
  final String? suppressionReason;
  const ChimeTransmission({
    required this.address,
    required this.createdAt,
    this.deliveredAt,
    this.emailEvents,
    this.emailFailureCode,
    this.emailFailureReason,
    this.emailStatus,
    this.error,
    this.failedAt,
    required this.gateway,
    this.gatewayMessageId,
    required this.id,
    required this.initializedAt,
    this.lastEmailEventAt,
    required this.mechanism,
    this.sentAt,
    this.sentVia,
    required this.status,
    this.suppressedAt,
    this.suppressionReason,
  });
  factory ChimeTransmission.fromJson(Map<String, Object?> json) =>
      ChimeTransmission(
        address: json["address"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        deliveredAt: json["delivered_at"] == null
            ? null
            : _decodeDateTime(json["delivered_at"]),
        emailEvents: json["email_events"] == null
            ? null
            : (json["email_events"] as List)
                .map(
                  (item) => ChimeEmailEvent.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        emailFailureCode: json["email_failure_code"] == null
            ? null
            : json["email_failure_code"] as String,
        emailFailureReason: json["email_failure_reason"] == null
            ? null
            : json["email_failure_reason"] as String,
        emailStatus: json["email_status"] == null
            ? null
            : json["email_status"] as String,
        error: json["error"] == null ? null : json["error"] as String,
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        gateway: json["gateway"] as String,
        gatewayMessageId: json["gateway_message_id"] == null
            ? null
            : json["gateway_message_id"] as String,
        id: json["id"] as String,
        initializedAt: _decodeDateTime(json["initialized_at"]),
        lastEmailEventAt: json["last_email_event_at"] == null
            ? null
            : _decodeDateTime(json["last_email_event_at"]),
        mechanism: ChimeTransport.fromJson(json["mechanism"]),
        sentAt:
            json["sent_at"] == null ? null : _decodeDateTime(json["sent_at"]),
        sentVia: json["sent_via"] == null
            ? null
            : ChimeTransport.fromJson(json["sent_via"]),
        status: json["status"] as String,
        suppressedAt: json["suppressed_at"] == null
            ? null
            : _decodeDateTime(json["suppressed_at"]),
        suppressionReason: json["suppression_reason"] == null
            ? null
            : json["suppression_reason"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": _encodeValue(address),
        "created_at": _encodeValue(createdAt),
        if (deliveredAt != null) "delivered_at": _encodeValue(deliveredAt),
        if (emailEvents != null) "email_events": _encodeValue(emailEvents),
        if (emailFailureCode != null)
          "email_failure_code": _encodeValue(emailFailureCode),
        if (emailFailureReason != null)
          "email_failure_reason": _encodeValue(emailFailureReason),
        if (emailStatus != null) "email_status": _encodeValue(emailStatus),
        if (error != null) "error": _encodeValue(error),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        "gateway": _encodeValue(gateway),
        if (gatewayMessageId != null)
          "gateway_message_id": _encodeValue(gatewayMessageId),
        "id": _encodeValue(id),
        "initialized_at": _encodeValue(initializedAt),
        if (lastEmailEventAt != null)
          "last_email_event_at": _encodeValue(lastEmailEventAt),
        "mechanism": _encodeValue(mechanism),
        if (sentAt != null) "sent_at": _encodeValue(sentAt),
        if (sentVia != null) "sent_via": _encodeValue(sentVia),
        "status": _encodeValue(status),
        if (suppressedAt != null) "suppressed_at": _encodeValue(suppressedAt),
        if (suppressionReason != null)
          "suppression_reason": _encodeValue(suppressionReason),
      };
}

/// Typed Inttegro request parameters.
final class CompleteOrderRequest implements _InttegroValue {
  final bool? paidOutOfBand;
  final String orderId;
  const CompleteOrderRequest({this.paidOutOfBand, required this.orderId});
  factory CompleteOrderRequest.fromJson(Map<String, Object?> json) =>
      CompleteOrderRequest(
        paidOutOfBand: json["paid_out_of_band"] == null
            ? null
            : json["paid_out_of_band"] as bool,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (paidOutOfBand != null)
          "paid_out_of_band": _encodeValue(paidOutOfBand),
        "order_id": _encodeValue(orderId),
      };
}

/// Typed Inttegro request parameters.
final class ConfirmPaymentRequest implements _InttegroValue {
  final String orderId;
  final String paymentId;
  final String confirmationId;
  final String token;
  const ConfirmPaymentRequest({
    required this.orderId,
    required this.paymentId,
    required this.confirmationId,
    required this.token,
  });
  factory ConfirmPaymentRequest.fromJson(Map<String, Object?> json) =>
      ConfirmPaymentRequest(
        orderId: json["order_id"] as String,
        paymentId: json["payment_id"] as String,
        confirmationId: json["confirmation_id"] as String,
        token: json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "order_id": _encodeValue(orderId),
        "payment_id": _encodeValue(paymentId),
        "confirmation_id": _encodeValue(confirmationId),
        "token": _encodeValue(token),
      };
}

/// Typed Inttegro domain value.
final class CountryBank implements _InttegroValue {
  final String id;
  final String name;
  final String? swiftCode;
  final String? sortCodePrefix;
  final List<CountryBankBranch> branches;
  const CountryBank({
    required this.id,
    required this.name,
    this.swiftCode,
    this.sortCodePrefix,
    required this.branches,
  });
  factory CountryBank.fromJson(Map<String, Object?> json) => CountryBank(
        id: json["id"] as String,
        name: json["name"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
        sortCodePrefix: json["sort_code_prefix"] == null
            ? null
            : json["sort_code_prefix"] as String,
        branches: (json["branches"] as List)
            .map(
              (item) => CountryBankBranch.fromJson(
                  (item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
        if (sortCodePrefix != null)
          "sort_code_prefix": _encodeValue(sortCodePrefix),
        "branches": _encodeValue(branches),
      };
}

/// Typed Inttegro domain value.
final class CountryBankBranch implements _InttegroValue {
  final String id;
  final String name;
  final String sortCode;
  const CountryBankBranch({
    required this.id,
    required this.name,
    required this.sortCode,
  });
  factory CountryBankBranch.fromJson(Map<String, Object?> json) =>
      CountryBankBranch(
        id: json["id"] as String,
        name: json["name"] as String,
        sortCode: json["sort_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        "sort_code": _encodeValue(sortCode),
      };
}

/// Typed Inttegro domain value.
final class CountryBankDirectory implements _InttegroValue {
  final String bankAccountType;
  final String codeScheme;
  final List<CountryBank> items;
  const CountryBankDirectory({
    required this.bankAccountType,
    required this.codeScheme,
    required this.items,
  });
  factory CountryBankDirectory.fromJson(Map<String, Object?> json) =>
      CountryBankDirectory(
        bankAccountType: json["bank_account_type"] as String,
        codeScheme: json["code_scheme"] as String,
        items: (json["items"] as List)
            .map(
              (item) =>
                  CountryBank.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "bank_account_type": _encodeValue(bankAccountType),
        "code_scheme": _encodeValue(codeScheme),
        "items": _encodeValue(items),
      };
}

/// Typed Inttegro domain value.
final class CountrySpecification implements _InttegroValue {
  final String countryCode;
  final String countryName;
  final List<String> currencies;
  final List<String> paymentMethods;
  final List<String> payoutSchedules;
  final List<String> btAgingSpecs;
  final List<String> legalEntityTypes;
  final List<String> financialAccountTypes;
  final List<String> idDocumentTypes;
  final CountryBankDirectory? banks;
  const CountrySpecification({
    required this.countryCode,
    required this.countryName,
    required this.currencies,
    required this.paymentMethods,
    required this.payoutSchedules,
    required this.btAgingSpecs,
    required this.legalEntityTypes,
    required this.financialAccountTypes,
    required this.idDocumentTypes,
    this.banks,
  });
  factory CountrySpecification.fromJson(Map<String, Object?> json) =>
      CountrySpecification(
        countryCode: json["country_code"] as String,
        countryName: json["country_name"] as String,
        currencies:
            (json["currencies"] as List).map((item) => item as String).toList(),
        paymentMethods: (json["payment_methods"] as List)
            .map((item) => item as String)
            .toList(),
        payoutSchedules: (json["payout_schedules"] as List)
            .map((item) => item as String)
            .toList(),
        btAgingSpecs: (json["bt_aging_specs"] as List)
            .map((item) => item as String)
            .toList(),
        legalEntityTypes: (json["legal_entity_types"] as List)
            .map((item) => item as String)
            .toList(),
        financialAccountTypes: (json["financial_account_types"] as List)
            .map((item) => item as String)
            .toList(),
        idDocumentTypes: (json["id_document_types"] as List)
            .map((item) => item as String)
            .toList(),
        banks: json["banks"] == null
            ? null
            : CountryBankDirectory.fromJson(
                (json["banks"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "country_code": _encodeValue(countryCode),
        "country_name": _encodeValue(countryName),
        "currencies": _encodeValue(currencies),
        "payment_methods": _encodeValue(paymentMethods),
        "payout_schedules": _encodeValue(payoutSchedules),
        "bt_aging_specs": _encodeValue(btAgingSpecs),
        "legal_entity_types": _encodeValue(legalEntityTypes),
        "financial_account_types": _encodeValue(financialAccountTypes),
        "id_document_types": _encodeValue(idDocumentTypes),
        if (banks != null) "banks": _encodeValue(banks),
      };
}

/// Typed Inttegro request parameters.
final class CreateApplicationRequest implements _InttegroValue {
  final String? alias;
  final String? description;
  final String? legalEntityType;
  final String? placementParentApplicationId;
  final CreateApplicationRequestRelationshipPolicy? relationshipPolicy;
  final String name;
  const CreateApplicationRequest({
    this.alias,
    this.description,
    this.legalEntityType,
    this.placementParentApplicationId,
    this.relationshipPolicy,
    required this.name,
  });
  factory CreateApplicationRequest.fromJson(Map<String, Object?> json) =>
      CreateApplicationRequest(
        alias: json["alias"] == null ? null : json["alias"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        legalEntityType: json["legal_entity_type"] == null
            ? null
            : json["legal_entity_type"] as String,
        placementParentApplicationId:
            json["placement_parent_application_id"] == null
                ? null
                : json["placement_parent_application_id"] as String,
        relationshipPolicy: json["relationship_policy"] == null
            ? null
            : CreateApplicationRequestRelationshipPolicy.fromJson(
                (json["relationship_policy"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (alias != null) "alias": _encodeValue(alias),
        if (description != null) "description": _encodeValue(description),
        if (legalEntityType != null)
          "legal_entity_type": _encodeValue(legalEntityType),
        if (placementParentApplicationId != null)
          "placement_parent_application_id": _encodeValue(
            placementParentApplicationId,
          ),
        if (relationshipPolicy != null)
          "relationship_policy": _encodeValue(relationshipPolicy),
        "name": _encodeValue(name),
      };
}

/// Typed Inttegro request parameters.
final class CreateApplicationRequestRelationshipPolicy
    implements _InttegroValue {
  final String? childStanding;
  final AppManagementRole? management;
  final AppCredentialOwner? credentials;
  const CreateApplicationRequestRelationshipPolicy({
    this.childStanding,
    this.management,
    this.credentials,
  });
  factory CreateApplicationRequestRelationshipPolicy.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateApplicationRequestRelationshipPolicy(
        childStanding: json["child_standing"] == null
            ? null
            : json["child_standing"] as String,
        management: json["management"] == null
            ? null
            : AppManagementRole.fromJson(json["management"]),
        credentials: json["credentials"] == null
            ? null
            : AppCredentialOwner.fromJson(json["credentials"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (childStanding != null)
          "child_standing": _encodeValue(childStanding),
        if (management != null) "management": _encodeValue(management),
        if (credentials != null) "credentials": _encodeValue(credentials),
      };
}

/// Typed Inttegro request parameters.
final class CreateCustomerRequest implements _InttegroValue {
  final CustomerAddressInput? billingAddress;
  final CustomDataInput? customData;
  final String? emailAddress;
  final String? phoneNumber;
  final String? reference;
  final CustomerAddressInput? shippingAddress;
  final String? title;
  final String name;
  const CreateCustomerRequest({
    this.billingAddress,
    this.customData,
    this.emailAddress,
    this.phoneNumber,
    this.reference,
    this.shippingAddress,
    this.title,
    required this.name,
  });
  factory CreateCustomerRequest.fromJson(Map<String, Object?> json) =>
      CreateCustomerRequest(
        billingAddress: json["billing_address"] == null
            ? null
            : CustomerAddressInput.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        emailAddress: json["email_address"] == null
            ? null
            : json["email_address"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        shippingAddress: json["shipping_address"] == null
            ? null
            : CustomerAddressInput.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
        title: json["title"] == null ? null : json["title"] as String,
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (billingAddress != null)
          "billing_address": _encodeValue(billingAddress),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (emailAddress != null) "email_address": _encodeValue(emailAddress),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (reference != null) "reference": _encodeValue(reference),
        if (shippingAddress != null)
          "shipping_address": _encodeValue(shippingAddress),
        if (title != null) "title": _encodeValue(title),
        "name": _encodeValue(name),
      };
}

/// Typed Inttegro request parameters.
final class CreateEmailMessageTemplateRequest implements _InttegroValue {
  final String? about;
  final List<String>? attachments;
  final String? locale;
  final List<MessageTemplateVariableInput>? variables;
  final MessageTemplateChannel channel;
  final MessageTemplateEmailContentInput email;
  final String name;
  final String purpose;
  const CreateEmailMessageTemplateRequest({
    this.about,
    this.attachments,
    this.locale,
    this.variables,
    required this.channel,
    required this.email,
    required this.name,
    required this.purpose,
  });
  factory CreateEmailMessageTemplateRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateEmailMessageTemplateRequest(
        about: json["about"] == null ? null : json["about"] as String,
        attachments: json["attachments"] == null
            ? null
            : (json["attachments"] as List)
                .map((item) => item as String)
                .toList(),
        locale: json["locale"] == null ? null : json["locale"] as String,
        variables: json["variables"] == null
            ? null
            : (json["variables"] as List)
                .map(
                  (item) => MessageTemplateVariableInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        channel: MessageTemplateChannel.fromJson(json["channel"]),
        email: MessageTemplateEmailContentInput.fromJson(
          (json["email"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] as String,
        purpose: json["purpose"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (attachments != null) "attachments": _encodeValue(attachments),
        if (locale != null) "locale": _encodeValue(locale),
        if (variables != null) "variables": _encodeValue(variables),
        "channel": _encodeValue(channel),
        "email": _encodeValue(email),
        "name": _encodeValue(name),
        "purpose": _encodeValue(purpose),
      };
}

/// Typed Inttegro request parameters.
final class CreateFileLinkRequest implements _InttegroValue {
  final FileLinkDeliveryInput? delivery;
  final FileLinkAccessRequest? access;
  final FileActorInput? createdBy;
  final CustomData? customData;
  final DateTime? expiresAt;
  final String fileId;
  const CreateFileLinkRequest({
    this.delivery,
    this.access,
    this.createdBy,
    this.customData,
    this.expiresAt,
    required this.fileId,
  });
  factory CreateFileLinkRequest.fromJson(Map<String, Object?> json) =>
      CreateFileLinkRequest(
        delivery: json["delivery"] == null
            ? null
            : FileLinkDeliveryInput.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        access: json["access"] == null
            ? null
            : FileLinkAccessRequest.fromJson(
                (json["access"] as Map).cast<String, Object?>(),
              ),
        createdBy: json["created_by"] == null
            ? null
            : FileActorInput.fromJson(
                (json["created_by"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        fileId: json["file_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (delivery != null) "delivery": _encodeValue(delivery),
        if (access != null) "access": _encodeValue(access),
        if (createdBy != null) "created_by": _encodeValue(createdBy),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "file_id": _encodeValue(fileId),
      };
}

/// Typed Inttegro request parameters.
final class CreateOrderExistingCustomerInput implements _InttegroValue {
  final String? paymentMethodId;
  final PaymentMethodDataInput? paymentMethodData;
  final String? receiptNumber;
  final String? statementDescriptor;
  final String? statementDescriptorPrefix;
  final bool? executePayment;
  final bool? finalize;
  final CreateOrderExistingCustomerInputRequestMeta? requestMeta;
  final CreateOrderExistingCustomerInputCheckoutSettings? checkoutSettings;
  final InvoiceSettingsInput? invoiceSettings;
  final OrderPayoutSettingsRequest? payoutSettings;
  final CustomData? customData;
  final BillingDetailsInput? billingDetails;
  final ShippingInput? shipping;
  final String customerId;
  final List<LineItemInput> lineItems;
  const CreateOrderExistingCustomerInput({
    this.paymentMethodId,
    this.paymentMethodData,
    this.receiptNumber,
    this.statementDescriptor,
    this.statementDescriptorPrefix,
    this.executePayment,
    this.finalize,
    this.requestMeta,
    this.checkoutSettings,
    this.invoiceSettings,
    this.payoutSettings,
    this.customData,
    this.billingDetails,
    this.shipping,
    required this.customerId,
    required this.lineItems,
  });
  factory CreateOrderExistingCustomerInput.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderExistingCustomerInput(
        paymentMethodId: json["payment_method_id"] == null
            ? null
            : json["payment_method_id"] as String,
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : PaymentMethodDataInput.fromJson(
                (json["payment_method_data"] as Map).cast<String, Object?>(),
              ),
        receiptNumber: json["receipt_number"] == null
            ? null
            : json["receipt_number"] as String,
        statementDescriptor: json["statement_descriptor"] == null
            ? null
            : json["statement_descriptor"] as String,
        statementDescriptorPrefix: json["statement_descriptor_prefix"] == null
            ? null
            : json["statement_descriptor_prefix"] as String,
        executePayment: json["execute_payment"] == null
            ? null
            : json["execute_payment"] as bool,
        finalize: json["finalize"] == null ? null : json["finalize"] as bool,
        requestMeta: json["request_meta"] == null
            ? null
            : CreateOrderExistingCustomerInputRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        checkoutSettings: json["checkout_settings"] == null
            ? null
            : CreateOrderExistingCustomerInputCheckoutSettings.fromJson(
                (json["checkout_settings"] as Map).cast<String, Object?>(),
              ),
        invoiceSettings: json["invoice_settings"] == null
            ? null
            : InvoiceSettingsInput.fromJson(
                (json["invoice_settings"] as Map).cast<String, Object?>(),
              ),
        payoutSettings: json["payout_settings"] == null
            ? null
            : OrderPayoutSettingsRequest.fromJson(
                (json["payout_settings"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        billingDetails: json["billing_details"] == null
            ? null
            : BillingDetailsInput.fromJson(
                (json["billing_details"] as Map).cast<String, Object?>(),
              ),
        shipping: json["shipping"] == null
            ? null
            : ShippingInput.fromJson(
                (json["shipping"] as Map).cast<String, Object?>(),
              ),
        customerId: json["customer_id"] as String,
        lineItems:
            (json["line_items"] as List).map(LineItemInput.fromJson).toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (paymentMethodId != null)
          "payment_method_id": _encodeValue(paymentMethodId),
        if (paymentMethodData != null)
          "payment_method_data": _encodeValue(paymentMethodData),
        if (receiptNumber != null)
          "receipt_number": _encodeValue(receiptNumber),
        if (statementDescriptor != null)
          "statement_descriptor": _encodeValue(statementDescriptor),
        if (statementDescriptorPrefix != null)
          "statement_descriptor_prefix":
              _encodeValue(statementDescriptorPrefix),
        if (executePayment != null)
          "execute_payment": _encodeValue(executePayment),
        if (finalize != null) "finalize": _encodeValue(finalize),
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        if (checkoutSettings != null)
          "checkout_settings": _encodeValue(checkoutSettings),
        if (invoiceSettings != null)
          "invoice_settings": _encodeValue(invoiceSettings),
        if (payoutSettings != null)
          "payout_settings": _encodeValue(payoutSettings),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (billingDetails != null)
          "billing_details": _encodeValue(billingDetails),
        if (shipping != null) "shipping": _encodeValue(shipping),
        "customer_id": _encodeValue(customerId),
        "line_items": _encodeValue(lineItems),
      };
}

/// Typed Inttegro request parameters.
final class CreateOrderExistingCustomerInputCheckoutSettings
    implements _InttegroValue {
  final String? redirectUrl;
  final String? cancelUrl;
  const CreateOrderExistingCustomerInputCheckoutSettings({
    this.redirectUrl,
    this.cancelUrl,
  });
  factory CreateOrderExistingCustomerInputCheckoutSettings.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderExistingCustomerInputCheckoutSettings(
        redirectUrl: json["redirect_url"] == null
            ? null
            : json["redirect_url"] as String,
        cancelUrl:
            json["cancel_url"] == null ? null : json["cancel_url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (redirectUrl != null) "redirect_url": _encodeValue(redirectUrl),
        if (cancelUrl != null) "cancel_url": _encodeValue(cancelUrl),
      };
}

/// Typed Inttegro request parameters.
final class CreateOrderExistingCustomerInputRequestMeta
    implements _InttegroValue {
  final String? idempotencyKey;
  const CreateOrderExistingCustomerInputRequestMeta({this.idempotencyKey});
  factory CreateOrderExistingCustomerInputRequestMeta.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderExistingCustomerInputRequestMeta(
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
      };
}

/// Typed Inttegro request parameters.
final class CreateOrderNewCustomerInput implements _InttegroValue {
  final String? number;
  final String? receiptNumber;
  final String? statementDescriptor;
  final String? statementDescriptorPrefix;
  final bool? executePayment;
  final bool? finalize;
  final CreateOrderNewCustomerInputRequestMeta? requestMeta;
  final CreateOrderNewCustomerInputCheckoutSettings? checkoutSettings;
  final InvoiceSettingsInput? invoiceSettings;
  final OrderPayoutSettingsRequest? payoutSettings;
  final CustomData? customData;
  final BillingDetailsInput? billingDetails;
  final ShippingInput? shipping;
  final PaymentMethodDataInput? paymentMethodData;
  final CustomerDataInput customerData;
  final List<LineItemInput> lineItems;
  const CreateOrderNewCustomerInput({
    this.number,
    this.receiptNumber,
    this.statementDescriptor,
    this.statementDescriptorPrefix,
    this.executePayment,
    this.finalize,
    this.requestMeta,
    this.checkoutSettings,
    this.invoiceSettings,
    this.payoutSettings,
    this.customData,
    this.billingDetails,
    this.shipping,
    this.paymentMethodData,
    required this.customerData,
    required this.lineItems,
  });
  factory CreateOrderNewCustomerInput.fromJson(Map<String, Object?> json) =>
      CreateOrderNewCustomerInput(
        number: json["number"] == null ? null : json["number"] as String,
        receiptNumber: json["receipt_number"] == null
            ? null
            : json["receipt_number"] as String,
        statementDescriptor: json["statement_descriptor"] == null
            ? null
            : json["statement_descriptor"] as String,
        statementDescriptorPrefix: json["statement_descriptor_prefix"] == null
            ? null
            : json["statement_descriptor_prefix"] as String,
        executePayment: json["execute_payment"] == null
            ? null
            : json["execute_payment"] as bool,
        finalize: json["finalize"] == null ? null : json["finalize"] as bool,
        requestMeta: json["request_meta"] == null
            ? null
            : CreateOrderNewCustomerInputRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        checkoutSettings: json["checkout_settings"] == null
            ? null
            : CreateOrderNewCustomerInputCheckoutSettings.fromJson(
                (json["checkout_settings"] as Map).cast<String, Object?>(),
              ),
        invoiceSettings: json["invoice_settings"] == null
            ? null
            : InvoiceSettingsInput.fromJson(
                (json["invoice_settings"] as Map).cast<String, Object?>(),
              ),
        payoutSettings: json["payout_settings"] == null
            ? null
            : OrderPayoutSettingsRequest.fromJson(
                (json["payout_settings"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        billingDetails: json["billing_details"] == null
            ? null
            : BillingDetailsInput.fromJson(
                (json["billing_details"] as Map).cast<String, Object?>(),
              ),
        shipping: json["shipping"] == null
            ? null
            : ShippingInput.fromJson(
                (json["shipping"] as Map).cast<String, Object?>(),
              ),
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : PaymentMethodDataInput.fromJson(
                (json["payment_method_data"] as Map).cast<String, Object?>(),
              ),
        customerData: CustomerDataInput.fromJson(
          (json["customer_data"] as Map).cast<String, Object?>(),
        ),
        lineItems:
            (json["line_items"] as List).map(LineItemInput.fromJson).toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        if (receiptNumber != null)
          "receipt_number": _encodeValue(receiptNumber),
        if (statementDescriptor != null)
          "statement_descriptor": _encodeValue(statementDescriptor),
        if (statementDescriptorPrefix != null)
          "statement_descriptor_prefix":
              _encodeValue(statementDescriptorPrefix),
        if (executePayment != null)
          "execute_payment": _encodeValue(executePayment),
        if (finalize != null) "finalize": _encodeValue(finalize),
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        if (checkoutSettings != null)
          "checkout_settings": _encodeValue(checkoutSettings),
        if (invoiceSettings != null)
          "invoice_settings": _encodeValue(invoiceSettings),
        if (payoutSettings != null)
          "payout_settings": _encodeValue(payoutSettings),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (billingDetails != null)
          "billing_details": _encodeValue(billingDetails),
        if (shipping != null) "shipping": _encodeValue(shipping),
        if (paymentMethodData != null)
          "payment_method_data": _encodeValue(paymentMethodData),
        "customer_data": _encodeValue(customerData),
        "line_items": _encodeValue(lineItems),
      };
}

/// Typed Inttegro request parameters.
final class CreateOrderNewCustomerInputCheckoutSettings
    implements _InttegroValue {
  final String? redirectUrl;
  final String? cancelUrl;
  const CreateOrderNewCustomerInputCheckoutSettings({
    this.redirectUrl,
    this.cancelUrl,
  });
  factory CreateOrderNewCustomerInputCheckoutSettings.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderNewCustomerInputCheckoutSettings(
        redirectUrl: json["redirect_url"] == null
            ? null
            : json["redirect_url"] as String,
        cancelUrl:
            json["cancel_url"] == null ? null : json["cancel_url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (redirectUrl != null) "redirect_url": _encodeValue(redirectUrl),
        if (cancelUrl != null) "cancel_url": _encodeValue(cancelUrl),
      };
}

/// Typed Inttegro request parameters.
final class CreateOrderNewCustomerInputRequestMeta implements _InttegroValue {
  final String? idempotencyKey;
  const CreateOrderNewCustomerInputRequestMeta({this.idempotencyKey});
  factory CreateOrderNewCustomerInputRequestMeta.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderNewCustomerInputRequestMeta(
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
      };
}

/// Typed Inttegro request parameters.
final class CreateProductRequest implements _InttegroValue {
  final String? reference;
  final String? description;
  final String? about;
  final String? taxCode;
  final String? category;
  final ProductShipmentInput? shipment;
  final ProductDimensionsInput? dimensions;
  final String? unitDimension;
  final ProductMediaInput? media;
  final List<ProductAttributeInput>? attributes;
  final bool? publish;
  final CustomData? customData;
  final ProductType type;
  final String name;
  const CreateProductRequest({
    this.reference,
    this.description,
    this.about,
    this.taxCode,
    this.category,
    this.shipment,
    this.dimensions,
    this.unitDimension,
    this.media,
    this.attributes,
    this.publish,
    this.customData,
    required this.type,
    required this.name,
  });
  factory CreateProductRequest.fromJson(Map<String, Object?> json) =>
      CreateProductRequest(
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        shipment: json["shipment"] == null
            ? null
            : ProductShipmentInput.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensionsInput.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        unitDimension: json["unit_dimension"] == null
            ? null
            : json["unit_dimension"] as String,
        media: json["media"] == null
            ? null
            : ProductMediaInput.fromJson(
                (json["media"] as Map).cast<String, Object?>(),
              ),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => ProductAttributeInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        publish: json["publish"] == null ? null : json["publish"] as bool,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        type: ProductType.fromJson(json["type"]),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reference != null) "reference": _encodeValue(reference),
        if (description != null) "description": _encodeValue(description),
        if (about != null) "about": _encodeValue(about),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (category != null) "category": _encodeValue(category),
        if (shipment != null) "shipment": _encodeValue(shipment),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (unitDimension != null)
          "unit_dimension": _encodeValue(unitDimension),
        if (media != null) "media": _encodeValue(media),
        if (attributes != null) "attributes": _encodeValue(attributes),
        if (publish != null) "publish": _encodeValue(publish),
        if (customData != null) "custom_data": _encodeValue(customData),
        "type": _encodeValue(type),
        "name": _encodeValue(name),
      };
}

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequest implements _InttegroValue {
  final CreatePurchaseIntentRequestProduct? product;
  final String? productId;
  final CreatePurchaseIntentRequestPrice? price;
  final String? priceId;
  final CreatePurchaseIntentRequestUsage? usage;
  final DateTime? expiresAt;
  final CreatePurchaseIntentRequestQuantity quantity;
  const CreatePurchaseIntentRequest({
    this.product,
    this.productId,
    this.price,
    this.priceId,
    this.usage,
    this.expiresAt,
    required this.quantity,
  });
  factory CreatePurchaseIntentRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequest(
        product: json["product"] == null
            ? null
            : CreatePurchaseIntentRequestProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        price: json["price"] == null
            ? null
            : CreatePurchaseIntentRequestPrice.fromJson(
                (json["price"] as Map).cast<String, Object?>(),
              ),
        priceId: json["price_id"] == null ? null : json["price_id"] as String,
        usage: json["usage"] == null
            ? null
            : CreatePurchaseIntentRequestUsage.fromJson(
                (json["usage"] as Map).cast<String, Object?>(),
              ),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        quantity: CreatePurchaseIntentRequestQuantity.fromJson(
          (json["quantity"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (product != null) "product": _encodeValue(product),
        if (productId != null) "product_id": _encodeValue(productId),
        if (price != null) "price": _encodeValue(price),
        if (priceId != null) "price_id": _encodeValue(priceId),
        if (usage != null) "usage": _encodeValue(usage),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "quantity": _encodeValue(quantity),
      };
}

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequestPrice implements _InttegroValue {
  final String? id;
  final PriceParams? nominal;
  final CreatePurchaseIntentRequestPriceOriginal? original;
  final String? originalId;
  const CreatePurchaseIntentRequestPrice({
    this.id,
    this.nominal,
    this.original,
    this.originalId,
  });
  factory CreatePurchaseIntentRequestPrice.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequestPrice(
        id: json["id"] == null ? null : json["id"] as String,
        nominal: json["nominal"] == null
            ? null
            : PriceParams.fromJson(
                (json["nominal"] as Map).cast<String, Object?>(),
              ),
        original: json["original"] == null
            ? null
            : CreatePurchaseIntentRequestPriceOriginal.fromJson(
                (json["original"] as Map).cast<String, Object?>(),
              ),
        originalId:
            json["original_id"] == null ? null : json["original_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (nominal != null) "nominal": _encodeValue(nominal),
        if (original != null) "original": _encodeValue(original),
        if (originalId != null) "original_id": _encodeValue(originalId),
      };
}

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequestPriceOriginal implements _InttegroValue {
  final String? id;
  final PriceParams? nominal;
  const CreatePurchaseIntentRequestPriceOriginal({this.id, this.nominal});
  factory CreatePurchaseIntentRequestPriceOriginal.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequestPriceOriginal(
        id: json["id"] == null ? null : json["id"] as String,
        nominal: json["nominal"] == null
            ? null
            : PriceParams.fromJson(
                (json["nominal"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (nominal != null) "nominal": _encodeValue(nominal),
      };
}

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequestProduct implements _InttegroValue {
  final String? variantSetId;
  final String id;
  const CreatePurchaseIntentRequestProduct({
    this.variantSetId,
    required this.id,
  });
  factory CreatePurchaseIntentRequestProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequestProduct(
        variantSetId: json["variant_set_id"] == null
            ? null
            : json["variant_set_id"] as String,
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (variantSetId != null) "variant_set_id": _encodeValue(variantSetId),
        "id": _encodeValue(id),
      };
}

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequestQuantity implements _InttegroValue {
  final int? max;
  final int min;
  const CreatePurchaseIntentRequestQuantity({this.max, required this.min});
  factory CreatePurchaseIntentRequestQuantity.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequestQuantity(
        max: json["max"] == null ? null : (json["max"] as num).toInt(),
        min: (json["min"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (max != null) "max": _encodeValue(max),
        "min": _encodeValue(min),
      };
}

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequestUsage implements _InttegroValue {
  final bool? singleUse;
  final bool? multiUse;
  const CreatePurchaseIntentRequestUsage({this.singleUse, this.multiUse});
  factory CreatePurchaseIntentRequestUsage.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequestUsage(
        singleUse:
            json["single_use"] == null ? null : json["single_use"] as bool,
        multiUse: json["multi_use"] == null ? null : json["multi_use"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (singleUse != null) "single_use": _encodeValue(singleUse),
        if (multiUse != null) "multi_use": _encodeValue(multiUse),
      };
}

/// Typed Inttegro request parameters.
final class CreateRefundLineItemInput implements _InttegroValue {
  final RefundReason? reason;
  final String? reasonDetails;
  final String orderLineItemId;
  final AmountParams refundAmount;
  const CreateRefundLineItemInput({
    this.reason,
    this.reasonDetails,
    required this.orderLineItemId,
    required this.refundAmount,
  });
  factory CreateRefundLineItemInput.fromJson(Map<String, Object?> json) =>
      CreateRefundLineItemInput(
        reason: json["reason"] == null
            ? null
            : RefundReason.fromJson(json["reason"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        orderLineItemId: json["order_line_item_id"] as String,
        refundAmount: AmountParams.fromJson(
          (json["refund_amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (reason != null) "reason": _encodeValue(reason),
        if (reasonDetails != null)
          "reason_details": _encodeValue(reasonDetails),
        "order_line_item_id": _encodeValue(orderLineItemId),
        "refund_amount": _encodeValue(refundAmount),
      };
}

/// Typed Inttegro request parameters.
final class CreateRefundRequest implements _InttegroValue {
  final CustomData? customData;
  final String? reasonDetails;
  final String? reference;
  final RefundRequestMetaInput? requestMeta;
  final List<CreateRefundLineItemInput> lineItems;
  final String orderId;
  final RefundReason reason;
  const CreateRefundRequest({
    this.customData,
    this.reasonDetails,
    this.reference,
    this.requestMeta,
    required this.lineItems,
    required this.orderId,
    required this.reason,
  });
  factory CreateRefundRequest.fromJson(Map<String, Object?> json) =>
      CreateRefundRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        requestMeta: json["request_meta"] == null
            ? null
            : RefundRequestMetaInput.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        lineItems: (json["line_items"] as List)
            .map(
              (item) => CreateRefundLineItemInput.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        orderId: json["order_id"] as String,
        reason: RefundReason.fromJson(json["reason"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (reasonDetails != null)
          "reason_details": _encodeValue(reasonDetails),
        if (reference != null) "reference": _encodeValue(reference),
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        "line_items": _encodeValue(lineItems),
        "order_id": _encodeValue(orderId),
        "reason": _encodeValue(reason),
      };
}

/// Typed Inttegro request parameters.
final class CreateSMSMessageTemplateRequest implements _InttegroValue {
  final String? about;
  final String? locale;
  final List<MessageTemplateVariableInput>? variables;
  final MessageTemplateChannel channel;
  final String name;
  final String purpose;
  final MessageTemplateSMSContentInput sms;
  const CreateSMSMessageTemplateRequest({
    this.about,
    this.locale,
    this.variables,
    required this.channel,
    required this.name,
    required this.purpose,
    required this.sms,
  });
  factory CreateSMSMessageTemplateRequest.fromJson(Map<String, Object?> json) =>
      CreateSMSMessageTemplateRequest(
        about: json["about"] == null ? null : json["about"] as String,
        locale: json["locale"] == null ? null : json["locale"] as String,
        variables: json["variables"] == null
            ? null
            : (json["variables"] as List)
                .map(
                  (item) => MessageTemplateVariableInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        channel: MessageTemplateChannel.fromJson(json["channel"]),
        name: json["name"] as String,
        purpose: json["purpose"] as String,
        sms: MessageTemplateSMSContentInput.fromJson(
          (json["sms"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (locale != null) "locale": _encodeValue(locale),
        if (variables != null) "variables": _encodeValue(variables),
        "channel": _encodeValue(channel),
        "name": _encodeValue(name),
        "purpose": _encodeValue(purpose),
        "sms": _encodeValue(sms),
      };
}

/// Typed Inttegro request parameters.
final class CreateUploadRequestRequest implements _InttegroValue {
  final UploadRequestConstraintsInput? constraints;
  final UploadRequestDisplayInput? display;
  final FilePartyInput? subject;
  final FilePartyInput? recipient;
  final FileResourceInput? resource;
  final FileActorInput? requester;
  final UploadRequestAttemptsRequest? attempts;
  final CustomData? customData;
  final DateTime? expiresAt;
  final String purpose;
  const CreateUploadRequestRequest({
    this.constraints,
    this.display,
    this.subject,
    this.recipient,
    this.resource,
    this.requester,
    this.attempts,
    this.customData,
    this.expiresAt,
    required this.purpose,
  });
  factory CreateUploadRequestRequest.fromJson(Map<String, Object?> json) =>
      CreateUploadRequestRequest(
        constraints: json["constraints"] == null
            ? null
            : UploadRequestConstraintsInput.fromJson(
                (json["constraints"] as Map).cast<String, Object?>(),
              ),
        display: json["display"] == null
            ? null
            : UploadRequestDisplayInput.fromJson(
                (json["display"] as Map).cast<String, Object?>(),
              ),
        subject: json["subject"] == null
            ? null
            : FilePartyInput.fromJson(
                (json["subject"] as Map).cast<String, Object?>(),
              ),
        recipient: json["recipient"] == null
            ? null
            : FilePartyInput.fromJson(
                (json["recipient"] as Map).cast<String, Object?>(),
              ),
        resource: json["resource"] == null
            ? null
            : FileResourceInput.fromJson(
                (json["resource"] as Map).cast<String, Object?>(),
              ),
        requester: json["requester"] == null
            ? null
            : FileActorInput.fromJson(
                (json["requester"] as Map).cast<String, Object?>(),
              ),
        attempts: json["attempts"] == null
            ? null
            : UploadRequestAttemptsRequest.fromJson(
                (json["attempts"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        purpose: json["purpose"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (constraints != null) "constraints": _encodeValue(constraints),
        if (display != null) "display": _encodeValue(display),
        if (subject != null) "subject": _encodeValue(subject),
        if (recipient != null) "recipient": _encodeValue(recipient),
        if (resource != null) "resource": _encodeValue(resource),
        if (requester != null) "requester": _encodeValue(requester),
        if (attempts != null) "attempts": _encodeValue(attempts),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "purpose": _encodeValue(purpose),
      };
}

/// Typed Inttegro domain value.
final class CurrencyBalanceSnapshot implements _InttegroValue {
  final BalanceValue available;
  final DateTime includesTransactionsBefore;
  final BalanceValue pending;
  final CurrencyBalanceSnapshotRefund refund;
  final CurrencyBalanceSnapshotReserved reserved;
  const CurrencyBalanceSnapshot({
    required this.available,
    required this.includesTransactionsBefore,
    required this.pending,
    required this.refund,
    required this.reserved,
  });
  factory CurrencyBalanceSnapshot.fromJson(Map<String, Object?> json) =>
      CurrencyBalanceSnapshot(
        available: BalanceValue.fromJson(
          (json["available"] as Map).cast<String, Object?>(),
        ),
        includesTransactionsBefore:
            _decodeDateTime(json["includes_transactions_before"]),
        pending: BalanceValue.fromJson(
          (json["pending"] as Map).cast<String, Object?>(),
        ),
        refund: CurrencyBalanceSnapshotRefund.fromJson(
          (json["refund"] as Map).cast<String, Object?>(),
        ),
        reserved: CurrencyBalanceSnapshotReserved.fromJson(
          (json["reserved"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "available": _encodeValue(available),
        "includes_transactions_before":
            _encodeValue(includesTransactionsBefore),
        "pending": _encodeValue(pending),
        "refund": _encodeValue(refund),
        "reserved": _encodeValue(reserved),
      };
}

/// Typed Inttegro domain value.
final class CurrencyBalanceSnapshotRefund implements _InttegroValue {
  final int amount;
  const CurrencyBalanceSnapshotRefund({required this.amount});
  factory CurrencyBalanceSnapshotRefund.fromJson(Map<String, Object?> json) =>
      CurrencyBalanceSnapshotRefund(amount: (json["amount"] as num).toInt());
  @override
  Map<String, Object?> toJson() => {"amount": _encodeValue(amount)};
}

/// Typed Inttegro domain value.
final class CurrencyBalanceSnapshotReserved implements _InttegroValue {
  final int amount;
  const CurrencyBalanceSnapshotReserved({required this.amount});
  factory CurrencyBalanceSnapshotReserved.fromJson(Map<String, Object?> json) =>
      CurrencyBalanceSnapshotReserved(amount: (json["amount"] as num).toInt());
  @override
  Map<String, Object?> toJson() => {"amount": _encodeValue(amount)};
}

/// Typed Inttegro domain value.
final class Customer implements _InttegroValue {
  final CustomerBalance balance;
  final CustomerAddress? billingAddress;
  final DateTime createdAt;
  final CustomData? customData;
  final String? emailAddress;
  final bool guest;
  final String id;
  final String name;
  final String? phoneNumber;
  final String? reference;
  final CustomerAddress? shippingAddress;
  final String? suffix;
  final String? title;
  final DateTime? updatedAt;
  const Customer({
    required this.balance,
    this.billingAddress,
    required this.createdAt,
    this.customData,
    this.emailAddress,
    required this.guest,
    required this.id,
    required this.name,
    this.phoneNumber,
    this.reference,
    this.shippingAddress,
    this.suffix,
    this.title,
    this.updatedAt,
  });
  factory Customer.fromJson(Map<String, Object?> json) => Customer(
        balance: CustomerBalance.fromJson(json["balance"]),
        billingAddress: json["billing_address"] == null
            ? null
            : CustomerAddress.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        emailAddress: json["email_address"] == null
            ? null
            : json["email_address"] as String,
        guest: json["guest"] as bool,
        id: json["id"] as String,
        name: json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        shippingAddress: json["shipping_address"] == null
            ? null
            : CustomerAddress.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
        suffix: json["suffix"] == null ? null : json["suffix"] as String,
        title: json["title"] == null ? null : json["title"] as String,
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "balance": _encodeValue(balance),
        if (billingAddress != null)
          "billing_address": _encodeValue(billingAddress),
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (emailAddress != null) "email_address": _encodeValue(emailAddress),
        "guest": _encodeValue(guest),
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (reference != null) "reference": _encodeValue(reference),
        if (shippingAddress != null)
          "shipping_address": _encodeValue(shippingAddress),
        if (suffix != null) "suffix": _encodeValue(suffix),
        if (title != null) "title": _encodeValue(title),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
      };
}

/// Typed Inttegro domain value.
final class CustomerAddress implements _InttegroValue {
  final String? city;
  final String country;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phoneNumber;
  final String? postCode;
  final String? region;
  const CustomerAddress({
    this.city,
    required this.country,
    this.line1,
    this.line2,
    this.name,
    this.phoneNumber,
    this.postCode,
    this.region,
  });
  factory CustomerAddress.fromJson(Map<String, Object?> json) =>
      CustomerAddress(
        city: json["city"] == null ? null : json["city"] as String,
        country: json["country"] as String,
        line1: json["line1"] == null ? null : json["line1"] as String,
        line2: json["line2"] == null ? null : json["line2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] == null ? null : json["region"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (city != null) "city": _encodeValue(city),
        "country": _encodeValue(country),
        if (line1 != null) "line1": _encodeValue(line1),
        if (line2 != null) "line2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (postCode != null) "post_code": _encodeValue(postCode),
        if (region != null) "region": _encodeValue(region),
      };
}

/// Typed Inttegro request parameters.
final class CustomerAddressInput implements _InttegroValue {
  final String? city;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phoneNumber;
  final String? postCode;
  final String? region;
  final String country;
  const CustomerAddressInput({
    this.city,
    this.line1,
    this.line2,
    this.name,
    this.phoneNumber,
    this.postCode,
    this.region,
    required this.country,
  });
  factory CustomerAddressInput.fromJson(Map<String, Object?> json) =>
      CustomerAddressInput(
        city: json["city"] == null ? null : json["city"] as String,
        line1: json["line1"] == null ? null : json["line1"] as String,
        line2: json["line2"] == null ? null : json["line2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] == null ? null : json["region"] as String,
        country: json["country"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (city != null) "city": _encodeValue(city),
        if (line1 != null) "line1": _encodeValue(line1),
        if (line2 != null) "line2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (postCode != null) "post_code": _encodeValue(postCode),
        if (region != null) "region": _encodeValue(region),
        "country": _encodeValue(country),
      };
}

/// Typed Inttegro domain value.
final class CustomerBalanceValue implements _InttegroValue {
  final DateTime asOf;
  final Amount available;
  const CustomerBalanceValue({required this.asOf, required this.available});
  factory CustomerBalanceValue.fromJson(Map<String, Object?> json) =>
      CustomerBalanceValue(
        asOf: _decodeDateTime(json["as_of"]),
        available: Amount.fromJson(
          (json["available"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "as_of": _encodeValue(asOf),
        "available": _encodeValue(available),
      };
}

/// Typed Inttegro request parameters.
final class CustomerDataInput implements _InttegroValue {
  final String? reference;
  final CustomDataInput? customData;
  final String name;
  final String emailAddress;
  final String phoneNumber;
  const CustomerDataInput({
    this.reference,
    this.customData,
    required this.name,
    required this.emailAddress,
    required this.phoneNumber,
  });
  factory CustomerDataInput.fromJson(Map<String, Object?> json) =>
      CustomerDataInput(
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        name: json["name"] as String,
        emailAddress: json["email_address"] as String,
        phoneNumber: json["phone_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reference != null) "reference": _encodeValue(reference),
        if (customData != null) "custom_data": _encodeValue(customData),
        "name": _encodeValue(name),
        "email_address": _encodeValue(emailAddress),
        "phone_number": _encodeValue(phoneNumber),
      };
}

/// Typed Inttegro domain value.
final class CustomerPage implements _InttegroValue {
  final List<Customer> customers;
  final int number;
  final int size;
  const CustomerPage({
    required this.customers,
    required this.number,
    required this.size,
  });
  factory CustomerPage.fromJson(Map<String, Object?> json) => CustomerPage(
        customers: (json["customers"] as List)
            .map((item) =>
                Customer.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "customers": _encodeValue(customers),
        "number": _encodeValue(number),
        "size": _encodeValue(size),
      };
}

/// Typed Inttegro request parameters.
final class DeleteFileRequest implements _InttegroValue {
  final String fileId;
  const DeleteFileRequest({required this.fileId});
  factory DeleteFileRequest.fromJson(Map<String, Object?> json) =>
      DeleteFileRequest(fileId: json["file_id"] as String);
  @override
  Map<String, Object?> toJson() => {"file_id": _encodeValue(fileId)};
}

/// Typed Inttegro request parameters.
final class DestroySecretKeyRequest implements _InttegroValue {
  final String secretKeyId;
  const DestroySecretKeyRequest({required this.secretKeyId});
  factory DestroySecretKeyRequest.fromJson(Map<String, Object?> json) =>
      DestroySecretKeyRequest(secretKeyId: json["secret_key_id"] as String);
  @override
  Map<String, Object?> toJson() => {"secret_key_id": _encodeValue(secretKeyId)};
}

/// Typed Inttegro request parameters.
final class DisableAutomaticPayoutsRequest implements _InttegroValue {
  const DisableAutomaticPayoutsRequest();
  factory DisableAutomaticPayoutsRequest.fromJson(Map<String, Object?> json) =>
      const DisableAutomaticPayoutsRequest();
  @override
  Map<String, Object?> toJson() => {};
}

/// Typed Inttegro request parameters.
final class DisactivatePaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const DisactivatePaymentMethodRequest({required this.paymentMethodId});
  factory DisactivatePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      DisactivatePaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}

/// Typed Inttegro request parameters.
final class EnableAutomaticPayoutsRequest implements _InttegroValue {
  const EnableAutomaticPayoutsRequest();
  factory EnableAutomaticPayoutsRequest.fromJson(Map<String, Object?> json) =>
      const EnableAutomaticPayoutsRequest();
  @override
  Map<String, Object?> toJson() => {};
}

/// Typed Inttegro domain value.
final class Error implements _InttegroValue {
  final String? message;
  final String? fixCode;
  final String? detail;
  final String? cause;
  final String type;
  final String code;
  final String url;
  const Error({
    this.message,
    this.fixCode,
    this.detail,
    this.cause,
    required this.type,
    required this.code,
    required this.url,
  });
  factory Error.fromJson(Map<String, Object?> json) => Error(
        message: json["message"] == null ? null : json["message"] as String,
        fixCode: json["fix_code"] == null ? null : json["fix_code"] as String,
        detail: json["detail"] == null ? null : json["detail"] as String,
        cause: json["cause"] == null ? null : json["cause"] as String,
        type: json["type"] as String,
        code: json["code"] as String,
        url: json["url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (message != null) "message": _encodeValue(message),
        if (fixCode != null) "fix_code": _encodeValue(fixCode),
        if (detail != null) "detail": _encodeValue(detail),
        if (cause != null) "cause": _encodeValue(cause),
        "type": _encodeValue(type),
        "code": _encodeValue(code),
        "url": _encodeValue(url),
      };
}

/// Typed Inttegro request parameters.
final class FeeDetailsInput implements _InttegroValue {
  final String? id;
  final String? label;
  final String? taxCode;
  final String? description;
  final CustomDataInput? customData;
  final AmountParams amount;
  const FeeDetailsInput({
    this.id,
    this.label,
    this.taxCode,
    this.description,
    this.customData,
    required this.amount,
  });
  factory FeeDetailsInput.fromJson(Map<String, Object?> json) =>
      FeeDetailsInput(
        id: json["id"] == null ? null : json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        amount: AmountParams.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (description != null) "description": _encodeValue(description),
        if (customData != null) "custom_data": _encodeValue(customData),
        "amount": _encodeValue(amount),
      };
}

/// Typed Inttegro request parameters.
final class FeeLineItemInput implements _InttegroValue {
  final LineItemType type;
  final FeeDetailsInput fee;
  const FeeLineItemInput({required this.type, required this.fee});
  factory FeeLineItemInput.fromJson(Map<String, Object?> json) =>
      FeeLineItemInput(
        type: LineItemType.fromJson(json["type"]),
        fee: FeeDetailsInput.fromJson(
          (json["fee"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "fee": _encodeValue(fee),
      };
}

/// Typed Inttegro domain value.
final class File implements _InttegroValue {
  final String id;
  final String purpose;
  final FileStatus status;
  final FileScanStatus scanStatus;
  final String? name;
  final String? filename;
  final String contentType;
  final int size;
  final String checksumSha256;
  final FileActor createdBy;
  final FileSource source;
  final FileMedia? media;
  final PublicFileStorage storage;
  final FileDeliveryDetails? delivery;
  final FileLatestError? latestError;
  final CustomData? customData;
  final FileMetadata? metadata;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? availableAt;
  final DateTime? expiresAt;
  const File({
    required this.id,
    required this.purpose,
    required this.status,
    required this.scanStatus,
    this.name,
    this.filename,
    required this.contentType,
    required this.size,
    required this.checksumSha256,
    required this.createdBy,
    required this.source,
    this.media,
    required this.storage,
    this.delivery,
    this.latestError,
    this.customData,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.availableAt,
    this.expiresAt,
  });
  factory File.fromJson(Map<String, Object?> json) => File(
        id: json["id"] as String,
        purpose: json["purpose"] as String,
        status: FileStatus.fromJson(json["status"]),
        scanStatus: FileScanStatus.fromJson(json["scan_status"]),
        name: json["name"] == null ? null : json["name"] as String,
        filename: json["filename"] == null ? null : json["filename"] as String,
        contentType: json["content_type"] as String,
        size: (json["size"] as num).toInt(),
        checksumSha256: json["checksum_sha256"] as String,
        createdBy: FileActor.fromJson(
          (json["created_by"] as Map).cast<String, Object?>(),
        ),
        source: FileSource.fromJson(
          (json["source"] as Map).cast<String, Object?>(),
        ),
        media: json["media"] == null
            ? null
            : FileMedia.fromJson(
                (json["media"] as Map).cast<String, Object?>()),
        storage: PublicFileStorage.fromJson(
          (json["storage"] as Map).cast<String, Object?>(),
        ),
        delivery: json["delivery"] == null
            ? null
            : FileDeliveryDetails.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        latestError: json["latest_error"] == null
            ? null
            : FileLatestError.fromJson(
                (json["latest_error"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        metadata: json["metadata"] == null
            ? null
            : FileMetadata.fromJson(json["metadata"]),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: _decodeDateTime(json["updated_at"]),
        availableAt: json["available_at"] == null
            ? null
            : _decodeDateTime(json["available_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "purpose": _encodeValue(purpose),
        "status": _encodeValue(status),
        "scan_status": _encodeValue(scanStatus),
        if (name != null) "name": _encodeValue(name),
        if (filename != null) "filename": _encodeValue(filename),
        "content_type": _encodeValue(contentType),
        "size": _encodeValue(size),
        "checksum_sha256": _encodeValue(checksumSha256),
        "created_by": _encodeValue(createdBy),
        "source": _encodeValue(source),
        if (media != null) "media": _encodeValue(media),
        "storage": _encodeValue(storage),
        if (delivery != null) "delivery": _encodeValue(delivery),
        if (latestError != null) "latest_error": _encodeValue(latestError),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (metadata != null) "metadata": _encodeValue(metadata),
        "created_at": _encodeValue(createdAt),
        "updated_at": _encodeValue(updatedAt),
        if (availableAt != null) "available_at": _encodeValue(availableAt),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
      };
}

/// Typed Inttegro domain value.
final class FileActor implements _InttegroValue {
  final String type;
  final String? id;
  final String? name;
  final String? email;
  const FileActor({required this.type, this.id, this.name, this.email});
  factory FileActor.fromJson(Map<String, Object?> json) => FileActor(
        type: json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        email: json["email"] == null ? null : json["email"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        if (email != null) "email": _encodeValue(email),
      };
}

/// Typed Inttegro request parameters.
final class FileActorInput implements _InttegroValue {
  final String? email;
  final String? id;
  final String? name;
  final String? type;
  const FileActorInput({this.email, this.id, this.name, this.type});
  factory FileActorInput.fromJson(Map<String, Object?> json) => FileActorInput(
        email: json["email"] == null ? null : json["email"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        type: json["type"] == null ? null : json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (email != null) "email": _encodeValue(email),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        if (type != null) "type": _encodeValue(type),
      };
}

/// Typed Inttegro request parameters.
final class FileContentsRequest implements _InttegroValue {
  final FileDisposition? disposition;
  final FileDelivery? delivery;
  final String fileId;
  const FileContentsRequest({
    this.disposition,
    this.delivery,
    required this.fileId,
  });
  factory FileContentsRequest.fromJson(Map<String, Object?> json) =>
      FileContentsRequest(
        disposition: json["disposition"] == null
            ? null
            : FileDisposition.fromJson(json["disposition"]),
        delivery: json["delivery"] == null
            ? null
            : FileDelivery.fromJson(json["delivery"]),
        fileId: json["file_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (disposition != null) "disposition": _encodeValue(disposition),
        if (delivery != null) "delivery": _encodeValue(delivery),
        "file_id": _encodeValue(fileId),
      };
}

/// Typed Inttegro domain value.
final class FileDeliveryDetails implements _InttegroValue {
  final String? publicUrl;
  final String? cacheControl;
  final String? contentType;
  const FileDeliveryDetails({
    this.publicUrl,
    this.cacheControl,
    this.contentType,
  });
  factory FileDeliveryDetails.fromJson(Map<String, Object?> json) =>
      FileDeliveryDetails(
        publicUrl:
            json["public_url"] == null ? null : json["public_url"] as String,
        cacheControl: json["cache_control"] == null
            ? null
            : json["cache_control"] as String,
        contentType: json["content_type"] == null
            ? null
            : json["content_type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (publicUrl != null) "public_url": _encodeValue(publicUrl),
        if (cacheControl != null) "cache_control": _encodeValue(cacheControl),
        if (contentType != null) "content_type": _encodeValue(contentType),
      };
}

/// Typed Inttegro domain value.
final class FileLatestError implements _InttegroValue {
  final String? code;
  final String? message;
  final bool? retryable;
  final DateTime? at;
  const FileLatestError({this.code, this.message, this.retryable, this.at});
  factory FileLatestError.fromJson(Map<String, Object?> json) =>
      FileLatestError(
        code: json["code"] == null ? null : json["code"] as String,
        message: json["message"] == null ? null : json["message"] as String,
        retryable: json["retryable"] == null ? null : json["retryable"] as bool,
        at: json["at"] == null ? null : _decodeDateTime(json["at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (code != null) "code": _encodeValue(code),
        if (message != null) "message": _encodeValue(message),
        if (retryable != null) "retryable": _encodeValue(retryable),
        if (at != null) "at": _encodeValue(at),
      };
}

/// Typed Inttegro domain value.
final class FileLink implements _InttegroValue {
  final String id;
  final FileLinkKind kind;
  final String fileId;
  final String purpose;
  final FileLinkStatus status;
  final bool active;
  final FileLinkDelivery delivery;
  final FileLinkAccess access;
  final FileLinkActor createdBy;
  final FileLinkActor? revokedBy;
  final CustomData? customData;
  final FileMetadata? metadata;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime expiresAt;
  final DateTime? revokedAt;
  const FileLink({
    required this.id,
    required this.kind,
    required this.fileId,
    required this.purpose,
    required this.status,
    required this.active,
    required this.delivery,
    required this.access,
    required this.createdBy,
    this.revokedBy,
    this.customData,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    required this.expiresAt,
    this.revokedAt,
  });
  factory FileLink.fromJson(Map<String, Object?> json) => FileLink(
        id: json["id"] as String,
        kind: FileLinkKind.fromJson(json["kind"]),
        fileId: json["file_id"] as String,
        purpose: json["purpose"] as String,
        status: FileLinkStatus.fromJson(json["status"]),
        active: json["active"] as bool,
        delivery: FileLinkDelivery.fromJson(
          (json["delivery"] as Map).cast<String, Object?>(),
        ),
        access: FileLinkAccess.fromJson(
          (json["access"] as Map).cast<String, Object?>(),
        ),
        createdBy: FileLinkActor.fromJson(
          (json["created_by"] as Map).cast<String, Object?>(),
        ),
        revokedBy: json["revoked_by"] == null
            ? null
            : FileLinkActor.fromJson(
                (json["revoked_by"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        metadata: json["metadata"] == null
            ? null
            : FileMetadata.fromJson(json["metadata"]),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: _decodeDateTime(json["updated_at"]),
        expiresAt: _decodeDateTime(json["expires_at"]),
        revokedAt: json["revoked_at"] == null
            ? null
            : _decodeDateTime(json["revoked_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "kind": _encodeValue(kind),
        "file_id": _encodeValue(fileId),
        "purpose": _encodeValue(purpose),
        "status": _encodeValue(status),
        "active": _encodeValue(active),
        "delivery": _encodeValue(delivery),
        "access": _encodeValue(access),
        "created_by": _encodeValue(createdBy),
        if (revokedBy != null) "revoked_by": _encodeValue(revokedBy),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (metadata != null) "metadata": _encodeValue(metadata),
        "created_at": _encodeValue(createdAt),
        "updated_at": _encodeValue(updatedAt),
        "expires_at": _encodeValue(expiresAt),
        if (revokedAt != null) "revoked_at": _encodeValue(revokedAt),
      };
}

/// Typed Inttegro domain value.
final class FileLinkAccess implements _InttegroValue {
  final int? maxAccesses;
  final int? accessCount;
  final DateTime? lastAccessedAt;
  final bool? allowDownload;
  final List<String>? allowedOrigins;
  const FileLinkAccess({
    this.maxAccesses,
    this.accessCount,
    this.lastAccessedAt,
    this.allowDownload,
    this.allowedOrigins,
  });
  factory FileLinkAccess.fromJson(Map<String, Object?> json) => FileLinkAccess(
        maxAccesses: json["max_accesses"] == null
            ? null
            : (json["max_accesses"] as num).toInt(),
        accessCount: json["access_count"] == null
            ? null
            : (json["access_count"] as num).toInt(),
        lastAccessedAt: json["last_accessed_at"] == null
            ? null
            : _decodeDateTime(json["last_accessed_at"]),
        allowDownload: json["allow_download"] == null
            ? null
            : json["allow_download"] as bool,
        allowedOrigins: json["allowed_origins"] == null
            ? null
            : (json["allowed_origins"] as List)
                .map((item) => item as String)
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAccesses != null) "max_accesses": _encodeValue(maxAccesses),
        if (accessCount != null) "access_count": _encodeValue(accessCount),
        if (lastAccessedAt != null)
          "last_accessed_at": _encodeValue(lastAccessedAt),
        if (allowDownload != null)
          "allow_download": _encodeValue(allowDownload),
        if (allowedOrigins != null)
          "allowed_origins": _encodeValue(allowedOrigins),
      };
}

/// Typed Inttegro request parameters.
final class FileLinkAccessRequest implements _InttegroValue {
  final int? maxAccesses;
  final bool? allowDownload;
  final List<String>? allowedOrigins;
  final List<String>? allowedIpRanges;
  const FileLinkAccessRequest({
    this.maxAccesses,
    this.allowDownload,
    this.allowedOrigins,
    this.allowedIpRanges,
  });
  factory FileLinkAccessRequest.fromJson(Map<String, Object?> json) =>
      FileLinkAccessRequest(
        maxAccesses: json["max_accesses"] == null
            ? null
            : (json["max_accesses"] as num).toInt(),
        allowDownload: json["allow_download"] == null
            ? null
            : json["allow_download"] as bool,
        allowedOrigins: json["allowed_origins"] == null
            ? null
            : (json["allowed_origins"] as List)
                .map((item) => item as String)
                .toList(),
        allowedIpRanges: json["allowed_ip_ranges"] == null
            ? null
            : (json["allowed_ip_ranges"] as List)
                .map((item) => item as String)
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAccesses != null) "max_accesses": _encodeValue(maxAccesses),
        if (allowDownload != null)
          "allow_download": _encodeValue(allowDownload),
        if (allowedOrigins != null)
          "allowed_origins": _encodeValue(allowedOrigins),
        if (allowedIpRanges != null)
          "allowed_ip_ranges": _encodeValue(allowedIpRanges),
      };
}

/// Typed Inttegro domain value.
final class FileLinkActor implements _InttegroValue {
  final String? email;
  final String? id;
  final String? name;
  final String type;
  const FileLinkActor({this.email, this.id, this.name, required this.type});
  factory FileLinkActor.fromJson(Map<String, Object?> json) => FileLinkActor(
        email: json["email"] == null ? null : json["email"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (email != null) "email": _encodeValue(email),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class FileLinkCreation implements _InttegroValue {
  final FileLink fileLink;
  final String url;
  const FileLinkCreation({required this.fileLink, required this.url});
  factory FileLinkCreation.fromJson(Map<String, Object?> json) =>
      FileLinkCreation(
        fileLink: FileLink.fromJson(
          (json["file_link"] as Map).cast<String, Object?>(),
        ),
        url: json["url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "file_link": _encodeValue(fileLink),
        "url": _encodeValue(url),
      };
}

/// Typed Inttegro domain value.
final class FileLinkDelivery implements _InttegroValue {
  final FileLinkDeliveryMode? mode;
  final String? filename;
  final String? contentType;
  final String? disposition;
  const FileLinkDelivery({
    this.mode,
    this.filename,
    this.contentType,
    this.disposition,
  });
  factory FileLinkDelivery.fromJson(Map<String, Object?> json) =>
      FileLinkDelivery(
        mode: json["mode"] == null
            ? null
            : FileLinkDeliveryMode.fromJson(json["mode"]),
        filename: json["filename"] == null ? null : json["filename"] as String,
        contentType: json["content_type"] == null
            ? null
            : json["content_type"] as String,
        disposition:
            json["disposition"] == null ? null : json["disposition"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (mode != null) "mode": _encodeValue(mode),
        if (filename != null) "filename": _encodeValue(filename),
        if (contentType != null) "content_type": _encodeValue(contentType),
        if (disposition != null) "disposition": _encodeValue(disposition),
      };
}

/// Typed Inttegro request parameters.
final class FileLinkDeliveryInput implements _InttegroValue {
  final FileLinkDeliveryMode? mode;
  final String? filename;
  final String? contentType;
  final String? disposition;
  const FileLinkDeliveryInput({
    this.mode,
    this.filename,
    this.contentType,
    this.disposition,
  });
  factory FileLinkDeliveryInput.fromJson(Map<String, Object?> json) =>
      FileLinkDeliveryInput(
        mode: json["mode"] == null
            ? null
            : FileLinkDeliveryMode.fromJson(json["mode"]),
        filename: json["filename"] == null ? null : json["filename"] as String,
        contentType: json["content_type"] == null
            ? null
            : json["content_type"] as String,
        disposition:
            json["disposition"] == null ? null : json["disposition"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (mode != null) "mode": _encodeValue(mode),
        if (filename != null) "filename": _encodeValue(filename),
        if (contentType != null) "content_type": _encodeValue(contentType),
        if (disposition != null) "disposition": _encodeValue(disposition),
      };
}

/// Typed Inttegro domain value.
final class FileLinkPage implements _InttegroValue {
  final int number;
  final int size;
  final List<FileLink> fileLinks;
  const FileLinkPage({
    required this.number,
    required this.size,
    required this.fileLinks,
  });
  factory FileLinkPage.fromJson(Map<String, Object?> json) => FileLinkPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        fileLinks: (json["file_links"] as List)
            .map((item) =>
                FileLink.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "file_links": _encodeValue(fileLinks),
      };
}

/// Typed Inttegro domain value.
final class FileMedia implements _InttegroValue {
  final String? kind;
  final int? width;
  final int? height;
  final int? durationMs;
  final int? pageCount;
  final int? frameCount;
  final String? colorSpace;
  final bool? hasAlpha;
  final String? codec;
  final String? aspectRatio;
  const FileMedia({
    this.kind,
    this.width,
    this.height,
    this.durationMs,
    this.pageCount,
    this.frameCount,
    this.colorSpace,
    this.hasAlpha,
    this.codec,
    this.aspectRatio,
  });
  factory FileMedia.fromJson(Map<String, Object?> json) => FileMedia(
        kind: json["kind"] == null ? null : json["kind"] as String,
        width: json["width"] == null ? null : (json["width"] as num).toInt(),
        height: json["height"] == null ? null : (json["height"] as num).toInt(),
        durationMs: json["duration_ms"] == null
            ? null
            : (json["duration_ms"] as num).toInt(),
        pageCount: json["page_count"] == null
            ? null
            : (json["page_count"] as num).toInt(),
        frameCount: json["frame_count"] == null
            ? null
            : (json["frame_count"] as num).toInt(),
        colorSpace:
            json["color_space"] == null ? null : json["color_space"] as String,
        hasAlpha: json["has_alpha"] == null ? null : json["has_alpha"] as bool,
        codec: json["codec"] == null ? null : json["codec"] as String,
        aspectRatio: json["aspect_ratio"] == null
            ? null
            : json["aspect_ratio"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (kind != null) "kind": _encodeValue(kind),
        if (width != null) "width": _encodeValue(width),
        if (height != null) "height": _encodeValue(height),
        if (durationMs != null) "duration_ms": _encodeValue(durationMs),
        if (pageCount != null) "page_count": _encodeValue(pageCount),
        if (frameCount != null) "frame_count": _encodeValue(frameCount),
        if (colorSpace != null) "color_space": _encodeValue(colorSpace),
        if (hasAlpha != null) "has_alpha": _encodeValue(hasAlpha),
        if (codec != null) "codec": _encodeValue(codec),
        if (aspectRatio != null) "aspect_ratio": _encodeValue(aspectRatio),
      };
}

/// Typed Inttegro domain value.
final class FilePage implements _InttegroValue {
  final int number;
  final int size;
  final List<File> files;
  const FilePage({
    required this.number,
    required this.size,
    required this.files,
  });
  factory FilePage.fromJson(Map<String, Object?> json) => FilePage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        files: (json["files"] as List)
            .map((item) => File.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "files": _encodeValue(files),
      };
}

/// Typed Inttegro domain value.
final class FileParty implements _InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  final String? email;
  const FileParty({this.type, this.id, this.name, this.email});
  factory FileParty.fromJson(Map<String, Object?> json) => FileParty(
        type: json["type"] == null ? null : json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        email: json["email"] == null ? null : json["email"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        if (email != null) "email": _encodeValue(email),
      };
}

/// Typed Inttegro request parameters.
final class FilePartyInput implements _InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  final String? email;
  const FilePartyInput({this.type, this.id, this.name, this.email});
  factory FilePartyInput.fromJson(Map<String, Object?> json) => FilePartyInput(
        type: json["type"] == null ? null : json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        email: json["email"] == null ? null : json["email"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        if (email != null) "email": _encodeValue(email),
      };
}

/// Typed Inttegro request parameters.
final class FileReferenceInput implements _InttegroValue {
  final String? reference;
  final String? referenceKind;
  final String? purpose;
  final String fileId;
  final String field;
  const FileReferenceInput({
    this.reference,
    this.referenceKind,
    this.purpose,
    required this.fileId,
    required this.field,
  });
  factory FileReferenceInput.fromJson(Map<String, Object?> json) =>
      FileReferenceInput(
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        referenceKind: json["reference_kind"] == null
            ? null
            : json["reference_kind"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        fileId: json["file_id"] as String,
        field: json["field"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reference != null) "reference": _encodeValue(reference),
        if (referenceKind != null)
          "reference_kind": _encodeValue(referenceKind),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "file_id": _encodeValue(fileId),
        "field": _encodeValue(field),
      };
}

/// Typed Inttegro request parameters.
final class FileReferenceReconcileRequest implements _InttegroValue {
  final List<FileReferenceInput>? references;
  final String resourceType;
  final String resourceId;
  const FileReferenceReconcileRequest({
    this.references,
    required this.resourceType,
    required this.resourceId,
  });
  factory FileReferenceReconcileRequest.fromJson(Map<String, Object?> json) =>
      FileReferenceReconcileRequest(
        references: json["references"] == null
            ? null
            : (json["references"] as List)
                .map(
                  (item) => FileReferenceInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        resourceType: json["resource_type"] as String,
        resourceId: json["resource_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (references != null) "references": _encodeValue(references),
        "resource_type": _encodeValue(resourceType),
        "resource_id": _encodeValue(resourceId),
      };
}

/// Typed Inttegro domain value.
final class FileReferenceReconciliation implements _InttegroValue {
  final bool reconciled;
  const FileReferenceReconciliation({required this.reconciled});
  factory FileReferenceReconciliation.fromJson(Map<String, Object?> json) =>
      FileReferenceReconciliation(reconciled: json["reconciled"] as bool);
  @override
  Map<String, Object?> toJson() => {"reconciled": _encodeValue(reconciled)};
}

/// Typed Inttegro domain value.
final class FileResource implements _InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  const FileResource({this.type, this.id, this.name});
  factory FileResource.fromJson(Map<String, Object?> json) => FileResource(
        type: json["type"] == null ? null : json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
      };
}

/// Typed Inttegro request parameters.
final class FileResourceInput implements _InttegroValue {
  final String? type;
  final String? id;
  final String? name;
  const FileResourceInput({this.type, this.id, this.name});
  factory FileResourceInput.fromJson(Map<String, Object?> json) =>
      FileResourceInput(
        type: json["type"] == null ? null : json["type"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
      };
}

/// Typed Inttegro domain value.
final class FileSource implements _InttegroValue {
  final FileSourceType? type;
  final String? service;
  final String? uploadRequestId;
  const FileSource({this.type, this.service, this.uploadRequestId});
  factory FileSource.fromJson(Map<String, Object?> json) => FileSource(
        type:
            json["type"] == null ? null : FileSourceType.fromJson(json["type"]),
        service: json["service"] == null ? null : json["service"] as String,
        uploadRequestId: json["upload_request_id"] == null
            ? null
            : json["upload_request_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (service != null) "service": _encodeValue(service),
        if (uploadRequestId != null)
          "upload_request_id": _encodeValue(uploadRequestId),
      };
}

/// Typed Inttegro domain value.
final class FileUploadReceipt implements _InttegroValue {
  final String contentType;
  final DateTime createdAt;
  final String? filename;
  final String id;
  final String? name;
  final int size;
  final FileStatus status;
  const FileUploadReceipt({
    required this.contentType,
    required this.createdAt,
    this.filename,
    required this.id,
    this.name,
    required this.size,
    required this.status,
  });
  factory FileUploadReceipt.fromJson(Map<String, Object?> json) =>
      FileUploadReceipt(
        contentType: json["content_type"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        filename: json["filename"] == null ? null : json["filename"] as String,
        id: json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        size: (json["size"] as num).toInt(),
        status: FileStatus.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "content_type": _encodeValue(contentType),
        "created_at": _encodeValue(createdAt),
        if (filename != null) "filename": _encodeValue(filename),
        "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        "size": _encodeValue(size),
        "status": _encodeValue(status),
      };
}

/// Typed Inttegro request parameters.
final class FinalizeOrderRequest implements _InttegroValue {
  final String orderId;
  const FinalizeOrderRequest({required this.orderId});
  factory FinalizeOrderRequest.fromJson(Map<String, Object?> json) =>
      FinalizeOrderRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": _encodeValue(orderId)};
}

/// Typed Inttegro domain value.
final class FinancialAccount implements _InttegroValue {
  final DateTime? archivedAt;
  final DateTime createdAt;
  final String currency;
  final CustomData? customData;
  final String? description;
  final String id;
  final FinancialInstitution? institution;
  final String? label;
  final FinancialAccountPullConfiguration? pullConfiguration;
  final FinancialAccountPushConfiguration? pushConfiguration;
  final String? reference;
  final ResourceSupply? supplied;
  final FinancialAccountType type;
  final FinancialAccountVerification? verification;
  final FinancialAccountBank? bankAccount;
  final DateTime? disconnectedAt;
  final DoshAccount? doshAccount;
  final FinancialAccountOwner? owner;
  final FinancialAccountWallet? wallet;
  const FinancialAccount({
    this.archivedAt,
    required this.createdAt,
    required this.currency,
    this.customData,
    this.description,
    required this.id,
    this.institution,
    this.label,
    this.pullConfiguration,
    this.pushConfiguration,
    this.reference,
    this.supplied,
    required this.type,
    this.verification,
    this.bankAccount,
    this.disconnectedAt,
    this.doshAccount,
    this.owner,
    this.wallet,
  });
  factory FinancialAccount.fromJson(Map<String, Object?> json) =>
      FinancialAccount(
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        createdAt: _decodeDateTime(json["created_at"]),
        currency: json["currency"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        id: json["id"] as String,
        institution: json["institution"] == null
            ? null
            : FinancialInstitution.fromJson(
                (json["institution"] as Map).cast<String, Object?>(),
              ),
        label: json["label"] == null ? null : json["label"] as String,
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : FinancialAccountPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : FinancialAccountPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        supplied: json["supplied"] == null
            ? null
            : ResourceSupply.fromJson(
                (json["supplied"] as Map).cast<String, Object?>(),
              ),
        type: FinancialAccountType.fromJson(json["type"]),
        verification: json["verification"] == null
            ? null
            : FinancialAccountVerification.fromJson(json["verification"]),
        bankAccount: json["bank_account"] == null
            ? null
            : FinancialAccountBank.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        disconnectedAt: json["disconnected_at"] == null
            ? null
            : _decodeDateTime(json["disconnected_at"]),
        doshAccount: json["dosh_account"] == null
            ? null
            : DoshAccount.fromJson(json["dosh_account"]),
        owner: json["owner"] == null
            ? null
            : FinancialAccountOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        wallet: json["wallet"] == null
            ? null
            : FinancialAccountWallet.fromJson(
                (json["wallet"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        "created_at": _encodeValue(createdAt),
        "currency": _encodeValue(currency),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        "id": _encodeValue(id),
        if (institution != null) "institution": _encodeValue(institution),
        if (label != null) "label": _encodeValue(label),
        if (pullConfiguration != null)
          "pull_configuration": _encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": _encodeValue(pushConfiguration),
        if (reference != null) "reference": _encodeValue(reference),
        if (supplied != null) "supplied": _encodeValue(supplied),
        "type": _encodeValue(type),
        if (verification != null) "verification": _encodeValue(verification),
        if (bankAccount != null) "bank_account": _encodeValue(bankAccount),
        if (disconnectedAt != null)
          "disconnected_at": _encodeValue(disconnectedAt),
        if (doshAccount != null) "dosh_account": _encodeValue(doshAccount),
        if (owner != null) "owner": _encodeValue(owner),
        if (wallet != null) "wallet": _encodeValue(wallet),
      };
}

/// Typed Inttegro domain value.
final class FinancialAccountAddress implements _InttegroValue {
  final String city;
  final String country;
  final String line1;
  final String? line2;
  final String? name;
  final String? phone;
  final String? postCode;
  final String region;
  const FinancialAccountAddress({
    required this.city,
    required this.country,
    required this.line1,
    this.line2,
    this.name,
    this.phone,
    this.postCode,
    required this.region,
  });
  factory FinancialAccountAddress.fromJson(Map<String, Object?> json) =>
      FinancialAccountAddress(
        city: json["city"] as String,
        country: json["country"] as String,
        line1: json["line_1"] as String,
        line2: json["line_2"] == null ? null : json["line_2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phone: json["phone"] == null ? null : json["phone"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "city": _encodeValue(city),
        "country": _encodeValue(country),
        "line_1": _encodeValue(line1),
        if (line2 != null) "line_2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phone != null) "phone": _encodeValue(phone),
        if (postCode != null) "post_code": _encodeValue(postCode),
        "region": _encodeValue(region),
      };
}

/// Typed Inttegro domain value.
final class FinancialAccountBank implements _InttegroValue {
  final BankAccountType type;
  final GhanaBankAccount? ghanaBankAccount;
  const FinancialAccountBank({required this.type, this.ghanaBankAccount});
  factory FinancialAccountBank.fromJson(Map<String, Object?> json) =>
      FinancialAccountBank(
        type: BankAccountType.fromJson(json["type"]),
        ghanaBankAccount: json["ghana_bank_account"] == null
            ? null
            : GhanaBankAccount.fromJson(
                (json["ghana_bank_account"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (ghanaBankAccount != null)
          "ghana_bank_account": _encodeValue(ghanaBankAccount),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequest implements _InttegroValue {
  final CustomDataInput? customData;
  final String? description;
  final FinancialAccountOwnerInput? owner;
  final FinancialAccountBankRequestPullConfiguration? pullConfiguration;
  final FinancialAccountBankRequestPushConfiguration? pushConfiguration;
  final String currency;
  final String label;
  final String reference;
  final FinancialAccountType type;
  final FinancialAccountBankRequestBankAccount bankAccount;
  const FinancialAccountBankRequest({
    this.customData,
    this.description,
    this.owner,
    this.pullConfiguration,
    this.pushConfiguration,
    required this.currency,
    required this.label,
    required this.reference,
    required this.type,
    required this.bankAccount,
  });
  factory FinancialAccountBankRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountBankRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        owner: json["owner"] == null
            ? null
            : FinancialAccountOwnerInput.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : FinancialAccountBankRequestPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : FinancialAccountBankRequestPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        currency: json["currency"] as String,
        label: json["label"] as String,
        reference: json["reference"] as String,
        type: FinancialAccountType.fromJson(json["type"]),
        bankAccount: FinancialAccountBankRequestBankAccount.fromJson(
          (json["bank_account"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (owner != null) "owner": _encodeValue(owner),
        if (pullConfiguration != null)
          "pull_configuration": _encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": _encodeValue(pushConfiguration),
        "currency": _encodeValue(currency),
        "label": _encodeValue(label),
        "reference": _encodeValue(reference),
        "type": _encodeValue(type),
        "bank_account": _encodeValue(bankAccount),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequestBankAccount implements _InttegroValue {
  final BankAccountType type;
  final FinancialAccountBankRequestBankAccountGhanaBankAccount ghanaBankAccount;
  const FinancialAccountBankRequestBankAccount({
    required this.type,
    required this.ghanaBankAccount,
  });
  factory FinancialAccountBankRequestBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountBankRequestBankAccount(
        type: BankAccountType.fromJson(json["type"]),
        ghanaBankAccount:
            FinancialAccountBankRequestBankAccountGhanaBankAccount.fromJson(
          (json["ghana_bank_account"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "ghana_bank_account": _encodeValue(ghanaBankAccount),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequestBankAccountGhanaBankAccount
    implements _InttegroValue {
  final String? bankName;
  final String? branch;
  final String? sortCode;
  final String? swiftCode;
  final FinancialAccountOwnerInput? holder;
  final String number;
  const FinancialAccountBankRequestBankAccountGhanaBankAccount({
    this.bankName,
    this.branch,
    this.sortCode,
    this.swiftCode,
    this.holder,
    required this.number,
  });
  factory FinancialAccountBankRequestBankAccountGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountBankRequestBankAccountGhanaBankAccount(
        bankName:
            json["bank_name"] == null ? null : json["bank_name"] as String,
        branch: json["branch"] == null ? null : json["branch"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
        holder: json["holder"] == null
            ? null
            : FinancialAccountOwnerInput.fromJson(
                (json["holder"] as Map).cast<String, Object?>(),
              ),
        number: json["number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (bankName != null) "bank_name": _encodeValue(bankName),
        if (branch != null) "branch": _encodeValue(branch),
        if (sortCode != null) "sort_code": _encodeValue(sortCode),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
        if (holder != null) "holder": _encodeValue(holder),
        "number": _encodeValue(number),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequestPullConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountBankRequestPullConfiguration({this.enabled});
  factory FinancialAccountBankRequestPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountBankRequestPullConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequestPushConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountBankRequestPushConfiguration({this.enabled});
  factory FinancialAccountBankRequestPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountBankRequestPushConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountDisableRequest implements _InttegroValue {
  final bool? unsetAsPayoutDestination;
  final String accountId;
  const FinancialAccountDisableRequest({
    this.unsetAsPayoutDestination,
    required this.accountId,
  });
  factory FinancialAccountDisableRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountDisableRequest(
        unsetAsPayoutDestination: json["unset_as_payout_destination"] == null
            ? null
            : json["unset_as_payout_destination"] as bool,
        accountId: json["account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (unsetAsPayoutDestination != null)
          "unset_as_payout_destination": _encodeValue(unsetAsPayoutDestination),
        "account_id": _encodeValue(accountId),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountDoshRequest implements _InttegroValue {
  final CustomDataInput? customData;
  final String? description;
  final FinancialAccountDoshRequestPullConfiguration? pullConfiguration;
  final FinancialAccountDoshRequestPushConfiguration? pushConfiguration;
  final String currency;
  final String label;
  final FinancialAccountOwnerInput owner;
  final String reference;
  final FinancialAccountType type;
  final DoshAccount doshAccount;
  const FinancialAccountDoshRequest({
    this.customData,
    this.description,
    this.pullConfiguration,
    this.pushConfiguration,
    required this.currency,
    required this.label,
    required this.owner,
    required this.reference,
    required this.type,
    required this.doshAccount,
  });
  factory FinancialAccountDoshRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountDoshRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : FinancialAccountDoshRequestPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : FinancialAccountDoshRequestPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        currency: json["currency"] as String,
        label: json["label"] as String,
        owner: FinancialAccountOwnerInput.fromJson(
          (json["owner"] as Map).cast<String, Object?>(),
        ),
        reference: json["reference"] as String,
        type: FinancialAccountType.fromJson(json["type"]),
        doshAccount: DoshAccount.fromJson(json["dosh_account"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (pullConfiguration != null)
          "pull_configuration": _encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": _encodeValue(pushConfiguration),
        "currency": _encodeValue(currency),
        "label": _encodeValue(label),
        "owner": _encodeValue(owner),
        "reference": _encodeValue(reference),
        "type": _encodeValue(type),
        "dosh_account": _encodeValue(doshAccount),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountDoshRequestPullConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountDoshRequestPullConfiguration({this.enabled});
  factory FinancialAccountDoshRequestPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountDoshRequestPullConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountDoshRequestPushConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountDoshRequestPushConfiguration({this.enabled});
  factory FinancialAccountDoshRequestPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountDoshRequestPushConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountEnablePullRequest implements _InttegroValue {
  final String? ipAddress;
  final String? userAgent;
  final String accountId;
  const FinancialAccountEnablePullRequest({
    this.ipAddress,
    this.userAgent,
    required this.accountId,
  });
  factory FinancialAccountEnablePullRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountEnablePullRequest(
        ipAddress:
            json["ip_address"] == null ? null : json["ip_address"] as String,
        userAgent:
            json["user_agent"] == null ? null : json["user_agent"] as String,
        accountId: json["account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (ipAddress != null) "ip_address": _encodeValue(ipAddress),
        if (userAgent != null) "user_agent": _encodeValue(userAgent),
        "account_id": _encodeValue(accountId),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountIDRequest implements _InttegroValue {
  final String accountId;
  const FinancialAccountIDRequest({required this.accountId});
  factory FinancialAccountIDRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountIDRequest(accountId: json["account_id"] as String);
  @override
  Map<String, Object?> toJson() => {"account_id": _encodeValue(accountId)};
}

/// Typed Inttegro domain value.
final class FinancialAccountOwner implements _InttegroValue {
  final FinancialAccountAddress address;
  final String name;
  const FinancialAccountOwner({required this.address, required this.name});
  factory FinancialAccountOwner.fromJson(Map<String, Object?> json) =>
      FinancialAccountOwner(
        address: FinancialAccountAddress.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": _encodeValue(address),
        "name": _encodeValue(name),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountOwnerInput implements _InttegroValue {
  final String name;
  final FinancialAccountOwnerInputAddress address;
  const FinancialAccountOwnerInput({required this.name, required this.address});
  factory FinancialAccountOwnerInput.fromJson(Map<String, Object?> json) =>
      FinancialAccountOwnerInput(
        name: json["name"] as String,
        address: FinancialAccountOwnerInputAddress.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "address": _encodeValue(address),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountOwnerInputAddress implements _InttegroValue {
  final String? city;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phone;
  final String? postCode;
  final String? region;
  final String country;
  const FinancialAccountOwnerInputAddress({
    this.city,
    this.line1,
    this.line2,
    this.name,
    this.phone,
    this.postCode,
    this.region,
    required this.country,
  });
  factory FinancialAccountOwnerInputAddress.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountOwnerInputAddress(
        city: json["city"] == null ? null : json["city"] as String,
        line1: json["line_1"] == null ? null : json["line_1"] as String,
        line2: json["line_2"] == null ? null : json["line_2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phone: json["phone"] == null ? null : json["phone"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] == null ? null : json["region"] as String,
        country: json["country"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (city != null) "city": _encodeValue(city),
        if (line1 != null) "line_1": _encodeValue(line1),
        if (line2 != null) "line_2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phone != null) "phone": _encodeValue(phone),
        if (postCode != null) "post_code": _encodeValue(postCode),
        if (region != null) "region": _encodeValue(region),
        "country": _encodeValue(country),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountOwnerUpdateInput implements _InttegroValue {
  final String? name;
  final FinancialAccountOwnerUpdateInputAddress? address;
  const FinancialAccountOwnerUpdateInput({this.name, this.address});
  factory FinancialAccountOwnerUpdateInput.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountOwnerUpdateInput(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null
            ? null
            : FinancialAccountOwnerUpdateInputAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountOwnerUpdateInputAddress implements _InttegroValue {
  final String? city;
  final String? country;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phone;
  final String? postCode;
  final String? region;
  const FinancialAccountOwnerUpdateInputAddress({
    this.city,
    this.country,
    this.line1,
    this.line2,
    this.name,
    this.phone,
    this.postCode,
    this.region,
  });
  factory FinancialAccountOwnerUpdateInputAddress.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountOwnerUpdateInputAddress(
        city: json["city"] == null ? null : json["city"] as String,
        country: json["country"] == null ? null : json["country"] as String,
        line1: json["line_1"] == null ? null : json["line_1"] as String,
        line2: json["line_2"] == null ? null : json["line_2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phone: json["phone"] == null ? null : json["phone"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] == null ? null : json["region"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (city != null) "city": _encodeValue(city),
        if (country != null) "country": _encodeValue(country),
        if (line1 != null) "line_1": _encodeValue(line1),
        if (line2 != null) "line_2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phone != null) "phone": _encodeValue(phone),
        if (postCode != null) "post_code": _encodeValue(postCode),
        if (region != null) "region": _encodeValue(region),
      };
}

/// Typed Inttegro domain value.
final class FinancialAccountPage implements _InttegroValue {
  final List<FinancialAccount> accounts;
  final int number;
  final int size;
  const FinancialAccountPage({
    required this.accounts,
    required this.number,
    required this.size,
  });
  factory FinancialAccountPage.fromJson(Map<String, Object?> json) =>
      FinancialAccountPage(
        accounts: (json["accounts"] as List)
            .map(
              (item) => FinancialAccount.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "accounts": _encodeValue(accounts),
        "number": _encodeValue(number),
        "size": _encodeValue(size),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountPageRequest implements _InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const FinancialAccountPageRequest({this.pageSize, required this.pageNumber});
  factory FinancialAccountPageRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountPageRequest(
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        pageNumber: (json["page_number"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        "page_number": _encodeValue(pageNumber),
      };
}

/// Typed Inttegro domain value.
final class FinancialAccountPullConfiguration implements _InttegroValue {
  final DateTime enabledAt;
  final FinancialAccountPullConfigurationMandate mandate;
  const FinancialAccountPullConfiguration({
    required this.enabledAt,
    required this.mandate,
  });
  factory FinancialAccountPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountPullConfiguration(
        enabledAt: _decodeDateTime(json["enabled_at"]),
        mandate: FinancialAccountPullConfigurationMandate.fromJson(
          (json["mandate"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "enabled_at": _encodeValue(enabledAt),
        "mandate": _encodeValue(mandate),
      };
}

/// Typed Inttegro domain value.
final class FinancialAccountPullConfigurationMandate implements _InttegroValue {
  final DateTime createdAt;
  final String id;
  final String ipAddress;
  final String userAgent;
  const FinancialAccountPullConfigurationMandate({
    required this.createdAt,
    required this.id,
    required this.ipAddress,
    required this.userAgent,
  });
  factory FinancialAccountPullConfigurationMandate.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountPullConfigurationMandate(
        createdAt: _decodeDateTime(json["created_at"]),
        id: json["id"] as String,
        ipAddress: json["ip_address"] as String,
        userAgent: json["user_agent"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        "id": _encodeValue(id),
        "ip_address": _encodeValue(ipAddress),
        "user_agent": _encodeValue(userAgent),
      };
}

/// Typed Inttegro domain value.
final class FinancialAccountPushConfiguration implements _InttegroValue {
  final DateTime enabledAt;
  const FinancialAccountPushConfiguration({required this.enabledAt});
  factory FinancialAccountPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountPushConfiguration(
        enabledAt: _decodeDateTime(json["enabled_at"]),
      );
  @override
  Map<String, Object?> toJson() => {"enabled_at": _encodeValue(enabledAt)};
}

/// Typed Inttegro request parameters.
final class FinancialAccountUpdateRequest implements _InttegroValue {
  final CustomDataPatch? customData;
  final String? description;
  final String? label;
  final FinancialAccountOwnerUpdateInput? owner;
  final String? reference;
  final String accountId;
  const FinancialAccountUpdateRequest({
    this.customData,
    this.description,
    this.label,
    this.owner,
    this.reference,
    required this.accountId,
  });
  factory FinancialAccountUpdateRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountUpdateRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomDataPatch.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        owner: json["owner"] == null
            ? null
            : FinancialAccountOwnerUpdateInput.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        accountId: json["account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (label != null) "label": _encodeValue(label),
        if (owner != null) "owner": _encodeValue(owner),
        if (reference != null) "reference": _encodeValue(reference),
        "account_id": _encodeValue(accountId),
      };
}

/// Typed Inttegro domain value.
final class FinancialAccountWallet implements _InttegroValue {
  final String id;
  final WalletType type;
  final FinancialAccountWalletMobileMoney? mobileMoney;
  const FinancialAccountWallet({
    required this.id,
    required this.type,
    this.mobileMoney,
  });
  factory FinancialAccountWallet.fromJson(Map<String, Object?> json) =>
      FinancialAccountWallet(
        id: json["id"] as String,
        type: WalletType.fromJson(json["type"]),
        mobileMoney: json["mobile_money"] == null
            ? null
            : FinancialAccountWalletMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "type": _encodeValue(type),
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
      };
}

/// Typed Inttegro domain value.
final class FinancialAccountWalletMobileMoney implements _InttegroValue {
  final String accountNumber;
  final MobileMoneyNetwork network;
  const FinancialAccountWalletMobileMoney({
    required this.accountNumber,
    required this.network,
  });
  factory FinancialAccountWalletMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletMobileMoney(
        accountNumber: json["account_number"] as String,
        network: MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        "network": _encodeValue(network),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequest implements _InttegroValue {
  final CustomDataInput? customData;
  final String? description;
  final FinancialAccountWalletRequestPullConfiguration? pullConfiguration;
  final FinancialAccountWalletRequestPushConfiguration? pushConfiguration;
  final String currency;
  final String label;
  final FinancialAccountOwnerInput owner;
  final String reference;
  final FinancialAccountType type;
  final FinancialAccountWalletRequestWallet wallet;
  const FinancialAccountWalletRequest({
    this.customData,
    this.description,
    this.pullConfiguration,
    this.pushConfiguration,
    required this.currency,
    required this.label,
    required this.owner,
    required this.reference,
    required this.type,
    required this.wallet,
  });
  factory FinancialAccountWalletRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountWalletRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        pullConfiguration: json["pull_configuration"] == null
            ? null
            : FinancialAccountWalletRequestPullConfiguration.fromJson(
                (json["pull_configuration"] as Map).cast<String, Object?>(),
              ),
        pushConfiguration: json["push_configuration"] == null
            ? null
            : FinancialAccountWalletRequestPushConfiguration.fromJson(
                (json["push_configuration"] as Map).cast<String, Object?>(),
              ),
        currency: json["currency"] as String,
        label: json["label"] as String,
        owner: FinancialAccountOwnerInput.fromJson(
          (json["owner"] as Map).cast<String, Object?>(),
        ),
        reference: json["reference"] as String,
        type: FinancialAccountType.fromJson(json["type"]),
        wallet: FinancialAccountWalletRequestWallet.fromJson(
          (json["wallet"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (pullConfiguration != null)
          "pull_configuration": _encodeValue(pullConfiguration),
        if (pushConfiguration != null)
          "push_configuration": _encodeValue(pushConfiguration),
        "currency": _encodeValue(currency),
        "label": _encodeValue(label),
        "owner": _encodeValue(owner),
        "reference": _encodeValue(reference),
        "type": _encodeValue(type),
        "wallet": _encodeValue(wallet),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequestPullConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountWalletRequestPullConfiguration({this.enabled});
  factory FinancialAccountWalletRequestPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletRequestPullConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequestPushConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountWalletRequestPushConfiguration({this.enabled});
  factory FinancialAccountWalletRequestPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletRequestPushConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequestWallet implements _InttegroValue {
  final WalletType type;
  final FinancialAccountWalletRequestWalletMobileMoney mobileMoney;
  const FinancialAccountWalletRequestWallet({
    required this.type,
    required this.mobileMoney,
  });
  factory FinancialAccountWalletRequestWallet.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletRequestWallet(
        type: WalletType.fromJson(json["type"]),
        mobileMoney: FinancialAccountWalletRequestWalletMobileMoney.fromJson(
          (json["mobile_money"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "mobile_money": _encodeValue(mobileMoney),
      };
}

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequestWalletMobileMoney
    implements _InttegroValue {
  final String accountNumber;
  final MobileMoneyNetwork network;
  const FinancialAccountWalletRequestWalletMobileMoney({
    required this.accountNumber,
    required this.network,
  });
  factory FinancialAccountWalletRequestWalletMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletRequestWalletMobileMoney(
        accountNumber: json["account_number"] as String,
        network: MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        "network": _encodeValue(network),
      };
}

/// Typed Inttegro domain value.
final class FinancialInstitution implements _InttegroValue {
  final FinancialInstitutionBank? bank;
  final String country;
  final String id;
  final FinancialInstitutionMobileMoneyProvider? mobileMoneyProvider;
  final String name;
  final String type;
  const FinancialInstitution({
    this.bank,
    required this.country,
    required this.id,
    this.mobileMoneyProvider,
    required this.name,
    required this.type,
  });
  factory FinancialInstitution.fromJson(Map<String, Object?> json) =>
      FinancialInstitution(
        bank: json["bank"] == null
            ? null
            : FinancialInstitutionBank.fromJson(
                (json["bank"] as Map).cast<String, Object?>(),
              ),
        country: json["country"] as String,
        id: json["id"] as String,
        mobileMoneyProvider: json["mobile_money_provider"] == null
            ? null
            : FinancialInstitutionMobileMoneyProvider.fromJson(
                (json["mobile_money_provider"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (bank != null) "bank": _encodeValue(bank),
        "country": _encodeValue(country),
        "id": _encodeValue(id),
        if (mobileMoneyProvider != null)
          "mobile_money_provider": _encodeValue(mobileMoneyProvider),
        "name": _encodeValue(name),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class FinancialInstitutionBank implements _InttegroValue {
  final String bankAccountType;
  final FinancialInstitutionBankBranch? branch;
  final String codeScheme;
  final String? sortCodePrefix;
  final String? swiftCode;
  const FinancialInstitutionBank({
    required this.bankAccountType,
    this.branch,
    required this.codeScheme,
    this.sortCodePrefix,
    this.swiftCode,
  });
  factory FinancialInstitutionBank.fromJson(Map<String, Object?> json) =>
      FinancialInstitutionBank(
        bankAccountType: json["bank_account_type"] as String,
        branch: json["branch"] == null
            ? null
            : FinancialInstitutionBankBranch.fromJson(
                (json["branch"] as Map).cast<String, Object?>(),
              ),
        codeScheme: json["code_scheme"] as String,
        sortCodePrefix: json["sort_code_prefix"] == null
            ? null
            : json["sort_code_prefix"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "bank_account_type": _encodeValue(bankAccountType),
        if (branch != null) "branch": _encodeValue(branch),
        "code_scheme": _encodeValue(codeScheme),
        if (sortCodePrefix != null)
          "sort_code_prefix": _encodeValue(sortCodePrefix),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
      };
}

/// Typed Inttegro domain value.
final class FinancialInstitutionBankBranch implements _InttegroValue {
  final String id;
  final String name;
  final String sortCode;
  const FinancialInstitutionBankBranch({
    required this.id,
    required this.name,
    required this.sortCode,
  });
  factory FinancialInstitutionBankBranch.fromJson(Map<String, Object?> json) =>
      FinancialInstitutionBankBranch(
        id: json["id"] as String,
        name: json["name"] as String,
        sortCode: json["sort_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        "sort_code": _encodeValue(sortCode),
      };
}

/// Typed Inttegro domain value.
final class FinancialInstitutionMobileMoneyProvider implements _InttegroValue {
  final String provider;
  const FinancialInstitutionMobileMoneyProvider({required this.provider});
  factory FinancialInstitutionMobileMoneyProvider.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialInstitutionMobileMoneyProvider(
        provider: json["provider"] as String,
      );
  @override
  Map<String, Object?> toJson() => {"provider": _encodeValue(provider)};
}

/// Typed Inttegro request parameters.
final class GenerateSecretKeyRequest implements _InttegroValue {
  final String? label;
  const GenerateSecretKeyRequest({this.label});
  factory GenerateSecretKeyRequest.fromJson(Map<String, Object?> json) =>
      GenerateSecretKeyRequest(
        label: json["label"] == null ? null : json["label"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": _encodeValue(label),
      };
}

/// Typed Inttegro domain value.
final class GeneratedSecretKey implements _InttegroValue {
  final String id;
  final String? label;
  final SecretKeyTokenType tokenType;
  final DateTime issuedAt;
  final String token;
  const GeneratedSecretKey({
    required this.id,
    this.label,
    required this.tokenType,
    required this.issuedAt,
    required this.token,
  });
  factory GeneratedSecretKey.fromJson(Map<String, Object?> json) =>
      GeneratedSecretKey(
        id: json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        tokenType: SecretKeyTokenType.fromJson(json["token_type"]),
        issuedAt: _decodeDateTime(json["issued_at"]),
        token: json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        "token_type": _encodeValue(tokenType),
        "issued_at": _encodeValue(issuedAt),
        "token": _encodeValue(token),
      };
}

/// Typed Inttegro request parameters.
final class GetPaymentMethodSettingsRequest implements _InttegroValue {
  const GetPaymentMethodSettingsRequest();
  factory GetPaymentMethodSettingsRequest.fromJson(Map<String, Object?> json) =>
      const GetPaymentMethodSettingsRequest();
  @override
  Map<String, Object?> toJson() => {};
}

/// Typed Inttegro request parameters.
final class GetPayoutSettingsRequest implements _InttegroValue {
  const GetPayoutSettingsRequest();
  factory GetPayoutSettingsRequest.fromJson(Map<String, Object?> json) =>
      const GetPayoutSettingsRequest();
  @override
  Map<String, Object?> toJson() => {};
}

/// Typed Inttegro domain value.
final class GhanaBankAccount implements _InttegroValue {
  final String? branch;
  final FinancialAccountOwner holder;
  final String? name;
  final String number;
  final String? sortCode;
  final String? swiftCode;
  const GhanaBankAccount({
    this.branch,
    required this.holder,
    this.name,
    required this.number,
    this.sortCode,
    this.swiftCode,
  });
  factory GhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      GhanaBankAccount(
        branch: json["branch"] == null ? null : json["branch"] as String,
        holder: FinancialAccountOwner.fromJson(
          (json["holder"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] == null ? null : json["name"] as String,
        number: json["number"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (branch != null) "branch": _encodeValue(branch),
        "holder": _encodeValue(holder),
        if (name != null) "name": _encodeValue(name),
        "number": _encodeValue(number),
        if (sortCode != null) "sort_code": _encodeValue(sortCode),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
      };
}

/// Typed Inttegro request parameters.
final class InitiateOTPRequest implements _InttegroValue {
  final bool? asyncDelivery;
  final String? messageTemplate;
  final String? purpose;
  final String? sender;
  final String? tokenAlphabet;
  final OTPAlphabetType? tokenAlphabetType;
  final int? validityDurationInMinutes;
  final String recipient;
  final String serviceName;
  final int tokenSize;
  const InitiateOTPRequest({
    this.asyncDelivery,
    this.messageTemplate,
    this.purpose,
    this.sender,
    this.tokenAlphabet,
    this.tokenAlphabetType,
    this.validityDurationInMinutes,
    required this.recipient,
    required this.serviceName,
    required this.tokenSize,
  });
  factory InitiateOTPRequest.fromJson(Map<String, Object?> json) =>
      InitiateOTPRequest(
        asyncDelivery: json["async_delivery"] == null
            ? null
            : json["async_delivery"] as bool,
        messageTemplate: json["message_template"] == null
            ? null
            : json["message_template"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        sender: json["sender"] == null ? null : json["sender"] as String,
        tokenAlphabet: json["token_alphabet"] == null
            ? null
            : json["token_alphabet"] as String,
        tokenAlphabetType: json["token_alphabet_type"] == null
            ? null
            : OTPAlphabetType.fromJson(json["token_alphabet_type"]),
        validityDurationInMinutes: json["validity_duration_in_minutes"] == null
            ? null
            : (json["validity_duration_in_minutes"] as num).toInt(),
        recipient: json["recipient"] as String,
        serviceName: json["service_name"] as String,
        tokenSize: (json["token_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (asyncDelivery != null)
          "async_delivery": _encodeValue(asyncDelivery),
        if (messageTemplate != null)
          "message_template": _encodeValue(messageTemplate),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (sender != null) "sender": _encodeValue(sender),
        if (tokenAlphabet != null)
          "token_alphabet": _encodeValue(tokenAlphabet),
        if (tokenAlphabetType != null)
          "token_alphabet_type": _encodeValue(tokenAlphabetType),
        if (validityDurationInMinutes != null)
          "validity_duration_in_minutes":
              _encodeValue(validityDurationInMinutes),
        "recipient": _encodeValue(recipient),
        "service_name": _encodeValue(serviceName),
        "token_size": _encodeValue(tokenSize),
      };
}

/// Typed Inttegro request parameters.
final class InlineProductDetailsInput implements _InttegroValue {
  final String? about;
  final CustomDataInput? customData;
  final String? reference;
  final String? taxCode;
  final String name;
  final PriceParams price;
  final int quantity;
  final ProductType type;
  const InlineProductDetailsInput({
    this.about,
    this.customData,
    this.reference,
    this.taxCode,
    required this.name,
    required this.price,
    required this.quantity,
    required this.type,
  });
  factory InlineProductDetailsInput.fromJson(
    Map<String, Object?> json,
  ) =>
      InlineProductDetailsInput(
        about: json["about"] == null ? null : json["about"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        name: json["name"] as String,
        price: PriceParams.fromJson(
            (json["price"] as Map).cast<String, Object?>()),
        quantity: (json["quantity"] as num).toInt(),
        type: ProductType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (reference != null) "reference": _encodeValue(reference),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        "name": _encodeValue(name),
        "price": _encodeValue(price),
        "quantity": _encodeValue(quantity),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class InvoiceSettings implements _InttegroValue {
  final String? number;
  final String? memo;
  final String? footer;
  final CustomData? customData;
  const InvoiceSettings({this.number, this.memo, this.footer, this.customData});
  factory InvoiceSettings.fromJson(Map<String, Object?> json) =>
      InvoiceSettings(
        number: json["number"] == null ? null : json["number"] as String,
        memo: json["memo"] == null ? null : json["memo"] as String,
        footer: json["footer"] == null ? null : json["footer"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        if (memo != null) "memo": _encodeValue(memo),
        if (footer != null) "footer": _encodeValue(footer),
        if (customData != null) "custom_data": _encodeValue(customData),
      };
}

/// Typed Inttegro request parameters.
final class InvoiceSettingsInput implements _InttegroValue {
  final String? number;
  final String? memo;
  final String? footer;
  final CustomData? customData;
  const InvoiceSettingsInput({
    this.number,
    this.memo,
    this.footer,
    this.customData,
  });
  factory InvoiceSettingsInput.fromJson(Map<String, Object?> json) =>
      InvoiceSettingsInput(
        number: json["number"] == null ? null : json["number"] as String,
        memo: json["memo"] == null ? null : json["memo"] as String,
        footer: json["footer"] == null ? null : json["footer"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        if (memo != null) "memo": _encodeValue(memo),
        if (footer != null) "footer": _encodeValue(footer),
        if (customData != null) "custom_data": _encodeValue(customData),
      };
}

/// Typed Inttegro request parameters.
final class ListCountrySpecsRequest implements _InttegroValue {
  const ListCountrySpecsRequest();
  factory ListCountrySpecsRequest.fromJson(Map<String, Object?> json) =>
      const ListCountrySpecsRequest();
  @override
  Map<String, Object?> toJson() => {};
}

/// Typed Inttegro request parameters.
final class LookupBalanceTransactionRequest implements _InttegroValue {
  final String transactionId;
  const LookupBalanceTransactionRequest({required this.transactionId});
  factory LookupBalanceTransactionRequest.fromJson(Map<String, Object?> json) =>
      LookupBalanceTransactionRequest(
        transactionId: json["transaction_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "transaction_id": _encodeValue(transactionId),
      };
}

/// Typed Inttegro request parameters.
final class LookupBalancesRequest implements _InttegroValue {
  const LookupBalancesRequest();
  factory LookupBalancesRequest.fromJson(Map<String, Object?> json) =>
      const LookupBalancesRequest();
  @override
  Map<String, Object?> toJson() => {};
}

/// Typed Inttegro request parameters.
final class LookupBroadcastRequest implements _InttegroValue {
  final String broadcastId;
  const LookupBroadcastRequest({required this.broadcastId});
  factory LookupBroadcastRequest.fromJson(Map<String, Object?> json) =>
      LookupBroadcastRequest(broadcastId: json["broadcast_id"] as String);
  @override
  Map<String, Object?> toJson() => {"broadcast_id": _encodeValue(broadcastId)};
}

/// Typed Inttegro request parameters.
final class LookupChimeRequest implements _InttegroValue {
  final String chimeId;
  const LookupChimeRequest({required this.chimeId});
  factory LookupChimeRequest.fromJson(Map<String, Object?> json) =>
      LookupChimeRequest(chimeId: json["chime_id"] as String);
  @override
  Map<String, Object?> toJson() => {"chime_id": _encodeValue(chimeId)};
}

/// Typed Inttegro request parameters.
final class LookupCustomerRequest implements _InttegroValue {
  final String customerId;
  const LookupCustomerRequest({required this.customerId});
  factory LookupCustomerRequest.fromJson(Map<String, Object?> json) =>
      LookupCustomerRequest(customerId: json["customer_id"] as String);
  @override
  Map<String, Object?> toJson() => {"customer_id": _encodeValue(customerId)};
}

/// Typed Inttegro request parameters.
final class LookupFileLinkRequest implements _InttegroValue {
  final String id;
  const LookupFileLinkRequest({required this.id});
  factory LookupFileLinkRequest.fromJson(Map<String, Object?> json) =>
      LookupFileLinkRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": _encodeValue(id)};
}

/// Typed Inttegro request parameters.
final class LookupFileRequest implements _InttegroValue {
  final String fileId;
  const LookupFileRequest({required this.fileId});
  factory LookupFileRequest.fromJson(Map<String, Object?> json) =>
      LookupFileRequest(fileId: json["file_id"] as String);
  @override
  Map<String, Object?> toJson() => {"file_id": _encodeValue(fileId)};
}

/// Typed Inttegro request parameters.
final class LookupOTPRequest implements _InttegroValue {
  final String transactionId;
  const LookupOTPRequest({required this.transactionId});
  factory LookupOTPRequest.fromJson(Map<String, Object?> json) =>
      LookupOTPRequest(transactionId: json["transaction_id"] as String);
  @override
  Map<String, Object?> toJson() => {
        "transaction_id": _encodeValue(transactionId),
      };
}

/// Typed Inttegro request parameters.
final class LookupOrderRequest implements _InttegroValue {
  final String orderId;
  const LookupOrderRequest({required this.orderId});
  factory LookupOrderRequest.fromJson(Map<String, Object?> json) =>
      LookupOrderRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": _encodeValue(orderId)};
}

/// Typed Inttegro request parameters.
final class LookupPaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const LookupPaymentMethodRequest({required this.paymentMethodId});
  factory LookupPaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      LookupPaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}

/// Typed Inttegro request parameters.
final class LookupPayoutRequest implements _InttegroValue {
  final String payoutId;
  const LookupPayoutRequest({required this.payoutId});
  factory LookupPayoutRequest.fromJson(Map<String, Object?> json) =>
      LookupPayoutRequest(payoutId: json["payout_id"] as String);
  @override
  Map<String, Object?> toJson() => {"payout_id": _encodeValue(payoutId)};
}

/// Typed Inttegro request parameters.
final class LookupPriceRequest implements _InttegroValue {
  final String priceId;
  const LookupPriceRequest({required this.priceId});
  factory LookupPriceRequest.fromJson(Map<String, Object?> json) =>
      LookupPriceRequest(priceId: json["price_id"] as String);
  @override
  Map<String, Object?> toJson() => {"price_id": _encodeValue(priceId)};
}

/// Typed Inttegro request parameters.
final class LookupProductRequest implements _InttegroValue {
  final String productId;
  const LookupProductRequest({required this.productId});
  factory LookupProductRequest.fromJson(Map<String, Object?> json) =>
      LookupProductRequest(productId: json["product_id"] as String);
  @override
  Map<String, Object?> toJson() => {"product_id": _encodeValue(productId)};
}

/// Typed Inttegro request parameters.
final class LookupPurchaseIntentRequest implements _InttegroValue {
  final String id;
  const LookupPurchaseIntentRequest({required this.id});
  factory LookupPurchaseIntentRequest.fromJson(Map<String, Object?> json) =>
      LookupPurchaseIntentRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": _encodeValue(id)};
}

/// Typed Inttegro request parameters.
final class LookupRefundRequest implements _InttegroValue {
  final String refundId;
  const LookupRefundRequest({required this.refundId});
  factory LookupRefundRequest.fromJson(Map<String, Object?> json) =>
      LookupRefundRequest(refundId: json["refund_id"] as String);
  @override
  Map<String, Object?> toJson() => {"refund_id": _encodeValue(refundId)};
}

/// Typed Inttegro request parameters.
final class LookupScheduleRequest implements _InttegroValue {
  final String scheduleId;
  const LookupScheduleRequest({required this.scheduleId});
  factory LookupScheduleRequest.fromJson(Map<String, Object?> json) =>
      LookupScheduleRequest(scheduleId: json["schedule_id"] as String);
  @override
  Map<String, Object?> toJson() => {"schedule_id": _encodeValue(scheduleId)};
}

/// Typed Inttegro request parameters.
final class LookupSecretKeyRequest implements _InttegroValue {
  final String secretKeyId;
  const LookupSecretKeyRequest({required this.secretKeyId});
  factory LookupSecretKeyRequest.fromJson(Map<String, Object?> json) =>
      LookupSecretKeyRequest(secretKeyId: json["secret_key_id"] as String);
  @override
  Map<String, Object?> toJson() => {"secret_key_id": _encodeValue(secretKeyId)};
}

/// Typed Inttegro request parameters.
final class LookupUploadRequestRequest implements _InttegroValue {
  final String id;
  const LookupUploadRequestRequest({required this.id});
  factory LookupUploadRequestRequest.fromJson(Map<String, Object?> json) =>
      LookupUploadRequestRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": _encodeValue(id)};
}

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

/// Typed Inttegro domain value.
final class MessageTemplateEmailContent implements _InttegroValue {
  final String subject;
  final String html;
  final MessageTemplateMailbox? from;
  final MessageTemplateMailbox? replyTo;
  final MessageHeaders? headers;
  const MessageTemplateEmailContent({
    required this.subject,
    required this.html,
    this.from,
    this.replyTo,
    this.headers,
  });
  factory MessageTemplateEmailContent.fromJson(Map<String, Object?> json) =>
      MessageTemplateEmailContent(
        subject: json["subject"] as String,
        html: json["html"] as String,
        from: json["from"] == null
            ? null
            : MessageTemplateMailbox.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : MessageTemplateMailbox.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : MessageHeaders.fromJson(json["headers"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "subject": _encodeValue(subject),
        "html": _encodeValue(html),
        if (from != null) "from": _encodeValue(from),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
      };
}

/// Typed Inttegro request parameters.
final class MessageTemplateEmailContentInput implements _InttegroValue {
  final MessageTemplateMailboxInput? from;
  final MessageTemplateMailboxInput? replyTo;
  final MessageHeaders? headers;
  final String subject;
  final String html;
  const MessageTemplateEmailContentInput({
    this.from,
    this.replyTo,
    this.headers,
    required this.subject,
    required this.html,
  });
  factory MessageTemplateEmailContentInput.fromJson(
    Map<String, Object?> json,
  ) =>
      MessageTemplateEmailContentInput(
        from: json["from"] == null
            ? null
            : MessageTemplateMailboxInput.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : MessageTemplateMailboxInput.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : MessageHeaders.fromJson(json["headers"]),
        subject: json["subject"] as String,
        html: json["html"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (from != null) "from": _encodeValue(from),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
        "subject": _encodeValue(subject),
        "html": _encodeValue(html),
      };
}

/// Typed Inttegro request parameters.
final class MessageTemplateIDRequest implements _InttegroValue {
  final String id;
  const MessageTemplateIDRequest({required this.id});
  factory MessageTemplateIDRequest.fromJson(Map<String, Object?> json) =>
      MessageTemplateIDRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": _encodeValue(id)};
}

/// Typed Inttegro domain value.
final class MessageTemplateMailbox implements _InttegroValue {
  final String address;
  final String? name;
  const MessageTemplateMailbox({required this.address, this.name});
  factory MessageTemplateMailbox.fromJson(Map<String, Object?> json) =>
      MessageTemplateMailbox(
        address: json["address"] as String,
        name: json["name"] == null ? null : json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": _encodeValue(address),
        if (name != null) "name": _encodeValue(name),
      };
}

/// Typed Inttegro request parameters.
final class MessageTemplateMailboxInput implements _InttegroValue {
  final String? name;
  final String address;
  const MessageTemplateMailboxInput({this.name, required this.address});
  factory MessageTemplateMailboxInput.fromJson(Map<String, Object?> json) =>
      MessageTemplateMailboxInput(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        "address": _encodeValue(address),
      };
}

/// Typed Inttegro domain value.
final class MessageTemplatePreview implements _InttegroValue {
  final MessageTemplate messageTemplate;
  final RenderedMessageTemplate rendered;
  const MessageTemplatePreview({
    required this.messageTemplate,
    required this.rendered,
  });
  factory MessageTemplatePreview.fromJson(Map<String, Object?> json) =>
      MessageTemplatePreview(
        messageTemplate: MessageTemplate.fromJson(
          (json["message_template"] as Map).cast<String, Object?>(),
        ),
        rendered: RenderedMessageTemplate.fromJson(
          (json["rendered"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": _encodeValue(messageTemplate),
        "rendered": _encodeValue(rendered),
      };
}

/// Typed Inttegro request parameters.
final class MessageTemplateReferenceInput implements _InttegroValue {
  final JsonData? variables;
  final String templateId;
  const MessageTemplateReferenceInput({
    this.variables,
    required this.templateId,
  });
  factory MessageTemplateReferenceInput.fromJson(Map<String, Object?> json) =>
      MessageTemplateReferenceInput(
        variables: json["variables"] == null
            ? null
            : JsonData.fromJson(json["variables"]),
        templateId: json["template_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (variables != null) "variables": _encodeValue(variables),
        "template_id": _encodeValue(templateId),
      };
}

/// Typed Inttegro domain value.
final class MessageTemplateSMSContent implements _InttegroValue {
  final String messageTemplate;
  const MessageTemplateSMSContent({required this.messageTemplate});
  factory MessageTemplateSMSContent.fromJson(Map<String, Object?> json) =>
      MessageTemplateSMSContent(
        messageTemplate: json["message_template"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": _encodeValue(messageTemplate),
      };
}

/// Typed Inttegro request parameters.
final class MessageTemplateSMSContentInput implements _InttegroValue {
  final String messageTemplate;
  const MessageTemplateSMSContentInput({required this.messageTemplate});
  factory MessageTemplateSMSContentInput.fromJson(Map<String, Object?> json) =>
      MessageTemplateSMSContentInput(
        messageTemplate: json["message_template"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": _encodeValue(messageTemplate),
      };
}

/// Typed Inttegro domain value.
final class MessageTemplateSafetyResult implements _InttegroValue {
  final String contentHash;
  final List<MessageTemplateScannedLink>? links;
  final String normalizedText;
  final String? quarantineNotes;
  final List<String>? reasonCodes;
  final String? sanitizedHtml;
  final String scanner;
  final ContentSafetyStatus status;
  const MessageTemplateSafetyResult({
    required this.contentHash,
    this.links,
    required this.normalizedText,
    this.quarantineNotes,
    this.reasonCodes,
    this.sanitizedHtml,
    required this.scanner,
    required this.status,
  });
  factory MessageTemplateSafetyResult.fromJson(Map<String, Object?> json) =>
      MessageTemplateSafetyResult(
        contentHash: json["content_hash"] as String,
        links: json["links"] == null
            ? null
            : (json["links"] as List)
                .map(
                  (item) => MessageTemplateScannedLink.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        normalizedText: json["normalized_text"] as String,
        quarantineNotes: json["quarantine_notes"] == null
            ? null
            : json["quarantine_notes"] as String,
        reasonCodes: json["reason_codes"] == null
            ? null
            : (json["reason_codes"] as List)
                .map((item) => item as String)
                .toList(),
        sanitizedHtml: json["sanitized_html"] == null
            ? null
            : json["sanitized_html"] as String,
        scanner: json["scanner"] as String,
        status: ContentSafetyStatus.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "content_hash": _encodeValue(contentHash),
        if (links != null) "links": _encodeValue(links),
        "normalized_text": _encodeValue(normalizedText),
        if (quarantineNotes != null)
          "quarantine_notes": _encodeValue(quarantineNotes),
        if (reasonCodes != null) "reason_codes": _encodeValue(reasonCodes),
        if (sanitizedHtml != null)
          "sanitized_html": _encodeValue(sanitizedHtml),
        "scanner": _encodeValue(scanner),
        "status": _encodeValue(status),
      };
}

/// Typed Inttegro domain value.
final class MessageTemplateScannedLink implements _InttegroValue {
  final String? host;
  final String raw;
  final String? reason;
  final String scheme;
  final String status;
  const MessageTemplateScannedLink({
    this.host,
    required this.raw,
    this.reason,
    required this.scheme,
    required this.status,
  });
  factory MessageTemplateScannedLink.fromJson(Map<String, Object?> json) =>
      MessageTemplateScannedLink(
        host: json["host"] == null ? null : json["host"] as String,
        raw: json["raw"] as String,
        reason: json["reason"] == null ? null : json["reason"] as String,
        scheme: json["scheme"] as String,
        status: json["status"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (host != null) "host": _encodeValue(host),
        "raw": _encodeValue(raw),
        if (reason != null) "reason": _encodeValue(reason),
        "scheme": _encodeValue(scheme),
        "status": _encodeValue(status),
      };
}

/// Typed Inttegro domain value.
final class MessageTemplateVariable implements _InttegroValue {
  final String? about;
  final Object? defaultValue;
  final List<MessageTemplateVariableItem>? items;
  final String name;
  final bool requiredValue;
  final MessageTemplateVariableType type;
  const MessageTemplateVariable({
    this.about,
    this.defaultValue,
    this.items,
    required this.name,
    required this.requiredValue,
    required this.type,
  });
  factory MessageTemplateVariable.fromJson(Map<String, Object?> json) =>
      MessageTemplateVariable(
        about: json["about"] == null ? null : json["about"] as String,
        defaultValue: json["default"],
        items: json["items"] == null
            ? null
            : (json["items"] as List)
                .map(
                  (item) => MessageTemplateVariableItem.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        name: json["name"] as String,
        requiredValue: json["required"] as bool,
        type: MessageTemplateVariableType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (defaultValue != null) "default": _encodeValue(defaultValue),
        if (items != null) "items": _encodeValue(items),
        "name": _encodeValue(name),
        "required": _encodeValue(requiredValue),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro request parameters.
final class MessageTemplateVariableInput implements _InttegroValue {
  final bool? requiredValue;
  final Object? defaultValue;
  final String? about;
  final List<MessageTemplateVariableItemInput>? items;
  final String name;
  final MessageTemplateVariableType type;
  const MessageTemplateVariableInput({
    this.requiredValue,
    this.defaultValue,
    this.about,
    this.items,
    required this.name,
    required this.type,
  });
  factory MessageTemplateVariableInput.fromJson(Map<String, Object?> json) =>
      MessageTemplateVariableInput(
        requiredValue:
            json["required"] == null ? null : json["required"] as bool,
        defaultValue: json["default"],
        about: json["about"] == null ? null : json["about"] as String,
        items: json["items"] == null
            ? null
            : (json["items"] as List)
                .map(
                  (item) => MessageTemplateVariableItemInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        name: json["name"] as String,
        type: MessageTemplateVariableType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (requiredValue != null) "required": _encodeValue(requiredValue),
        if (defaultValue != null) "default": _encodeValue(defaultValue),
        if (about != null) "about": _encodeValue(about),
        if (items != null) "items": _encodeValue(items),
        "name": _encodeValue(name),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class MessageTemplateVariableItem implements _InttegroValue {
  final String? about;
  final Object? defaultValue;
  final String name;
  final bool requiredValue;
  final MessageTemplateVariableItemType type;
  const MessageTemplateVariableItem({
    this.about,
    this.defaultValue,
    required this.name,
    required this.requiredValue,
    required this.type,
  });
  factory MessageTemplateVariableItem.fromJson(Map<String, Object?> json) =>
      MessageTemplateVariableItem(
        about: json["about"] == null ? null : json["about"] as String,
        defaultValue: json["default"],
        name: json["name"] as String,
        requiredValue: json["required"] as bool,
        type: MessageTemplateVariableItemType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (defaultValue != null) "default": _encodeValue(defaultValue),
        "name": _encodeValue(name),
        "required": _encodeValue(requiredValue),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro request parameters.
final class MessageTemplateVariableItemInput implements _InttegroValue {
  final String? about;
  final Object? defaultValue;
  final bool? requiredValue;
  final String name;
  final MessageTemplateVariableItemType type;
  const MessageTemplateVariableItemInput({
    this.about,
    this.defaultValue,
    this.requiredValue,
    required this.name,
    required this.type,
  });
  factory MessageTemplateVariableItemInput.fromJson(
    Map<String, Object?> json,
  ) =>
      MessageTemplateVariableItemInput(
        about: json["about"] == null ? null : json["about"] as String,
        defaultValue: json["default"],
        requiredValue:
            json["required"] == null ? null : json["required"] as bool,
        name: json["name"] as String,
        type: MessageTemplateVariableItemType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (defaultValue != null) "default": _encodeValue(defaultValue),
        if (requiredValue != null) "required": _encodeValue(requiredValue),
        "name": _encodeValue(name),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class MessageTemplatesPage implements _InttegroValue {
  final int number;
  final int size;
  final List<MessageTemplate> messageTemplates;
  const MessageTemplatesPage({
    required this.number,
    required this.size,
    required this.messageTemplates,
  });
  factory MessageTemplatesPage.fromJson(Map<String, Object?> json) =>
      MessageTemplatesPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        messageTemplates: (json["message_templates"] as List)
            .map(
              (item) => MessageTemplate.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "message_templates": _encodeValue(messageTemplates),
      };
}

/// Typed Inttegro domain value.
final class OTPTransaction implements _InttegroValue {
  final String? cancelReason;
  final DateTime? canceledAt;
  final DateTime expiresAt;
  final String fullMessage;
  final String id;
  final DateTime initiatedAt;
  final OTPStatus status;
  final OTPTransmission? transmission;
  const OTPTransaction({
    this.cancelReason,
    this.canceledAt,
    required this.expiresAt,
    required this.fullMessage,
    required this.id,
    required this.initiatedAt,
    required this.status,
    this.transmission,
  });
  factory OTPTransaction.fromJson(Map<String, Object?> json) => OTPTransaction(
        cancelReason: json["cancel_reason"] == null
            ? null
            : json["cancel_reason"] as String,
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        expiresAt: _decodeDateTime(json["expires_at"]),
        fullMessage: json["full_message"] as String,
        id: json["id"] as String,
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        status: OTPStatus.fromJson(json["status"]),
        transmission: json["transmission"] == null
            ? null
            : OTPTransmission.fromJson(
                (json["transmission"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (cancelReason != null) "cancel_reason": _encodeValue(cancelReason),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        "expires_at": _encodeValue(expiresAt),
        "full_message": _encodeValue(fullMessage),
        "id": _encodeValue(id),
        "initiated_at": _encodeValue(initiatedAt),
        "status": _encodeValue(status),
        if (transmission != null) "transmission": _encodeValue(transmission),
      };
}

/// Typed Inttegro domain value.
final class OTPTransmission implements _InttegroValue {
  final String recipient;
  final String senderId;
  final DateTime? sentAt;
  final String? sentVia;
  final OTPTransmissionStatus? status;
  const OTPTransmission({
    required this.recipient,
    required this.senderId,
    this.sentAt,
    this.sentVia,
    this.status,
  });
  factory OTPTransmission.fromJson(Map<String, Object?> json) =>
      OTPTransmission(
        recipient: json["recipient"] as String,
        senderId: json["sender_id"] as String,
        sentAt:
            json["sent_at"] == null ? null : _decodeDateTime(json["sent_at"]),
        sentVia: json["sent_via"] == null ? null : json["sent_via"] as String,
        status: json["status"] == null
            ? null
            : OTPTransmissionStatus.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "recipient": _encodeValue(recipient),
        "sender_id": _encodeValue(senderId),
        if (sentAt != null) "sent_at": _encodeValue(sentAt),
        if (sentVia != null) "sent_via": _encodeValue(sentVia),
        if (status != null) "status": _encodeValue(status),
      };
}

/// Typed Inttegro domain value.
final class OTPVerification implements _InttegroValue {
  final OTPTransaction transaction;
  final OTPVerificationAttempt verificationAttempt;
  const OTPVerification({
    required this.transaction,
    required this.verificationAttempt,
  });
  factory OTPVerification.fromJson(Map<String, Object?> json) =>
      OTPVerification(
        transaction: OTPTransaction.fromJson(
          (json["transaction"] as Map).cast<String, Object?>(),
        ),
        verificationAttempt: OTPVerificationAttempt.fromJson(
          (json["verification_attempt"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "transaction": _encodeValue(transaction),
        "verification_attempt": _encodeValue(verificationAttempt),
      };
}

/// Typed Inttegro domain value.
final class OTPVerificationAttempt implements _InttegroValue {
  final DateTime attemptedAt;
  final String id;
  final String presentedToken;
  final String recipient;
  final OTPVerificationAttemptResult result;
  const OTPVerificationAttempt({
    required this.attemptedAt,
    required this.id,
    required this.presentedToken,
    required this.recipient,
    required this.result,
  });
  factory OTPVerificationAttempt.fromJson(Map<String, Object?> json) =>
      OTPVerificationAttempt(
        attemptedAt: _decodeDateTime(json["attempted_at"]),
        id: json["id"] as String,
        presentedToken: json["presented_token"] as String,
        recipient: json["recipient"] as String,
        result: OTPVerificationAttemptResult.fromJson(
          (json["result"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "attempted_at": _encodeValue(attemptedAt),
        "id": _encodeValue(id),
        "presented_token": _encodeValue(presentedToken),
        "recipient": _encodeValue(recipient),
        "result": _encodeValue(result),
      };
}

/// Typed Inttegro domain value.
final class OTPVerificationAttemptResult implements _InttegroValue {
  final String? detail;
  final OTPVerificationVerdict verdict;
  const OTPVerificationAttemptResult({this.detail, required this.verdict});
  factory OTPVerificationAttemptResult.fromJson(Map<String, Object?> json) =>
      OTPVerificationAttemptResult(
        detail: json["detail"] == null ? null : json["detail"] as String,
        verdict: OTPVerificationVerdict.fromJson(json["verdict"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (detail != null) "detail": _encodeValue(detail),
        "verdict": _encodeValue(verdict),
      };
}

/// Typed Inttegro domain value.
final class Order implements _InttegroValue {
  final DateTime? canceledAt;
  final OrderCheckoutSettings? checkoutSettings;
  final DateTime? completedAt;
  final OrderCreatedFrom? createdFrom;
  final CustomData? customData;
  final OrderCustomer customer;
  final DateTime? expiresAt;
  final String id;
  final DateTime initiatedAt;
  final OrderInvoice? invoice;
  final String? number;
  final String? receiptNumber;
  final List<Refund>? refunds;
  final InvoiceSettings? invoiceSettings;
  final OrderStatus status;
  final DateTime? sealedAt;
  final OrderLineItemGroup? lineItemGroup;
  final Payment? payment;
  final DateTime? paidAt;
  final DateTime? paymentDueAt;
  final String? reference;
  const Order({
    this.canceledAt,
    this.checkoutSettings,
    this.completedAt,
    this.createdFrom,
    this.customData,
    required this.customer,
    this.expiresAt,
    required this.id,
    required this.initiatedAt,
    this.invoice,
    this.number,
    this.receiptNumber,
    this.refunds,
    this.invoiceSettings,
    required this.status,
    this.sealedAt,
    this.lineItemGroup,
    this.payment,
    this.paidAt,
    this.paymentDueAt,
    this.reference,
  });
  factory Order.fromJson(Map<String, Object?> json) => Order(
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        checkoutSettings: json["checkout_settings"] == null
            ? null
            : OrderCheckoutSettings.fromJson(
                (json["checkout_settings"] as Map).cast<String, Object?>(),
              ),
        completedAt: json["completed_at"] == null
            ? null
            : _decodeDateTime(json["completed_at"]),
        createdFrom: json["created_from"] == null
            ? null
            : OrderCreatedFrom.fromJson(
                (json["created_from"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        customer: OrderCustomer.fromJson(
          (json["customer"] as Map).cast<String, Object?>(),
        ),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        id: json["id"] as String,
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        invoice: json["invoice"] == null
            ? null
            : OrderInvoice.fromJson(
                (json["invoice"] as Map).cast<String, Object?>(),
              ),
        number: json["number"] == null ? null : json["number"] as String,
        receiptNumber: json["receipt_number"] == null
            ? null
            : json["receipt_number"] as String,
        refunds: json["refunds"] == null
            ? null
            : (json["refunds"] as List)
                .map(
                  (item) =>
                      Refund.fromJson((item as Map).cast<String, Object?>()),
                )
                .toList(),
        invoiceSettings: json["invoice_settings"] == null
            ? null
            : InvoiceSettings.fromJson(
                (json["invoice_settings"] as Map).cast<String, Object?>(),
              ),
        status: OrderStatus.fromJson(json["status"]),
        sealedAt: json["sealed_at"] == null
            ? null
            : _decodeDateTime(json["sealed_at"]),
        lineItemGroup: json["line_item_group"] == null
            ? null
            : OrderLineItemGroup.fromJson(
                (json["line_item_group"] as Map).cast<String, Object?>(),
              ),
        payment: json["payment"] == null
            ? null
            : Payment.fromJson(
                (json["payment"] as Map).cast<String, Object?>()),
        paidAt:
            json["paid_at"] == null ? null : _decodeDateTime(json["paid_at"]),
        paymentDueAt: json["payment_due_at"] == null
            ? null
            : _decodeDateTime(json["payment_due_at"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        if (checkoutSettings != null)
          "checkout_settings": _encodeValue(checkoutSettings),
        if (completedAt != null) "completed_at": _encodeValue(completedAt),
        if (createdFrom != null) "created_from": _encodeValue(createdFrom),
        if (customData != null) "custom_data": _encodeValue(customData),
        "customer": _encodeValue(customer),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "id": _encodeValue(id),
        "initiated_at": _encodeValue(initiatedAt),
        if (invoice != null) "invoice": _encodeValue(invoice),
        if (number != null) "number": _encodeValue(number),
        if (receiptNumber != null)
          "receipt_number": _encodeValue(receiptNumber),
        if (refunds != null) "refunds": _encodeValue(refunds),
        if (invoiceSettings != null)
          "invoice_settings": _encodeValue(invoiceSettings),
        "status": _encodeValue(status),
        if (sealedAt != null) "sealed_at": _encodeValue(sealedAt),
        if (lineItemGroup != null)
          "line_item_group": _encodeValue(lineItemGroup),
        if (payment != null) "payment": _encodeValue(payment),
        if (paidAt != null) "paid_at": _encodeValue(paidAt),
        if (paymentDueAt != null) "payment_due_at": _encodeValue(paymentDueAt),
        if (reference != null) "reference": _encodeValue(reference),
      };
}

/// Typed Inttegro domain value.
final class OrderAddress implements _InttegroValue {
  final String? name;
  final String? phoneNumber;
  final String? line1;
  final String? line2;
  final String? city;
  final String? region;
  final String? postCode;
  final String country;
  const OrderAddress({
    this.name,
    this.phoneNumber,
    this.line1,
    this.line2,
    this.city,
    this.region,
    this.postCode,
    required this.country,
  });
  factory OrderAddress.fromJson(Map<String, Object?> json) => OrderAddress(
        name: json["name"] == null ? null : json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        line1: json["line1"] == null ? null : json["line1"] as String,
        line2: json["line2"] == null ? null : json["line2"] as String,
        city: json["city"] == null ? null : json["city"] as String,
        region: json["region"] == null ? null : json["region"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        country: json["country"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (line1 != null) "line1": _encodeValue(line1),
        if (line2 != null) "line2": _encodeValue(line2),
        if (city != null) "city": _encodeValue(city),
        if (region != null) "region": _encodeValue(region),
        if (postCode != null) "post_code": _encodeValue(postCode),
        "country": _encodeValue(country),
      };
}

/// Typed Inttegro domain value.
final class OrderCheckoutSettings implements _InttegroValue {
  final String? redirectUrl;
  final String? cancelUrl;
  const OrderCheckoutSettings({this.redirectUrl, this.cancelUrl});
  factory OrderCheckoutSettings.fromJson(Map<String, Object?> json) =>
      OrderCheckoutSettings(
        redirectUrl: json["redirect_url"] == null
            ? null
            : json["redirect_url"] as String,
        cancelUrl:
            json["cancel_url"] == null ? null : json["cancel_url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (redirectUrl != null) "redirect_url": _encodeValue(redirectUrl),
        if (cancelUrl != null) "cancel_url": _encodeValue(cancelUrl),
      };
}

/// Typed Inttegro domain value.
final class OrderCreatedFrom implements _InttegroValue {
  final String? source;
  final OrderCreatedFromResourceType? resourceType;
  final String? resourceId;
  const OrderCreatedFrom({this.source, this.resourceType, this.resourceId});
  factory OrderCreatedFrom.fromJson(Map<String, Object?> json) =>
      OrderCreatedFrom(
        source: json["source"] == null ? null : json["source"] as String,
        resourceType: json["resource_type"] == null
            ? null
            : OrderCreatedFromResourceType.fromJson(json["resource_type"]),
        resourceId:
            json["resource_id"] == null ? null : json["resource_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (source != null) "source": _encodeValue(source),
        if (resourceType != null) "resource_type": _encodeValue(resourceType),
        if (resourceId != null) "resource_id": _encodeValue(resourceId),
      };
}

/// Typed Inttegro domain value.
final class OrderCustomer implements _InttegroValue {
  final String id;
  final bool guest;
  final String name;
  final String? emailAddress;
  final String? phoneNumber;
  final OrderAddress? billingAddress;
  final OrderAddress? shippingAddress;
  const OrderCustomer({
    required this.id,
    required this.guest,
    required this.name,
    this.emailAddress,
    this.phoneNumber,
    this.billingAddress,
    this.shippingAddress,
  });
  factory OrderCustomer.fromJson(Map<String, Object?> json) => OrderCustomer(
        id: json["id"] as String,
        guest: json["guest"] as bool,
        name: json["name"] as String,
        emailAddress: json["email_address"] == null
            ? null
            : json["email_address"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        billingAddress: json["billing_address"] == null
            ? null
            : OrderAddress.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        shippingAddress: json["shipping_address"] == null
            ? null
            : OrderAddress.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "guest": _encodeValue(guest),
        "name": _encodeValue(name),
        if (emailAddress != null) "email_address": _encodeValue(emailAddress),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (billingAddress != null)
          "billing_address": _encodeValue(billingAddress),
        if (shippingAddress != null)
          "shipping_address": _encodeValue(shippingAddress),
      };
}

/// Typed Inttegro domain value.
final class OrderDocumentDelivery implements _InttegroValue {
  final List<OrderDocumentDeliveryAttempt>? deliveries;
  final OrderDocumentKind? documentKind;
  final String? documentUrl;
  final List<String>? failedChannels;
  final List<OrderDocumentDeliveryFailure>? failures;
  final List<String>? sentChannels;
  const OrderDocumentDelivery({
    this.deliveries,
    this.documentKind,
    this.documentUrl,
    this.failedChannels,
    this.failures,
    this.sentChannels,
  });
  factory OrderDocumentDelivery.fromJson(Map<String, Object?> json) =>
      OrderDocumentDelivery(
        deliveries: json["deliveries"] == null
            ? null
            : (json["deliveries"] as List)
                .map(
                  (item) => OrderDocumentDeliveryAttempt.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        documentKind: json["document_kind"] == null
            ? null
            : OrderDocumentKind.fromJson(json["document_kind"]),
        documentUrl: json["document_url"] == null
            ? null
            : json["document_url"] as String,
        failedChannels: json["failed_channels"] == null
            ? null
            : (json["failed_channels"] as List)
                .map((item) => item as String)
                .toList(),
        failures: json["failures"] == null
            ? null
            : (json["failures"] as List)
                .map(
                  (item) => OrderDocumentDeliveryFailure.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        sentChannels: json["sent_channels"] == null
            ? null
            : (json["sent_channels"] as List)
                .map((item) => item as String)
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (deliveries != null) "deliveries": _encodeValue(deliveries),
        if (documentKind != null) "document_kind": _encodeValue(documentKind),
        if (documentUrl != null) "document_url": _encodeValue(documentUrl),
        if (failedChannels != null)
          "failed_channels": _encodeValue(failedChannels),
        if (failures != null) "failures": _encodeValue(failures),
        if (sentChannels != null) "sent_channels": _encodeValue(sentChannels),
      };
}

/// Typed Inttegro domain value.
final class OrderDocumentDeliveryAttempt implements _InttegroValue {
  final DeliveryChannel? channel;
  final String? chimeId;
  const OrderDocumentDeliveryAttempt({this.channel, this.chimeId});
  factory OrderDocumentDeliveryAttempt.fromJson(Map<String, Object?> json) =>
      OrderDocumentDeliveryAttempt(
        channel: json["channel"] == null
            ? null
            : DeliveryChannel.fromJson(json["channel"]),
        chimeId: json["chime_id"] == null ? null : json["chime_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (channel != null) "channel": _encodeValue(channel),
        if (chimeId != null) "chime_id": _encodeValue(chimeId),
      };
}

/// Typed Inttegro domain value.
final class OrderDocumentDeliveryFailure implements _InttegroValue {
  final DeliveryChannel? channel;
  final String? error;
  const OrderDocumentDeliveryFailure({this.channel, this.error});
  factory OrderDocumentDeliveryFailure.fromJson(Map<String, Object?> json) =>
      OrderDocumentDeliveryFailure(
        channel: json["channel"] == null
            ? null
            : DeliveryChannel.fromJson(json["channel"]),
        error: json["error"] == null ? null : json["error"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (channel != null) "channel": _encodeValue(channel),
        if (error != null) "error": _encodeValue(error),
      };
}

/// Typed Inttegro request parameters.
final class OrderDocumentDeliveryRequest implements _InttegroValue {
  final String orderId;
  const OrderDocumentDeliveryRequest({required this.orderId});
  factory OrderDocumentDeliveryRequest.fromJson(Map<String, Object?> json) =>
      OrderDocumentDeliveryRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": _encodeValue(orderId)};
}

/// Typed Inttegro domain value.
final class OrderDocumentDeliveryResult implements _InttegroValue {
  final OrderDocumentDelivery? delivery;
  final Error? error;
  final Order? order;
  const OrderDocumentDeliveryResult({this.delivery, this.error, this.order});
  factory OrderDocumentDeliveryResult.fromJson(Map<String, Object?> json) =>
      OrderDocumentDeliveryResult(
        delivery: json["delivery"] == null
            ? null
            : OrderDocumentDelivery.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        error: json["error"] == null
            ? null
            : Error.fromJson((json["error"] as Map).cast<String, Object?>()),
        order: json["order"] == null
            ? null
            : Order.fromJson((json["order"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        if (delivery != null) "delivery": _encodeValue(delivery),
        if (error != null) "error": _encodeValue(error),
        if (order != null) "order": _encodeValue(order),
      };
}

/// Typed Inttegro domain value.
final class OrderDocumentFormat implements _InttegroValue {
  final String url;
  const OrderDocumentFormat({required this.url});
  factory OrderDocumentFormat.fromJson(Map<String, Object?> json) =>
      OrderDocumentFormat(url: json["url"] as String);
  @override
  Map<String, Object?> toJson() => {"url": _encodeValue(url)};
}

/// Typed discount line item returned by an order.
final class OrderDiscountLineItem implements _InttegroValue {
  final String type;
  final OrderDiscount discount;
  const OrderDiscountLineItem({required this.type, required this.discount});
  factory OrderDiscountLineItem.fromJson(Map<String, Object?> json) =>
      OrderDiscountLineItem(
        type: json["type"] as String,
        discount: OrderDiscount.fromJson(
          (json["discount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "discount": _encodeValue(discount),
      };
}

/// Discount marker returned by the API.
final class OrderDiscount implements _InttegroValue {
  const OrderDiscount();
  factory OrderDiscount.fromJson(Map<String, Object?> json) =>
      const OrderDiscount();
  @override
  Map<String, Object?> toJson() => const {};
}

/// Typed Inttegro domain value.
final class OrderFeeLineItem implements _InttegroValue {
  final String type;
  final OrderFeeLineItemFee fee;
  const OrderFeeLineItem({required this.type, required this.fee});
  factory OrderFeeLineItem.fromJson(Map<String, Object?> json) =>
      OrderFeeLineItem(
        type: json["type"] as String,
        fee: OrderFeeLineItemFee.fromJson(
          (json["fee"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "fee": _encodeValue(fee),
      };
}

/// Typed Inttegro domain value.
final class OrderFeeLineItemFee implements _InttegroValue {
  final String id;
  final String? description;
  final String? taxCode;
  final Amount amount;
  final String label;
  const OrderFeeLineItemFee({
    required this.id,
    this.description,
    this.taxCode,
    required this.amount,
    required this.label,
  });
  factory OrderFeeLineItemFee.fromJson(Map<String, Object?> json) =>
      OrderFeeLineItemFee(
        id: json["id"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        amount: Amount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
        label: json["label"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (description != null) "description": _encodeValue(description),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        "amount": _encodeValue(amount),
        "label": _encodeValue(label),
      };
}

/// Typed Inttegro domain value.
final class OrderInvoice implements _InttegroValue {
  final String? number;
  final OrderInvoiceFormat format;
  const OrderInvoice({this.number, required this.format});
  factory OrderInvoice.fromJson(Map<String, Object?> json) => OrderInvoice(
        number: json["number"] == null ? null : json["number"] as String,
        format: OrderInvoiceFormat.fromJson(
          (json["format"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        "format": _encodeValue(format),
      };
}

/// Typed Inttegro domain value.
final class OrderInvoiceFormat implements _InttegroValue {
  final OrderDocumentFormat web;
  final OrderDocumentFormat pdf;
  final OrderDocumentFormat? receipt;
  const OrderInvoiceFormat({
    required this.web,
    required this.pdf,
    this.receipt,
  });
  factory OrderInvoiceFormat.fromJson(Map<String, Object?> json) =>
      OrderInvoiceFormat(
        web: OrderDocumentFormat.fromJson(
          (json["web"] as Map).cast<String, Object?>(),
        ),
        pdf: OrderDocumentFormat.fromJson(
          (json["pdf"] as Map).cast<String, Object?>(),
        ),
        receipt: json["receipt"] == null
            ? null
            : OrderDocumentFormat.fromJson(
                (json["receipt"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "web": _encodeValue(web),
        "pdf": _encodeValue(pdf),
        if (receipt != null) "receipt": _encodeValue(receipt),
      };
}

/// Typed Inttegro domain value.
final class OrderLineItemGroup implements _InttegroValue {
  final List<OrderLineItem> lineItems;
  final Amount total;
  const OrderLineItemGroup({required this.lineItems, required this.total});
  factory OrderLineItemGroup.fromJson(Map<String, Object?> json) =>
      OrderLineItemGroup(
        lineItems: (json["line_items"] as List)
            .map((item) => OrderLineItem.fromJson(item))
            .toList(),
        total: Amount.fromJson((json["total"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        "line_items": _encodeValue(lineItems),
        "total": _encodeValue(total),
      };
}

/// Typed Inttegro domain value.
final class OrderPage implements _InttegroValue {
  final int number;
  final int size;
  final List<Order> orders;
  const OrderPage({
    required this.number,
    required this.size,
    required this.orders,
  });
  factory OrderPage.fromJson(Map<String, Object?> json) => OrderPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        orders: (json["orders"] as List)
            .map(
              (item) => Order.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "orders": _encodeValue(orders),
      };
}

/// Typed Inttegro request parameters.
final class OrderPayoutSettingsRequest implements _InttegroValue {
  final OrderPayoutSettingsRequestDestination? destination;
  final bool? enableFx;
  const OrderPayoutSettingsRequest({this.destination, this.enableFx});
  factory OrderPayoutSettingsRequest.fromJson(Map<String, Object?> json) =>
      OrderPayoutSettingsRequest(
        destination: json["destination"] == null
            ? null
            : OrderPayoutSettingsRequestDestination.fromJson(
                (json["destination"] as Map).cast<String, Object?>(),
              ),
        enableFx: json["enable_fx"] == null ? null : json["enable_fx"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (destination != null) "destination": _encodeValue(destination),
        if (enableFx != null) "enable_fx": _encodeValue(enableFx),
      };
}

/// Typed Inttegro request parameters.
final class OrderPayoutSettingsRequestDestination implements _InttegroValue {
  final String financialAccountId;
  const OrderPayoutSettingsRequestDestination({
    required this.financialAccountId,
  });
  factory OrderPayoutSettingsRequestDestination.fromJson(
    Map<String, Object?> json,
  ) =>
      OrderPayoutSettingsRequestDestination(
        financialAccountId: json["financial_account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "financial_account_id": _encodeValue(financialAccountId),
      };
}

/// Typed Inttegro domain value.
final class OrderProductLineItem implements _InttegroValue {
  final String type;
  final OrderProductLineItemProduct product;
  const OrderProductLineItem({required this.type, required this.product});
  factory OrderProductLineItem.fromJson(Map<String, Object?> json) =>
      OrderProductLineItem(
        type: json["type"] as String,
        product: OrderProductLineItemProduct.fromJson(
          (json["product"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "product": _encodeValue(product),
      };
}

/// Typed Inttegro domain value.
final class OrderProductLineItemProduct implements _InttegroValue {
  final String id;
  final String? productId;
  final String? priceId;
  final String? reference;
  final String? about;
  final CustomData? customData;
  final String? taxCode;
  final String name;
  final String? category;
  final String? type;
  final Price price;
  final int quantity;
  const OrderProductLineItemProduct({
    required this.id,
    this.productId,
    this.priceId,
    this.reference,
    this.about,
    this.customData,
    this.taxCode,
    required this.name,
    this.category,
    this.type,
    required this.price,
    required this.quantity,
  });
  factory OrderProductLineItemProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      OrderProductLineItemProduct(
        id: json["id"] as String,
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        priceId: json["price_id"] == null ? null : json["price_id"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        name: json["name"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        type: json["type"] == null ? null : json["type"] as String,
        price: Price.fromJson((json["price"] as Map).cast<String, Object?>()),
        quantity: (json["quantity"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (productId != null) "product_id": _encodeValue(productId),
        if (priceId != null) "price_id": _encodeValue(priceId),
        if (reference != null) "reference": _encodeValue(reference),
        if (about != null) "about": _encodeValue(about),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        "name": _encodeValue(name),
        if (category != null) "category": _encodeValue(category),
        if (type != null) "type": _encodeValue(type),
        "price": _encodeValue(price),
        "quantity": _encodeValue(quantity),
      };
}

/// Typed Inttegro domain value.
final class OrderShippingLineItem implements _InttegroValue {
  final String type;
  final OrderShippingLineItemShipping shipping;
  const OrderShippingLineItem({required this.type, required this.shipping});
  factory OrderShippingLineItem.fromJson(Map<String, Object?> json) =>
      OrderShippingLineItem(
        type: json["type"] as String,
        shipping: OrderShippingLineItemShipping.fromJson(
          (json["shipping"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "shipping": _encodeValue(shipping),
      };
}

/// Typed Inttegro domain value.
final class OrderShippingLineItemShipping implements _InttegroValue {
  final String id;
  final String? taxCode;
  final String? label;
  final Amount fee;
  const OrderShippingLineItemShipping({
    required this.id,
    this.taxCode,
    this.label,
    required this.fee,
  });
  factory OrderShippingLineItemShipping.fromJson(Map<String, Object?> json) =>
      OrderShippingLineItemShipping(
        id: json["id"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        fee: Amount.fromJson((json["fee"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (label != null) "label": _encodeValue(label),
        "fee": _encodeValue(fee),
      };
}

/// Typed Inttegro request parameters.
final class PageBalanceTransactionsRequest implements _InttegroValue {
  final int pageNumber;
  final int pageSize;
  const PageBalanceTransactionsRequest({
    required this.pageNumber,
    required this.pageSize,
  });
  factory PageBalanceTransactionsRequest.fromJson(Map<String, Object?> json) =>
      PageBalanceTransactionsRequest(
        pageNumber: (json["page_number"] as num).toInt(),
        pageSize: (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "page_number": _encodeValue(pageNumber),
        "page_size": _encodeValue(pageSize),
      };
}

/// Typed Inttegro request parameters.
final class PageChimesRequest implements _InttegroValue {
  final String? customerId;
  final int? pageNumber;
  final int? pageSize;
  final String? recipient;
  const PageChimesRequest({
    this.customerId,
    this.pageNumber,
    this.pageSize,
    this.recipient,
  });
  factory PageChimesRequest.fromJson(Map<String, Object?> json) =>
      PageChimesRequest(
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        recipient:
            json["recipient"] == null ? null : json["recipient"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (customerId != null) "customer_id": _encodeValue(customerId),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        if (recipient != null) "recipient": _encodeValue(recipient),
      };
}

/// Typed Inttegro request parameters.
final class PageCustomersRequest implements _InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const PageCustomersRequest({this.pageSize, required this.pageNumber});
  factory PageCustomersRequest.fromJson(Map<String, Object?> json) =>
      PageCustomersRequest(
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        pageNumber: (json["page_number"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        "page_number": _encodeValue(pageNumber),
      };
}

/// Typed Inttegro request parameters.
final class PageFileLinksRequest implements _InttegroValue {
  final String? fileId;
  final FileLinkStatus? status;
  final int? pageNumber;
  final int? pageSize;
  const PageFileLinksRequest({
    this.fileId,
    this.status,
    this.pageNumber,
    this.pageSize,
  });
  factory PageFileLinksRequest.fromJson(Map<String, Object?> json) =>
      PageFileLinksRequest(
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        status: json["status"] == null
            ? null
            : FileLinkStatus.fromJson(json["status"]),
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (fileId != null) "file_id": _encodeValue(fileId),
        if (status != null) "status": _encodeValue(status),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
      };
}

/// Typed Inttegro request parameters.
final class PageFilesRequest implements _InttegroValue {
  final String? purpose;
  final FileStatus? status;
  final int? pageNumber;
  final int? pageSize;
  final DateTime? createdAfter;
  final DateTime? createdBefore;
  const PageFilesRequest({
    this.purpose,
    this.status,
    this.pageNumber,
    this.pageSize,
    this.createdAfter,
    this.createdBefore,
  });
  factory PageFilesRequest.fromJson(Map<String, Object?> json) =>
      PageFilesRequest(
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        status:
            json["status"] == null ? null : FileStatus.fromJson(json["status"]),
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        createdAfter: json["created_after"] == null
            ? null
            : _decodeDateTime(json["created_after"]),
        createdBefore: json["created_before"] == null
            ? null
            : _decodeDateTime(json["created_before"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (status != null) "status": _encodeValue(status),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        if (createdAfter != null) "created_after": _encodeValue(createdAfter),
        if (createdBefore != null)
          "created_before": _encodeValue(createdBefore),
      };
}

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

/// Typed Inttegro request parameters.
final class PageOrdersRequest implements _InttegroValue {
  final int? pageNumber;
  final String? customerId;
  final int pageSize;
  const PageOrdersRequest({
    this.pageNumber,
    this.customerId,
    required this.pageSize,
  });
  factory PageOrdersRequest.fromJson(Map<String, Object?> json) =>
      PageOrdersRequest(
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        pageSize: (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (customerId != null) "customer_id": _encodeValue(customerId),
        "page_size": _encodeValue(pageSize),
      };
}

/// Typed Inttegro request parameters.
final class PagePayoutsRequest implements _InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const PagePayoutsRequest({this.pageSize, required this.pageNumber});
  factory PagePayoutsRequest.fromJson(Map<String, Object?> json) =>
      PagePayoutsRequest(
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        pageNumber: (json["page_number"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        "page_number": _encodeValue(pageNumber),
      };
}

/// Typed Inttegro request parameters.
final class PageProductsRequest implements _InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const PageProductsRequest({this.pageSize, required this.pageNumber});
  factory PageProductsRequest.fromJson(Map<String, Object?> json) =>
      PageProductsRequest(
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        pageNumber: (json["page_number"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        "page_number": _encodeValue(pageNumber),
      };
}

/// Typed Inttegro request parameters.
final class PagePurchaseIntentsRequest implements _InttegroValue {
  final int pageNumber;
  final int pageSize;
  const PagePurchaseIntentsRequest({
    required this.pageNumber,
    required this.pageSize,
  });
  factory PagePurchaseIntentsRequest.fromJson(Map<String, Object?> json) =>
      PagePurchaseIntentsRequest(
        pageNumber: (json["page_number"] as num).toInt(),
        pageSize: (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "page_number": _encodeValue(pageNumber),
        "page_size": _encodeValue(pageSize),
      };
}

/// Typed Inttegro request parameters.
final class PageRefundsRequest implements _InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const PageRefundsRequest({this.pageSize, required this.pageNumber});
  factory PageRefundsRequest.fromJson(Map<String, Object?> json) =>
      PageRefundsRequest(
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        pageNumber: (json["page_number"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        "page_number": _encodeValue(pageNumber),
      };
}

/// Typed Inttegro request parameters.
final class PageSecretKeysRequest implements _InttegroValue {
  final int? page;
  final int? number;
  final int? size;
  const PageSecretKeysRequest({this.page, this.number, this.size});
  factory PageSecretKeysRequest.fromJson(Map<String, Object?> json) =>
      PageSecretKeysRequest(
        page: json["page"] == null ? null : (json["page"] as num).toInt(),
        number: json["number"] == null ? null : (json["number"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (page != null) "page": _encodeValue(page),
        if (number != null) "number": _encodeValue(number),
        if (size != null) "size": _encodeValue(size),
      };
}

/// Typed Inttegro request parameters.
final class PageUploadRequestsRequest implements _InttegroValue {
  final String? purpose;
  final UploadRequestStatus? status;
  final FileResourceInput? resource;
  final int? pageNumber;
  final int? pageSize;
  const PageUploadRequestsRequest({
    this.purpose,
    this.status,
    this.resource,
    this.pageNumber,
    this.pageSize,
  });
  factory PageUploadRequestsRequest.fromJson(Map<String, Object?> json) =>
      PageUploadRequestsRequest(
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        status: json["status"] == null
            ? null
            : UploadRequestStatus.fromJson(json["status"]),
        resource: json["resource"] == null
            ? null
            : FileResourceInput.fromJson(
                (json["resource"] as Map).cast<String, Object?>(),
              ),
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (status != null) "status": _encodeValue(status),
        if (resource != null) "resource": _encodeValue(resource),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
      };
}

/// Typed Inttegro request parameters.
final class PayOrderRequest implements _InttegroValue {
  final PaymentMethodDataInput? paymentMethodData;
  final String? paymentMethodId;
  final bool? paidOutOfBand;
  final String orderId;
  const PayOrderRequest({
    this.paymentMethodData,
    this.paymentMethodId,
    this.paidOutOfBand,
    required this.orderId,
  });
  factory PayOrderRequest.fromJson(Map<String, Object?> json) =>
      PayOrderRequest(
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : PaymentMethodDataInput.fromJson(
                (json["payment_method_data"] as Map).cast<String, Object?>(),
              ),
        paymentMethodId: json["payment_method_id"] == null
            ? null
            : json["payment_method_id"] as String,
        paidOutOfBand: json["paid_out_of_band"] == null
            ? null
            : json["paid_out_of_band"] as bool,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (paymentMethodData != null)
          "payment_method_data": _encodeValue(paymentMethodData),
        if (paymentMethodId != null)
          "payment_method_id": _encodeValue(paymentMethodId),
        if (paidOutOfBand != null)
          "paid_out_of_band": _encodeValue(paidOutOfBand),
        "order_id": _encodeValue(orderId),
      };
}

/// Typed Inttegro domain value.
final class Payment implements _InttegroValue {
  final String id;
  final PaymentStatus status;
  final String statementDescriptor;
  final Amount amount;
  final PaymentBillingDetails? billingDetails;
  final BalanceTransaction? balanceTransaction;
  final PaymentMethodSnapshot? paymentMethod;
  final PaymentCustomer? customer;
  final PaymentAttempt? latestAttempt;
  final PaymentNextAction? nextAction;
  final PaymentError? latestError;
  final DateTime initiatedAt;
  final DateTime? executedAt;
  final DateTime? paidAt;
  final DateTime? canceledAt;
  final DateTime? dueAt;
  final DateTime? expiredAt;
  final DateTime? failedAt;
  final bool? paidOffline;
  final List<String>? paymentMethodTypes;
  final PaymentPayoutConfiguration? payoutConfiguration;
  const Payment({
    required this.id,
    required this.status,
    required this.statementDescriptor,
    required this.amount,
    this.billingDetails,
    this.balanceTransaction,
    this.paymentMethod,
    this.customer,
    this.latestAttempt,
    this.nextAction,
    this.latestError,
    required this.initiatedAt,
    this.executedAt,
    this.paidAt,
    this.canceledAt,
    this.dueAt,
    this.expiredAt,
    this.failedAt,
    this.paidOffline,
    this.paymentMethodTypes,
    this.payoutConfiguration,
  });
  factory Payment.fromJson(Map<String, Object?> json) => Payment(
        id: json["id"] as String,
        status: PaymentStatus.fromJson(json["status"]),
        statementDescriptor: json["statement_descriptor"] as String,
        amount:
            Amount.fromJson((json["amount"] as Map).cast<String, Object?>()),
        billingDetails: json["billing_details"] == null
            ? null
            : PaymentBillingDetails.fromJson(
                (json["billing_details"] as Map).cast<String, Object?>(),
              ),
        balanceTransaction: json["balance_transaction"] == null
            ? null
            : BalanceTransaction.fromJson(
                (json["balance_transaction"] as Map).cast<String, Object?>(),
              ),
        paymentMethod: json["payment_method"] == null
            ? null
            : PaymentMethodSnapshot.fromJson(
                (json["payment_method"] as Map).cast<String, Object?>(),
              ),
        customer: json["customer"] == null
            ? null
            : PaymentCustomer.fromJson(
                (json["customer"] as Map).cast<String, Object?>(),
              ),
        latestAttempt: json["latest_attempt"] == null
            ? null
            : PaymentAttempt.fromJson(
                (json["latest_attempt"] as Map).cast<String, Object?>(),
              ),
        nextAction: json["next_action"] == null
            ? null
            : PaymentNextAction.fromJson(
                (json["next_action"] as Map).cast<String, Object?>(),
              ),
        latestError: json["latest_error"] == null
            ? null
            : PaymentError.fromJson(
                (json["latest_error"] as Map).cast<String, Object?>(),
              ),
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        paidAt:
            json["paid_at"] == null ? null : _decodeDateTime(json["paid_at"]),
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        dueAt: json["due_at"] == null ? null : _decodeDateTime(json["due_at"]),
        expiredAt: json["expired_at"] == null
            ? null
            : _decodeDateTime(json["expired_at"]),
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        paidOffline:
            json["paid_offline"] == null ? null : json["paid_offline"] as bool,
        paymentMethodTypes: json["payment_method_types"] == null
            ? null
            : (json["payment_method_types"] as List)
                .map((item) => item as String)
                .toList(),
        payoutConfiguration: json["payout_configuration"] == null
            ? null
            : PaymentPayoutConfiguration.fromJson(
                (json["payout_configuration"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "status": _encodeValue(status),
        "statement_descriptor": _encodeValue(statementDescriptor),
        "amount": _encodeValue(amount),
        if (billingDetails != null)
          "billing_details": _encodeValue(billingDetails),
        if (balanceTransaction != null)
          "balance_transaction": _encodeValue(balanceTransaction),
        if (paymentMethod != null)
          "payment_method": _encodeValue(paymentMethod),
        if (customer != null) "customer": _encodeValue(customer),
        if (latestAttempt != null)
          "latest_attempt": _encodeValue(latestAttempt),
        if (nextAction != null) "next_action": _encodeValue(nextAction),
        if (latestError != null) "latest_error": _encodeValue(latestError),
        "initiated_at": _encodeValue(initiatedAt),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        if (paidAt != null) "paid_at": _encodeValue(paidAt),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        if (dueAt != null) "due_at": _encodeValue(dueAt),
        if (expiredAt != null) "expired_at": _encodeValue(expiredAt),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        if (paidOffline != null) "paid_offline": _encodeValue(paidOffline),
        if (paymentMethodTypes != null)
          "payment_method_types": _encodeValue(paymentMethodTypes),
        if (payoutConfiguration != null)
          "payout_configuration": _encodeValue(payoutConfiguration),
      };
}

/// Billing information returned with a payment.
final class PaymentBillingDetails implements _InttegroValue {
  final PaymentMethodSnapshotOwner? owner;
  const PaymentBillingDetails({this.owner});
  factory PaymentBillingDetails.fromJson(Map<String, Object?> json) =>
      PaymentBillingDetails(
        owner: json["owner"] == null
            ? null
            : PaymentMethodSnapshotOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (owner != null) "owner": _encodeValue(owner),
      };
}

/// Customer projection returned with a payment.
final class PaymentCustomer implements _InttegroValue {
  final String id;
  final bool guest;
  final String name;
  final String? emailAddress;
  final String? phoneNumber;
  final OrderAddress? billingAddress;
  final OrderAddress? shippingAddress;
  const PaymentCustomer({
    required this.id,
    required this.guest,
    required this.name,
    this.emailAddress,
    this.phoneNumber,
    this.billingAddress,
    this.shippingAddress,
  });
  factory PaymentCustomer.fromJson(Map<String, Object?> json) =>
      PaymentCustomer(
        id: json["id"] as String,
        guest: json["guest"] as bool,
        name: json["name"] as String,
        emailAddress: json["email_address"] as String?,
        phoneNumber: json["phone_number"] as String?,
        billingAddress: json["billing_address"] == null
            ? null
            : OrderAddress.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        shippingAddress: json["shipping_address"] == null
            ? null
            : OrderAddress.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "guest": _encodeValue(guest),
        "name": _encodeValue(name),
        if (emailAddress != null) "email_address": _encodeValue(emailAddress),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (billingAddress != null)
          "billing_address": _encodeValue(billingAddress),
        if (shippingAddress != null)
          "shipping_address": _encodeValue(shippingAddress),
      };
}

/// Public payment error information.
final class PaymentError implements _InttegroValue {
  final String message;
  const PaymentError({required this.message});
  factory PaymentError.fromJson(Map<String, Object?> json) =>
      PaymentError(message: json["message"] as String);
  @override
  Map<String, Object?> toJson() => {"message": _encodeValue(message)};
}

/// Public error information for a payment attempt.
final class PaymentAttemptError implements _InttegroValue {
  final String message;
  const PaymentAttemptError({required this.message});
  factory PaymentAttemptError.fromJson(Map<String, Object?> json) =>
      PaymentAttemptError(message: json["message"] as String);
  @override
  Map<String, Object?> toJson() => {"message": _encodeValue(message)};
}

/// Typed Inttegro domain value.
final class PaymentAttempt implements _InttegroValue {
  final String? paymentMethodType;
  final String? paymentMethodId;
  final String? reference;
  final PaymentAttemptError? error;
  final PaymentAttemptStatus status;
  final DateTime initiatedAt;
  final DateTime? succeededAt;
  const PaymentAttempt({
    this.paymentMethodType,
    this.paymentMethodId,
    this.reference,
    this.error,
    required this.status,
    required this.initiatedAt,
    this.succeededAt,
  });
  factory PaymentAttempt.fromJson(Map<String, Object?> json) => PaymentAttempt(
        paymentMethodType: json["payment_method_type"] == null
            ? null
            : json["payment_method_type"] as String,
        paymentMethodId: json["payment_method_id"] == null
            ? null
            : json["payment_method_id"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        error: json["error"] == null
            ? null
            : PaymentAttemptError.fromJson(
                (json["error"] as Map).cast<String, Object?>(),
              ),
        status: PaymentAttemptStatus.fromJson(json["status"]),
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        succeededAt: json["succeeded_at"] == null
            ? null
            : _decodeDateTime(json["succeeded_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (paymentMethodType != null)
          "payment_method_type": _encodeValue(paymentMethodType),
        if (paymentMethodId != null)
          "payment_method_id": _encodeValue(paymentMethodId),
        if (reference != null) "reference": _encodeValue(reference),
        if (error != null) "error": _encodeValue(error),
        "status": _encodeValue(status),
        "initiated_at": _encodeValue(initiatedAt),
        if (succeededAt != null) "succeeded_at": _encodeValue(succeededAt),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethod implements _InttegroValue {
  final bool active;
  final DateTime? archivedAt;
  final PaymentMethodBankAccount? bankAccount;
  final PaymentMethodCard? card;
  final DateTime createdAt;
  final CustomData? customData;
  final String customerId;
  final bool? ephemeral;
  final DateTime? expiresOn;
  final String fingerprint;
  final String id;
  final PaymentMethodMobileMoney? mobileMoney;
  final PaymentMethodOwner? owner;
  final PaymentMethodType type;
  final PaymentMethodSupplied? supplied;
  final PaymentMethodVerification? verification;
  final DateTime? verifiedAt;
  const PaymentMethod({
    required this.active,
    this.archivedAt,
    this.bankAccount,
    this.card,
    required this.createdAt,
    this.customData,
    required this.customerId,
    this.ephemeral,
    this.expiresOn,
    required this.fingerprint,
    required this.id,
    this.mobileMoney,
    this.owner,
    required this.type,
    this.supplied,
    this.verification,
    this.verifiedAt,
  });
  factory PaymentMethod.fromJson(Map<String, Object?> json) => PaymentMethod(
        active: json["active"] as bool,
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        bankAccount: json["bank_account"] == null
            ? null
            : PaymentMethodBankAccount.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        card: json["card"] == null
            ? null
            : PaymentMethodCard.fromJson(
                (json["card"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        customerId: json["customer_id"] as String,
        ephemeral: json["ephemeral"] == null ? null : json["ephemeral"] as bool,
        expiresOn: json["expires_on"] == null
            ? null
            : _decodeDateTime(json["expires_on"]),
        fingerprint: json["fingerprint"] as String,
        id: json["id"] as String,
        mobileMoney: json["mobile_money"] == null
            ? null
            : PaymentMethodMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        owner: json["owner"] == null
            ? null
            : PaymentMethodOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        type: PaymentMethodType.fromJson(json["type"]),
        supplied: json["supplied"] == null
            ? null
            : PaymentMethodSupplied.fromJson(
                (json["supplied"] as Map).cast<String, Object?>(),
              ),
        verification: json["verification"] == null
            ? null
            : PaymentMethodVerification.fromJson(
                (json["verification"] as Map).cast<String, Object?>(),
              ),
        verifiedAt: json["verified_at"] == null
            ? null
            : _decodeDateTime(json["verified_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": _encodeValue(active),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        if (bankAccount != null) "bank_account": _encodeValue(bankAccount),
        if (card != null) "card": _encodeValue(card),
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        "customer_id": _encodeValue(customerId),
        if (ephemeral != null) "ephemeral": _encodeValue(ephemeral),
        if (expiresOn != null) "expires_on": _encodeValue(expiresOn),
        "fingerprint": _encodeValue(fingerprint),
        "id": _encodeValue(id),
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
        if (owner != null) "owner": _encodeValue(owner),
        "type": _encodeValue(type),
        if (supplied != null) "supplied": _encodeValue(supplied),
        if (verification != null) "verification": _encodeValue(verification),
        if (verifiedAt != null) "verified_at": _encodeValue(verifiedAt),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodBankAccount implements _InttegroValue {
  final PaymentMethodBankAccountGhanaBankAccount? ghanaBankAccount;
  final BankAccountType type;
  const PaymentMethodBankAccount({this.ghanaBankAccount, required this.type});
  factory PaymentMethodBankAccount.fromJson(Map<String, Object?> json) =>
      PaymentMethodBankAccount(
        ghanaBankAccount: json["ghana_bank_account"] == null
            ? null
            : PaymentMethodBankAccountGhanaBankAccount.fromJson(
                (json["ghana_bank_account"] as Map).cast<String, Object?>(),
              ),
        type: BankAccountType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (ghanaBankAccount != null)
          "ghana_bank_account": _encodeValue(ghanaBankAccount),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodBankAccountGhanaBankAccount implements _InttegroValue {
  final String? branch;
  final String? name;
  final String accountNumber;
  final String? sortCode;
  final String? swiftCode;
  const PaymentMethodBankAccountGhanaBankAccount({
    this.branch,
    this.name,
    required this.accountNumber,
    this.sortCode,
    this.swiftCode,
  });
  factory PaymentMethodBankAccountGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodBankAccountGhanaBankAccount(
        branch: json["branch"] == null ? null : json["branch"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        accountNumber: json["account_number"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (branch != null) "branch": _encodeValue(branch),
        if (name != null) "name": _encodeValue(name),
        "account_number": _encodeValue(accountNumber),
        if (sortCode != null) "sort_code": _encodeValue(sortCode),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
      };
}

/// Typed Inttegro request parameters.
final class PaymentMethodDataInput implements _InttegroValue {
  final PaymentMethodDataInputMobileMoney? mobileMoney;
  final PaymentMethodType type;
  const PaymentMethodDataInput({this.mobileMoney, required this.type});
  factory PaymentMethodDataInput.fromJson(Map<String, Object?> json) =>
      PaymentMethodDataInput(
        mobileMoney: json["mobile_money"] == null
            ? null
            : PaymentMethodDataInputMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        type: PaymentMethodType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro request parameters.
final class PaymentMethodDataInputMobileMoney implements _InttegroValue {
  final MobileMoneyNetwork network;
  final String accountNumber;
  const PaymentMethodDataInputMobileMoney({
    required this.network,
    required this.accountNumber,
  });
  factory PaymentMethodDataInputMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodDataInputMobileMoney(
        network: MobileMoneyNetwork.fromJson(json["network"]),
        accountNumber: json["account_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "network": _encodeValue(network),
        "account_number": _encodeValue(accountNumber),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodDeletion implements _InttegroValue {
  final bool deleted;
  final String paymentMethodId;
  const PaymentMethodDeletion({
    required this.deleted,
    required this.paymentMethodId,
  });
  factory PaymentMethodDeletion.fromJson(Map<String, Object?> json) =>
      PaymentMethodDeletion(
        deleted: json["deleted"] as bool,
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "deleted": _encodeValue(deleted),
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodMobileMoney implements _InttegroValue {
  final String accountNumber;
  final String last4;
  final MobileMoneyNetwork network;
  const PaymentMethodMobileMoney({
    required this.accountNumber,
    required this.last4,
    required this.network,
  });
  factory PaymentMethodMobileMoney.fromJson(Map<String, Object?> json) =>
      PaymentMethodMobileMoney(
        accountNumber: json["account_number"] as String,
        last4: json["last4"] as String,
        network: MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        "last4": _encodeValue(last4),
        "network": _encodeValue(network),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodOwner implements _InttegroValue {
  final PaymentMethodOwnerAddress? address;
  final String name;
  const PaymentMethodOwner({this.address, required this.name});
  factory PaymentMethodOwner.fromJson(Map<String, Object?> json) =>
      PaymentMethodOwner(
        address: json["address"] == null
            ? null
            : PaymentMethodOwnerAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (address != null) "address": _encodeValue(address),
        "name": _encodeValue(name),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodOwnerAddress implements _InttegroValue {
  final String? city;
  final String country;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phoneNumber;
  final String? postCode;
  final String? region;
  const PaymentMethodOwnerAddress({
    this.city,
    required this.country,
    this.line1,
    this.line2,
    this.name,
    this.phoneNumber,
    this.postCode,
    this.region,
  });
  factory PaymentMethodOwnerAddress.fromJson(Map<String, Object?> json) =>
      PaymentMethodOwnerAddress(
        city: json["city"] == null ? null : json["city"] as String,
        country: json["country"] as String,
        line1: json["line_1"] == null ? null : json["line_1"] as String,
        line2: json["line_2"] == null ? null : json["line_2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] == null ? null : json["region"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (city != null) "city": _encodeValue(city),
        "country": _encodeValue(country),
        if (line1 != null) "line_1": _encodeValue(line1),
        if (line2 != null) "line_2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (postCode != null) "post_code": _encodeValue(postCode),
        if (region != null) "region": _encodeValue(region),
      };
}

/// Typed Inttegro request parameters.
final class PaymentMethodOwnerInput implements _InttegroValue {
  final PaymentMethodOwnerInputAddress address;
  final String name;
  const PaymentMethodOwnerInput({required this.address, required this.name});
  factory PaymentMethodOwnerInput.fromJson(Map<String, Object?> json) =>
      PaymentMethodOwnerInput(
        address: PaymentMethodOwnerInputAddress.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": _encodeValue(address),
        "name": _encodeValue(name),
      };
}

/// Typed Inttegro request parameters.
final class PaymentMethodOwnerInputAddress implements _InttegroValue {
  final String? city;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phoneNumber;
  final String? postCode;
  final String? region;
  final String country;
  const PaymentMethodOwnerInputAddress({
    this.city,
    this.line1,
    this.line2,
    this.name,
    this.phoneNumber,
    this.postCode,
    this.region,
    required this.country,
  });
  factory PaymentMethodOwnerInputAddress.fromJson(Map<String, Object?> json) =>
      PaymentMethodOwnerInputAddress(
        city: json["city"] == null ? null : json["city"] as String,
        line1: json["line1"] == null ? null : json["line1"] as String,
        line2: json["line2"] == null ? null : json["line2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] == null ? null : json["region"] as String,
        country: json["country"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (city != null) "city": _encodeValue(city),
        if (line1 != null) "line1": _encodeValue(line1),
        if (line2 != null) "line2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (postCode != null) "post_code": _encodeValue(postCode),
        if (region != null) "region": _encodeValue(region),
        "country": _encodeValue(country),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodPage implements _InttegroValue {
  final int number;
  final List<PaymentMethod> paymentMethods;
  final int size;
  const PaymentMethodPage({
    required this.number,
    required this.paymentMethods,
    required this.size,
  });
  factory PaymentMethodPage.fromJson(Map<String, Object?> json) =>
      PaymentMethodPage(
        number: (json["number"] as num).toInt(),
        paymentMethods: (json["payment_methods"] as List)
            .map(
              (item) =>
                  PaymentMethod.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "payment_methods": _encodeValue(paymentMethods),
        "size": _encodeValue(size),
      };
}

/// Typed Inttegro request parameters.
final class PaymentMethodPageRequest implements _InttegroValue {
  final String? customerId;
  final int? pageNumber;
  final int? pageSize;
  const PaymentMethodPageRequest({
    this.customerId,
    this.pageNumber,
    this.pageSize,
  });
  factory PaymentMethodPageRequest.fromJson(Map<String, Object?> json) =>
      PaymentMethodPageRequest(
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customerId != null) "customer_id": _encodeValue(customerId),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodSettings implements _InttegroValue {
  final PaymentMethodTypeSetting? mobileMoney;
  final PaymentMethodTypeSetting? bankAccount;
  final PaymentMethodTypeSetting? card;
  final PaymentMethodTypeSetting? motito;
  const PaymentMethodSettings({
    this.mobileMoney,
    this.bankAccount,
    this.card,
    this.motito,
  });
  factory PaymentMethodSettings.fromJson(Map<String, Object?> json) =>
      PaymentMethodSettings(
        mobileMoney: json["mobile_money"] == null
            ? null
            : PaymentMethodTypeSetting.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        bankAccount: json["bank_account"] == null
            ? null
            : PaymentMethodTypeSetting.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        card: json["card"] == null
            ? null
            : PaymentMethodTypeSetting.fromJson(
                (json["card"] as Map).cast<String, Object?>(),
              ),
        motito: json["motito"] == null
            ? null
            : PaymentMethodTypeSetting.fromJson(
                (json["motito"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
        if (bankAccount != null) "bank_account": _encodeValue(bankAccount),
        if (card != null) "card": _encodeValue(card),
        if (motito != null) "motito": _encodeValue(motito),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodCard implements _InttegroValue {
  const PaymentMethodCard();
  factory PaymentMethodCard.fromJson(Map<String, Object?> json) =>
      const PaymentMethodCard();
  @override
  Map<String, Object?> toJson() => const {};
}

/// Typed Inttegro domain value.
final class PaymentMethodSnapshot implements _InttegroValue {
  final String id;
  final PaymentMethodSnapshotBankAccount? bankAccount;
  final PaymentMethodCard? card;
  final DateTime createdAt;
  final String customerId;
  final PaymentMethodSnapshotMobileMoney? mobileMoney;
  final PaymentMethodSnapshotOwner? owner;
  final PaymentMethodType type;
  final bool verified;
  final DateTime? verifiedAt;
  const PaymentMethodSnapshot({
    required this.id,
    this.bankAccount,
    this.card,
    required this.createdAt,
    required this.customerId,
    this.mobileMoney,
    this.owner,
    required this.type,
    required this.verified,
    this.verifiedAt,
  });
  factory PaymentMethodSnapshot.fromJson(Map<String, Object?> json) =>
      PaymentMethodSnapshot(
        id: json["id"] as String,
        bankAccount: json["bank_account"] == null
            ? null
            : PaymentMethodSnapshotBankAccount.fromJson(
                (json["bank_account"] as Map).cast<String, Object?>(),
              ),
        card: json["card"] == null
            ? null
            : PaymentMethodCard.fromJson(
                (json["card"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        customerId: json["customer_id"] as String,
        mobileMoney: json["mobile_money"] == null
            ? null
            : PaymentMethodSnapshotMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        owner: json["owner"] == null
            ? null
            : PaymentMethodSnapshotOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        type: PaymentMethodType.fromJson(json["type"]),
        verified: json["verified"] as bool,
        verifiedAt: json["verified_at"] == null
            ? null
            : _decodeDateTime(json["verified_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (bankAccount != null) "bank_account": _encodeValue(bankAccount),
        if (card != null) "card": _encodeValue(card),
        "created_at": _encodeValue(createdAt),
        "customer_id": _encodeValue(customerId),
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
        if (owner != null) "owner": _encodeValue(owner),
        "type": _encodeValue(type),
        "verified": _encodeValue(verified),
        if (verifiedAt != null) "verified_at": _encodeValue(verifiedAt),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodSnapshotBankAccount implements _InttegroValue {
  final String type;
  final PaymentMethodSnapshotGhanaBankAccount? ghanaBankAccount;
  const PaymentMethodSnapshotBankAccount({
    required this.type,
    this.ghanaBankAccount,
  });
  factory PaymentMethodSnapshotBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodSnapshotBankAccount(
        type: json["type"] as String,
        ghanaBankAccount: json["ghana_bank_account"] == null
            ? null
            : PaymentMethodSnapshotGhanaBankAccount.fromJson(
                (json["ghana_bank_account"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (ghanaBankAccount != null)
          "ghana_bank_account": _encodeValue(ghanaBankAccount),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodSnapshotGhanaBankAccount implements _InttegroValue {
  final String accountNumber;
  final String? branch;
  final String? name;
  final String? sortCode;
  final String? swiftCode;
  const PaymentMethodSnapshotGhanaBankAccount({
    required this.accountNumber,
    this.branch,
    this.name,
    this.sortCode,
    this.swiftCode,
  });
  factory PaymentMethodSnapshotGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodSnapshotGhanaBankAccount(
        accountNumber: json["account_number"] as String,
        branch: json["branch"] == null ? null : json["branch"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        if (branch != null) "branch": _encodeValue(branch),
        if (name != null) "name": _encodeValue(name),
        if (sortCode != null) "sort_code": _encodeValue(sortCode),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodSnapshotMobileMoney implements _InttegroValue {
  final MobileMoneyNetwork network;
  final String accountNumber;
  final String last4;
  const PaymentMethodSnapshotMobileMoney({
    required this.network,
    required this.accountNumber,
    required this.last4,
  });
  factory PaymentMethodSnapshotMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodSnapshotMobileMoney(
        network: MobileMoneyNetwork.fromJson(json["network"]),
        accountNumber: json["account_number"] as String,
        last4: json["last4"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "network": _encodeValue(network),
        "account_number": _encodeValue(accountNumber),
        "last4": _encodeValue(last4),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodSnapshotOwner implements _InttegroValue {
  final String name;
  final OrderAddress? address;
  const PaymentMethodSnapshotOwner({required this.name, this.address});
  factory PaymentMethodSnapshotOwner.fromJson(Map<String, Object?> json) =>
      PaymentMethodSnapshotOwner(
        name: json["name"] as String,
        address: json["address"] == null
            ? null
            : OrderAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodSupplied implements _InttegroValue {
  final String? attemptId;
  final String by;
  final String? channel;
  final String? resourceId;
  final String? resourceType;
  final DateTime suppliedAt;
  const PaymentMethodSupplied({
    this.attemptId,
    required this.by,
    this.channel,
    this.resourceId,
    this.resourceType,
    required this.suppliedAt,
  });
  factory PaymentMethodSupplied.fromJson(Map<String, Object?> json) =>
      PaymentMethodSupplied(
        attemptId:
            json["attempt_id"] == null ? null : json["attempt_id"] as String,
        by: json["by"] as String,
        channel: json["channel"] == null ? null : json["channel"] as String,
        resourceId:
            json["resource_id"] == null ? null : json["resource_id"] as String,
        resourceType: json["resource_type"] == null
            ? null
            : json["resource_type"] as String,
        suppliedAt: _decodeDateTime(json["supplied_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (attemptId != null) "attempt_id": _encodeValue(attemptId),
        "by": _encodeValue(by),
        if (channel != null) "channel": _encodeValue(channel),
        if (resourceId != null) "resource_id": _encodeValue(resourceId),
        if (resourceType != null) "resource_type": _encodeValue(resourceType),
        "supplied_at": _encodeValue(suppliedAt),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodTypeSetting implements _InttegroValue {
  final PaymentMethodType? type;
  final String? name;
  final String? description;
  final bool enabled;
  final bool confirmsUse;
  const PaymentMethodTypeSetting({
    this.type,
    this.name,
    this.description,
    required this.enabled,
    required this.confirmsUse,
  });
  factory PaymentMethodTypeSetting.fromJson(Map<String, Object?> json) =>
      PaymentMethodTypeSetting(
        type: json["type"] == null
            ? null
            : PaymentMethodType.fromJson(json["type"]),
        name: json["name"] == null ? null : json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        enabled: json["enabled"] as bool,
        confirmsUse: json["confirms_use"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (name != null) "name": _encodeValue(name),
        if (description != null) "description": _encodeValue(description),
        "enabled": _encodeValue(enabled),
        "confirms_use": _encodeValue(confirmsUse),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodVerification implements _InttegroValue {
  final DateTime? completedAt;
  final DateTime initiatedAt;
  final String? mechanism;
  final String requestId;
  final String type;
  const PaymentMethodVerification({
    this.completedAt,
    required this.initiatedAt,
    this.mechanism,
    required this.requestId,
    required this.type,
  });
  factory PaymentMethodVerification.fromJson(Map<String, Object?> json) =>
      PaymentMethodVerification(
        completedAt: json["completed_at"] == null
            ? null
            : _decodeDateTime(json["completed_at"]),
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        mechanism:
            json["mechanism"] == null ? null : json["mechanism"] as String,
        requestId: json["request_id"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (completedAt != null) "completed_at": _encodeValue(completedAt),
        "initiated_at": _encodeValue(initiatedAt),
        if (mechanism != null) "mechanism": _encodeValue(mechanism),
        "request_id": _encodeValue(requestId),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class PaymentMethodVerificationSession implements _InttegroValue {
  final String paymentMethodId;
  final String status;
  final DateTime? tokenSentAt;
  final DateTime? expiresAt;
  final PaymentMethodVerificationDelivery? delivery;
  const PaymentMethodVerificationSession({
    required this.paymentMethodId,
    required this.status,
    this.tokenSentAt,
    this.expiresAt,
    this.delivery,
  });
  factory PaymentMethodVerificationSession.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodVerificationSession(
        paymentMethodId: json["payment_method_id"] as String,
        status: json["status"] as String,
        tokenSentAt: json["token_sent_at"] == null
            ? null
            : _decodeDateTime(json["token_sent_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        delivery: json["delivery"] == null
            ? null
            : PaymentMethodVerificationDelivery.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
        "status": _encodeValue(status),
        if (tokenSentAt != null) "token_sent_at": _encodeValue(tokenSentAt),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        if (delivery != null) "delivery": _encodeValue(delivery),
      };
}

/// Describes delivery of a payment-method verification token.
final class PaymentMethodVerificationDelivery implements _InttegroValue {
  final String? recipient;
  final String? channel;
  final String? senderId;
  const PaymentMethodVerificationDelivery({
    this.recipient,
    this.channel,
    this.senderId,
  });
  factory PaymentMethodVerificationDelivery.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodVerificationDelivery(
        recipient: json["recipient"] as String?,
        channel: json["channel"] as String?,
        senderId: json["sender_id"] as String?,
      );
  @override
  Map<String, Object?> toJson() => {
        if (recipient != null) "recipient": _encodeValue(recipient),
        if (channel != null) "channel": _encodeValue(channel),
        if (senderId != null) "sender_id": _encodeValue(senderId),
      };
}

/// Typed Inttegro domain value.
final class PaymentNextAction implements _InttegroValue {
  final PaymentNextActionType type;
  final PaymentNextActionConfirmPayment? confirmPayment;
  final PaymentNextActionRedirect? redirect;
  final PaymentNextActionAuthorize? authorize;
  final PaymentNextActionRequestConfirmation? requestConfirmation;
  const PaymentNextAction({
    required this.type,
    this.confirmPayment,
    this.redirect,
    this.authorize,
    this.requestConfirmation,
  });
  factory PaymentNextAction.fromJson(Map<String, Object?> json) =>
      PaymentNextAction(
        type: PaymentNextActionType.fromJson(json["type"]),
        confirmPayment: json["confirm_payment"] == null
            ? null
            : PaymentNextActionConfirmPayment.fromJson(
                (json["confirm_payment"] as Map).cast<String, Object?>(),
              ),
        redirect: json["redirect"] == null
            ? null
            : PaymentNextActionRedirect.fromJson(
                (json["redirect"] as Map).cast<String, Object?>(),
              ),
        authorize: json["authorize"] == null
            ? null
            : PaymentNextActionAuthorize.fromJson(
                (json["authorize"] as Map).cast<String, Object?>(),
              ),
        requestConfirmation: json["request_confirmation"] == null
            ? null
            : PaymentNextActionRequestConfirmation.fromJson(
                (json["request_confirmation"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (confirmPayment != null)
          "confirm_payment": _encodeValue(confirmPayment),
        if (redirect != null) "redirect": _encodeValue(redirect),
        if (authorize != null) "authorize": _encodeValue(authorize),
        if (requestConfirmation != null)
          "request_confirmation": _encodeValue(requestConfirmation),
      };
}

/// Typed Inttegro domain value.
final class PaymentNextActionAuthorize implements _InttegroValue {
  final String beneficiary;
  final String scheme;
  final DateTime expiresAt;
  const PaymentNextActionAuthorize({
    required this.beneficiary,
    required this.scheme,
    required this.expiresAt,
  });
  factory PaymentNextActionAuthorize.fromJson(Map<String, Object?> json) =>
      PaymentNextActionAuthorize(
        beneficiary: json["beneficiary"] as String,
        scheme: json["scheme"] as String,
        expiresAt: _decodeDateTime(json["expires_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "beneficiary": _encodeValue(beneficiary),
        "scheme": _encodeValue(scheme),
        "expires_at": _encodeValue(expiresAt),
      };
}

/// Typed Inttegro domain value.
final class PaymentNextActionConfirmPayment implements _InttegroValue {
  final DateTime expiresAt;
  final String scheme;
  final PaymentNextActionConfirmPaymentRequest? request;
  final PaymentNextActionConfirmPaymentAttempt? attempt;
  final bool confirmed;
  final String status;
  const PaymentNextActionConfirmPayment({
    required this.expiresAt,
    required this.scheme,
    this.request,
    this.attempt,
    required this.confirmed,
    required this.status,
  });
  factory PaymentNextActionConfirmPayment.fromJson(Map<String, Object?> json) =>
      PaymentNextActionConfirmPayment(
        expiresAt: _decodeDateTime(json["expires_at"]),
        scheme: json["scheme"] as String,
        request: json["request"] == null
            ? null
            : PaymentNextActionConfirmPaymentRequest.fromJson(
                (json["request"] as Map).cast<String, Object?>(),
              ),
        attempt: json["attempt"] == null
            ? null
            : PaymentNextActionConfirmPaymentAttempt.fromJson(
                (json["attempt"] as Map).cast<String, Object?>(),
              ),
        confirmed: json["confirmed"] as bool,
        status: json["status"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "expires_at": _encodeValue(expiresAt),
        "scheme": _encodeValue(scheme),
        if (request != null) "request": _encodeValue(request),
        if (attempt != null) "attempt": _encodeValue(attempt),
        "confirmed": _encodeValue(confirmed),
        "status": _encodeValue(status),
      };
}

/// Typed Inttegro domain value.
final class PaymentNextActionConfirmPaymentAttempt implements _InttegroValue {
  final String status;
  final bool confirmed;
  final String reason;
  final DateTime? executedAt;
  final DateTime createdAt;
  const PaymentNextActionConfirmPaymentAttempt({
    required this.status,
    required this.confirmed,
    required this.reason,
    this.executedAt,
    required this.createdAt,
  });
  factory PaymentNextActionConfirmPaymentAttempt.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentNextActionConfirmPaymentAttempt(
        status: json["status"] as String,
        confirmed: json["confirmed"] as bool,
        reason: json["reason"] as String,
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        createdAt: _decodeDateTime(json["created_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "status": _encodeValue(status),
        "confirmed": _encodeValue(confirmed),
        "reason": _encodeValue(reason),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        "created_at": _encodeValue(createdAt),
      };
}

/// Typed Inttegro domain value.
final class PaymentNextActionConfirmPaymentRequest implements _InttegroValue {
  final String id;
  final String recipient;
  final PaymentConfirmationChannel sentVia;
  final int tokenSize;
  final String senderId;
  final String? status;
  const PaymentNextActionConfirmPaymentRequest({
    required this.id,
    required this.recipient,
    required this.sentVia,
    required this.tokenSize,
    required this.senderId,
    this.status,
  });
  factory PaymentNextActionConfirmPaymentRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentNextActionConfirmPaymentRequest(
        id: json["id"] as String,
        recipient: json["recipient"] as String,
        sentVia: PaymentConfirmationChannel.fromJson(json["sent_via"]),
        tokenSize: (json["token_size"] as num).toInt(),
        senderId: json["sender_id"] as String,
        status: json["status"] as String?,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "recipient": _encodeValue(recipient),
        "sent_via": _encodeValue(sentVia),
        "token_size": _encodeValue(tokenSize),
        "sender_id": _encodeValue(senderId),
        if (status != null) "status": _encodeValue(status),
      };
}

/// Typed Inttegro domain value.
final class PaymentNextActionRedirect implements _InttegroValue {
  final String redirectUrl;
  final DateTime validUntil;
  final PaymentNextActionRedirectLatestVisit? latestVisit;
  const PaymentNextActionRedirect({
    required this.redirectUrl,
    required this.validUntil,
    this.latestVisit,
  });
  factory PaymentNextActionRedirect.fromJson(Map<String, Object?> json) =>
      PaymentNextActionRedirect(
        redirectUrl: json["redirect_url"] as String,
        validUntil: _decodeDateTime(json["valid_until"]),
        latestVisit: json["latest_visit"] == null
            ? null
            : PaymentNextActionRedirectLatestVisit.fromJson(
                (json["latest_visit"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "redirect_url": _encodeValue(redirectUrl),
        "valid_until": _encodeValue(validUntil),
        if (latestVisit != null) "latest_visit": _encodeValue(latestVisit),
      };
}

/// Typed Inttegro domain value.
final class PaymentNextActionRedirectLatestVisit implements _InttegroValue {
  final String userAgent;
  final String ipAddress;
  final DateTime at;
  const PaymentNextActionRedirectLatestVisit({
    required this.userAgent,
    required this.ipAddress,
    required this.at,
  });
  factory PaymentNextActionRedirectLatestVisit.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentNextActionRedirectLatestVisit(
        userAgent: json["user_agent"] as String,
        ipAddress: json["ip_address"] as String,
        at: _decodeDateTime(json["at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "user_agent": _encodeValue(userAgent),
        "ip_address": _encodeValue(ipAddress),
        "at": _encodeValue(at),
      };
}

/// Requests a new payment confirmation challenge.
final class PaymentNextActionRequestConfirmation implements _InttegroValue {
  final PaymentNextActionConfirmPaymentRequest? lastRequest;
  final DateTime? after;
  const PaymentNextActionRequestConfirmation({this.lastRequest, this.after});
  factory PaymentNextActionRequestConfirmation.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentNextActionRequestConfirmation(
        lastRequest: json["last_request"] == null
            ? null
            : PaymentNextActionConfirmPaymentRequest.fromJson(
                (json["last_request"] as Map).cast<String, Object?>(),
              ),
        after: json["after"] == null ? null : _decodeDateTime(json["after"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (lastRequest != null) "last_request": _encodeValue(lastRequest),
        if (after != null) "after": _encodeValue(after),
      };
}

/// Typed Inttegro domain value.
final class PaymentPayoutConfiguration implements _InttegroValue {
  final bool enableFx;
  final PaymentPayoutConfigurationDestination destination;
  const PaymentPayoutConfiguration({
    required this.enableFx,
    required this.destination,
  });
  factory PaymentPayoutConfiguration.fromJson(Map<String, Object?> json) =>
      PaymentPayoutConfiguration(
        enableFx: json["enable_fx"] as bool,
        destination: PaymentPayoutConfigurationDestination.fromJson(
          (json["destination"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "enable_fx": _encodeValue(enableFx),
        "destination": _encodeValue(destination),
      };
}

/// Typed Inttegro domain value.
final class PaymentPayoutConfigurationDestination implements _InttegroValue {
  final String financialAccountId;
  const PaymentPayoutConfigurationDestination({
    required this.financialAccountId,
  });
  factory PaymentPayoutConfigurationDestination.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentPayoutConfigurationDestination(
        financialAccountId: json["financial_account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "financial_account_id": _encodeValue(financialAccountId),
      };
}

/// Typed Inttegro domain value.
final class Payout implements _InttegroValue {
  final Amount? amount;
  final List<String>? balanceTransactions;
  final DateTime? canceledAt;
  final CustomData? customData;
  final String destinationId;
  final PayoutError? error;
  final DateTime executeAfter;
  final String? executedBy;
  final DateTime? expectedAt;
  final DateTime? failedAt;
  final String id;
  final DateTime initiatedAt;
  final String? initiatedBy;
  final Amount maxAmount;
  final String? reference;
  final String? scheduleId;
  final DateTime? scheduledAt;
  final String? scheduledBy;
  final DateTime? sentAt;
  final String? sourceId;
  final PayoutStatus status;
  final DateTime? succeededAt;
  const Payout({
    this.amount,
    this.balanceTransactions,
    this.canceledAt,
    this.customData,
    required this.destinationId,
    this.error,
    required this.executeAfter,
    this.executedBy,
    this.expectedAt,
    this.failedAt,
    required this.id,
    required this.initiatedAt,
    this.initiatedBy,
    required this.maxAmount,
    this.reference,
    this.scheduleId,
    this.scheduledAt,
    this.scheduledBy,
    this.sentAt,
    this.sourceId,
    required this.status,
    this.succeededAt,
  });
  factory Payout.fromJson(Map<String, Object?> json) => Payout(
        amount: json["amount"] == null
            ? null
            : Amount.fromJson((json["amount"] as Map).cast<String, Object?>()),
        balanceTransactions: json["balance_transactions"] == null
            ? null
            : (json["balance_transactions"] as List)
                .map((item) => item as String)
                .toList(),
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        destinationId: json["destination_id"] as String,
        error: json["error"] == null
            ? null
            : PayoutError.fromJson(
                (json["error"] as Map).cast<String, Object?>()),
        executeAfter: _decodeDateTime(json["execute_after"]),
        executedBy:
            json["executed_by"] == null ? null : json["executed_by"] as String,
        expectedAt: json["expected_at"] == null
            ? null
            : _decodeDateTime(json["expected_at"]),
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        id: json["id"] as String,
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        initiatedBy: json["initiated_by"] == null
            ? null
            : json["initiated_by"] as String,
        maxAmount: Amount.fromJson(
          (json["max_amount"] as Map).cast<String, Object?>(),
        ),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        scheduleId:
            json["schedule_id"] == null ? null : json["schedule_id"] as String,
        scheduledAt: json["scheduled_at"] == null
            ? null
            : _decodeDateTime(json["scheduled_at"]),
        scheduledBy: json["scheduled_by"] == null
            ? null
            : json["scheduled_by"] as String,
        sentAt:
            json["sent_at"] == null ? null : _decodeDateTime(json["sent_at"]),
        sourceId:
            json["source_id"] == null ? null : json["source_id"] as String,
        status: PayoutStatus.fromJson(json["status"]),
        succeededAt: json["succeeded_at"] == null
            ? null
            : _decodeDateTime(json["succeeded_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (amount != null) "amount": _encodeValue(amount),
        if (balanceTransactions != null)
          "balance_transactions": _encodeValue(balanceTransactions),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        "destination_id": _encodeValue(destinationId),
        if (error != null) "error": _encodeValue(error),
        "execute_after": _encodeValue(executeAfter),
        if (executedBy != null) "executed_by": _encodeValue(executedBy),
        if (expectedAt != null) "expected_at": _encodeValue(expectedAt),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        "id": _encodeValue(id),
        "initiated_at": _encodeValue(initiatedAt),
        if (initiatedBy != null) "initiated_by": _encodeValue(initiatedBy),
        "max_amount": _encodeValue(maxAmount),
        if (reference != null) "reference": _encodeValue(reference),
        if (scheduleId != null) "schedule_id": _encodeValue(scheduleId),
        if (scheduledAt != null) "scheduled_at": _encodeValue(scheduledAt),
        if (scheduledBy != null) "scheduled_by": _encodeValue(scheduledBy),
        if (sentAt != null) "sent_at": _encodeValue(sentAt),
        if (sourceId != null) "source_id": _encodeValue(sourceId),
        "status": _encodeValue(status),
        if (succeededAt != null) "succeeded_at": _encodeValue(succeededAt),
      };
}

/// Typed Inttegro domain value.
final class PayoutError implements _InttegroValue {
  final String cause;
  final String message;
  final DateTime occurredAt;
  final String type;
  const PayoutError({
    required this.cause,
    required this.message,
    required this.occurredAt,
    required this.type,
  });
  factory PayoutError.fromJson(Map<String, Object?> json) => PayoutError(
        cause: json["cause"] as String,
        message: json["message"] as String,
        occurredAt: _decodeDateTime(json["occurred_at"]),
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "cause": _encodeValue(cause),
        "message": _encodeValue(message),
        "occurred_at": _encodeValue(occurredAt),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class PayoutPage implements _InttegroValue {
  final int number;
  final int size;
  final List<Payout>? payouts;
  const PayoutPage({required this.number, required this.size, this.payouts});
  factory PayoutPage.fromJson(Map<String, Object?> json) => PayoutPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        payouts: json["payouts"] == null
            ? null
            : (json["payouts"] as List)
                .map(
                  (item) =>
                      Payout.fromJson((item as Map).cast<String, Object?>()),
                )
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        if (payouts != null) "payouts": _encodeValue(payouts),
      };
}

/// Typed Inttegro domain value.
final class PayoutSettingsLookup implements _InttegroValue {
  final PayoutDestinations destinations;
  final bool? fxEnabled;
  final PayoutSettingsLookupSchedule? schedule;
  const PayoutSettingsLookup({
    required this.destinations,
    this.fxEnabled,
    this.schedule,
  });
  factory PayoutSettingsLookup.fromJson(Map<String, Object?> json) =>
      PayoutSettingsLookup(
        destinations: PayoutDestinations.fromJson(json["destinations"]),
        fxEnabled:
            json["fx_enabled"] == null ? null : json["fx_enabled"] as bool,
        schedule: json["schedule"] == null
            ? null
            : PayoutSettingsLookupSchedule.fromJson(
                (json["schedule"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "destinations": _encodeValue(destinations),
        if (fxEnabled != null) "fx_enabled": _encodeValue(fxEnabled),
        if (schedule != null) "schedule": _encodeValue(schedule),
      };
}

/// Typed Inttegro domain value.
final class PayoutSettingsLookupSchedule implements _InttegroValue {
  final PayoutSettingsLookupScheduleAgingSpec agingSpec;
  final String description;
  final String interval;
  final String name;
  final String scheduleOn;
  final String type;
  const PayoutSettingsLookupSchedule({
    required this.agingSpec,
    required this.description,
    required this.interval,
    required this.name,
    required this.scheduleOn,
    required this.type,
  });
  factory PayoutSettingsLookupSchedule.fromJson(Map<String, Object?> json) =>
      PayoutSettingsLookupSchedule(
        agingSpec: PayoutSettingsLookupScheduleAgingSpec.fromJson(
          (json["aging_spec"] as Map).cast<String, Object?>(),
        ),
        description: json["description"] as String,
        interval: json["interval"] as String,
        name: json["name"] as String,
        scheduleOn: json["schedule_on"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "aging_spec": _encodeValue(agingSpec),
        "description": _encodeValue(description),
        "interval": _encodeValue(interval),
        "name": _encodeValue(name),
        "schedule_on": _encodeValue(scheduleOn),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class PayoutSettingsLookupScheduleAgingSpec implements _InttegroValue {
  final String abide;
  final String label;
  final String tPlus;
  const PayoutSettingsLookupScheduleAgingSpec({
    required this.abide,
    required this.label,
    required this.tPlus,
  });
  factory PayoutSettingsLookupScheduleAgingSpec.fromJson(
    Map<String, Object?> json,
  ) =>
      PayoutSettingsLookupScheduleAgingSpec(
        abide: json["abide"] as String,
        label: json["label"] as String,
        tPlus: json["t_plus"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "abide": _encodeValue(abide),
        "label": _encodeValue(label),
        "t_plus": _encodeValue(tPlus),
      };
}

/// Typed Inttegro domain value.
final class PayoutSettingsMutation implements _InttegroValue {
  final PayoutDestinations? destinations;
  final bool? fxEnabled;
  final String? id;
  final PayoutSettingsMutationSchedule? schedule;
  const PayoutSettingsMutation({
    this.destinations,
    this.fxEnabled,
    this.id,
    this.schedule,
  });
  factory PayoutSettingsMutation.fromJson(Map<String, Object?> json) =>
      PayoutSettingsMutation(
        destinations: json["destinations"] == null
            ? null
            : PayoutDestinations.fromJson(json["destinations"]),
        fxEnabled:
            json["fx_enabled"] == null ? null : json["fx_enabled"] as bool,
        id: json["id"] == null ? null : json["id"] as String,
        schedule: json["schedule"] == null
            ? null
            : PayoutSettingsMutationSchedule.fromJson(
                (json["schedule"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (destinations != null) "destinations": _encodeValue(destinations),
        if (fxEnabled != null) "fx_enabled": _encodeValue(fxEnabled),
        if (id != null) "id": _encodeValue(id),
        if (schedule != null) "schedule": _encodeValue(schedule),
      };
}

/// Typed Inttegro domain value.
final class PayoutSettingsMutationSchedule implements _InttegroValue {
  final String description;
  final String id;
  final String interval;
  final String name;
  final String scheduleOn;
  final PayoutSettingsMutationScheduleSpec spec;
  final String type;
  const PayoutSettingsMutationSchedule({
    required this.description,
    required this.id,
    required this.interval,
    required this.name,
    required this.scheduleOn,
    required this.spec,
    required this.type,
  });
  factory PayoutSettingsMutationSchedule.fromJson(Map<String, Object?> json) =>
      PayoutSettingsMutationSchedule(
        description: json["description"] as String,
        id: json["id"] as String,
        interval: json["interval"] as String,
        name: json["name"] as String,
        scheduleOn: json["schedule_on"] as String,
        spec: PayoutSettingsMutationScheduleSpec.fromJson(
          (json["spec"] as Map).cast<String, Object?>(),
        ),
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "description": _encodeValue(description),
        "id": _encodeValue(id),
        "interval": _encodeValue(interval),
        "name": _encodeValue(name),
        "schedule_on": _encodeValue(scheduleOn),
        "spec": _encodeValue(spec),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class PayoutSettingsMutationScheduleSpec implements _InttegroValue {
  final String abide;
  final String id;
  final String label;
  final String tPlus;
  const PayoutSettingsMutationScheduleSpec({
    required this.abide,
    required this.id,
    required this.label,
    required this.tPlus,
  });
  factory PayoutSettingsMutationScheduleSpec.fromJson(
    Map<String, Object?> json,
  ) =>
      PayoutSettingsMutationScheduleSpec(
        abide: json["abide"] as String,
        id: json["id"] as String,
        label: json["label"] as String,
        tPlus: json["t_plus"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "abide": _encodeValue(abide),
        "id": _encodeValue(id),
        "label": _encodeValue(label),
        "t_plus": _encodeValue(tPlus),
      };
}

/// Typed Inttegro domain value.
final class Price implements _InttegroValue {
  final Currency currency;
  final int value;
  const Price({required this.currency, required this.value});
  factory Price.fromJson(Map<String, Object?> json) => Price(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}

/// Typed Inttegro request parameters.
final class PriceActionRequest implements _InttegroValue {
  final String priceId;
  const PriceActionRequest({required this.priceId});
  factory PriceActionRequest.fromJson(Map<String, Object?> json) =>
      PriceActionRequest(priceId: json["price_id"] as String);
  @override
  Map<String, Object?> toJson() => {"price_id": _encodeValue(priceId)};
}

/// Typed Inttegro domain value.
final class PriceEmbeddedProduct implements _InttegroValue {
  final String id;
  final String? about;
  final bool active;
  final DateTime? archivedAt;
  final List<PriceEmbeddedProductAttributesItem>? attributes;
  final String? category;
  final DateTime createdAt;
  final CustomData? customData;
  final String? description;
  final ProductDimensions? dimensions;
  final ProductMedia? media;
  final String name;
  final DateTime? publishedAt;
  final String? reference;
  final ProductShipment? shipment;
  final String? taxCode;
  final ProductType type;
  final String? unitDim;
  final DateTime? updatedAt;
  const PriceEmbeddedProduct({
    required this.id,
    this.about,
    required this.active,
    this.archivedAt,
    this.attributes,
    this.category,
    required this.createdAt,
    this.customData,
    this.description,
    this.dimensions,
    this.media,
    required this.name,
    this.publishedAt,
    this.reference,
    this.shipment,
    this.taxCode,
    required this.type,
    this.unitDim,
    this.updatedAt,
  });
  factory PriceEmbeddedProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      PriceEmbeddedProduct(
        id: json["id"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        active: json["active"] as bool,
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => PriceEmbeddedProductAttributesItem.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        category: json["category"] == null ? null : json["category"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        media: json["media"] == null
            ? null
            : ProductMedia.fromJson(
                (json["media"] as Map).cast<String, Object?>()),
        name: json["name"] as String,
        publishedAt: json["published_at"] == null
            ? null
            : _decodeDateTime(json["published_at"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        shipment: json["shipment"] == null
            ? null
            : ProductShipment.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        type: ProductType.fromJson(json["type"]),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (about != null) "about": _encodeValue(about),
        "active": _encodeValue(active),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        if (attributes != null) "attributes": _encodeValue(attributes),
        if (category != null) "category": _encodeValue(category),
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (media != null) "media": _encodeValue(media),
        "name": _encodeValue(name),
        if (publishedAt != null) "published_at": _encodeValue(publishedAt),
        if (reference != null) "reference": _encodeValue(reference),
        if (shipment != null) "shipment": _encodeValue(shipment),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        "type": _encodeValue(type),
        if (unitDim != null) "unit_dim": _encodeValue(unitDim),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
      };
}

/// Typed Inttegro domain value.
final class PriceEmbeddedProductAttributesItem implements _InttegroValue {
  final String name;
  final String value;
  const PriceEmbeddedProductAttributesItem({
    required this.name,
    required this.value,
  });
  factory PriceEmbeddedProductAttributesItem.fromJson(
    Map<String, Object?> json,
  ) =>
      PriceEmbeddedProductAttributesItem(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "value": _encodeValue(value),
      };
}

/// Typed Inttegro domain value.
final class PricePage implements _InttegroValue {
  final int? number;
  final int? size;
  final List<CatalogPrice>? prices;
  const PricePage({this.number, this.size, this.prices});
  factory PricePage.fromJson(Map<String, Object?> json) => PricePage(
        number: json["number"] == null ? null : (json["number"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => CatalogPrice.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        if (size != null) "size": _encodeValue(size),
        if (prices != null) "prices": _encodeValue(prices),
      };
}

/// Typed Inttegro domain value.
final class PricePageItem implements _InttegroValue {
  final String id;
  final String? label;
  final String? about;
  final bool active;
  final Amount nominal;
  final String? productId;
  final PriceEmbeddedProduct? product;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;
  const PricePageItem({
    required this.id,
    this.label,
    this.about,
    required this.active,
    required this.nominal,
    this.productId,
    this.product,
    required this.createdAt,
    this.updatedAt,
    this.archivedAt,
  });
  factory PricePageItem.fromJson(Map<String, Object?> json) => PricePageItem(
        id: json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        active: json["active"] as bool,
        nominal:
            Amount.fromJson((json["nominal"] as Map).cast<String, Object?>()),
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        product: json["product"] == null
            ? null
            : PriceEmbeddedProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        if (about != null) "about": _encodeValue(about),
        "active": _encodeValue(active),
        "nominal": _encodeValue(nominal),
        if (productId != null) "product_id": _encodeValue(productId),
        if (product != null) "product": _encodeValue(product),
        "created_at": _encodeValue(createdAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
      };
}

/// Typed Inttegro request parameters.
final class PricePageRequest implements _InttegroValue {
  final int? pageNumber;
  final int? pageSize;
  final String? productId;
  const PricePageRequest({this.pageNumber, this.pageSize, this.productId});
  factory PricePageRequest.fromJson(Map<String, Object?> json) =>
      PricePageRequest(
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        if (productId != null) "product_id": _encodeValue(productId),
      };
}

/// Typed Inttegro request parameters.
final class PriceParams implements _InttegroValue {
  final Currency currency;
  final int value;
  const PriceParams({required this.currency, required this.value});
  factory PriceParams.fromJson(Map<String, Object?> json) => PriceParams(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}

/// Typed Inttegro domain value.
final class Product implements _InttegroValue {
  final String id;
  final ProductType type;
  final String? reference;
  final String name;
  final String? description;
  final String? about;
  final String? taxCode;
  final String? category;
  final List<ProductPriceSummary>? prices;
  final ProductShipment? shipment;
  final ProductMedia? media;
  final List<ProductAttribute>? attributes;
  final ProductDimensions? dimensions;
  final CustomData? customData;
  final bool active;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;
  final DateTime? publishedAt;
  final String? unitDim;
  const Product({
    required this.id,
    required this.type,
    this.reference,
    required this.name,
    this.description,
    this.about,
    this.taxCode,
    this.category,
    this.prices,
    this.shipment,
    this.media,
    this.attributes,
    this.dimensions,
    this.customData,
    required this.active,
    required this.createdAt,
    this.updatedAt,
    this.archivedAt,
    this.publishedAt,
    this.unitDim,
  });
  factory Product.fromJson(Map<String, Object?> json) => Product(
        id: json["id"] as String,
        type: ProductType.fromJson(json["type"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        name: json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => ProductPriceSummary.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        shipment: json["shipment"] == null
            ? null
            : ProductShipment.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        media: json["media"] == null
            ? null
            : ProductMedia.fromJson(
                (json["media"] as Map).cast<String, Object?>()),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => ProductAttribute.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        active: json["active"] as bool,
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        publishedAt: json["published_at"] == null
            ? null
            : _decodeDateTime(json["published_at"]),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "type": _encodeValue(type),
        if (reference != null) "reference": _encodeValue(reference),
        "name": _encodeValue(name),
        if (description != null) "description": _encodeValue(description),
        if (about != null) "about": _encodeValue(about),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (category != null) "category": _encodeValue(category),
        if (prices != null) "prices": _encodeValue(prices),
        if (shipment != null) "shipment": _encodeValue(shipment),
        if (media != null) "media": _encodeValue(media),
        if (attributes != null) "attributes": _encodeValue(attributes),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (customData != null) "custom_data": _encodeValue(customData),
        "active": _encodeValue(active),
        "created_at": _encodeValue(createdAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        if (publishedAt != null) "published_at": _encodeValue(publishedAt),
        if (unitDim != null) "unit_dim": _encodeValue(unitDim),
      };
}

/// Typed Inttegro request parameters.
final class ProductActionRequest implements _InttegroValue {
  final String productId;
  const ProductActionRequest({required this.productId});
  factory ProductActionRequest.fromJson(Map<String, Object?> json) =>
      ProductActionRequest(productId: json["product_id"] as String);
  @override
  Map<String, Object?> toJson() => {"product_id": _encodeValue(productId)};
}

/// Typed Inttegro domain value.
final class ProductAttribute implements _InttegroValue {
  final String name;
  final String value;
  const ProductAttribute({required this.name, required this.value});
  factory ProductAttribute.fromJson(Map<String, Object?> json) =>
      ProductAttribute(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "value": _encodeValue(value),
      };
}

/// Typed Inttegro request parameters.
final class ProductAttributeInput implements _InttegroValue {
  final String name;
  final String value;
  const ProductAttributeInput({required this.name, required this.value});
  factory ProductAttributeInput.fromJson(Map<String, Object?> json) =>
      ProductAttributeInput(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "value": _encodeValue(value),
      };
}

/// Typed Inttegro domain value.
final class ProductDimensions implements _InttegroValue {
  final ProductDimensionsPhysical? physical;
  final ProductDimensionsDigital? digital;
  final ProductDimensionsCustom? custom;
  const ProductDimensions({this.physical, this.digital, this.custom});
  factory ProductDimensions.fromJson(Map<String, Object?> json) =>
      ProductDimensions(
        physical: json["physical"] == null
            ? null
            : ProductDimensionsPhysical.fromJson(
                (json["physical"] as Map).cast<String, Object?>(),
              ),
        digital: json["digital"] == null
            ? null
            : ProductDimensionsDigital.fromJson(
                (json["digital"] as Map).cast<String, Object?>(),
              ),
        custom: json["custom"] == null
            ? null
            : ProductDimensionsCustom.fromJson(
                (json["custom"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (physical != null) "physical": _encodeValue(physical),
        if (digital != null) "digital": _encodeValue(digital),
        if (custom != null) "custom": _encodeValue(custom),
      };
}

/// Typed Inttegro domain value.
final class ProductDimensionsCustom implements _InttegroValue {
  final String? sizeUnit;
  final double? size;
  final ProductDimensionDetails? details;
  const ProductDimensionsCustom({this.sizeUnit, this.size, this.details});
  factory ProductDimensionsCustom.fromJson(Map<String, Object?> json) =>
      ProductDimensionsCustom(
        sizeUnit:
            json["size_unit"] == null ? null : json["size_unit"] as String,
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
        details: json["details"] == null
            ? null
            : ProductDimensionDetails.fromJson(json["details"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (sizeUnit != null) "size_unit": _encodeValue(sizeUnit),
        if (size != null) "size": _encodeValue(size),
        if (details != null) "details": _encodeValue(details),
      };
}

/// Typed Inttegro domain value.
final class ProductDimensionsDigital implements _InttegroValue {
  final double? bytes;
  final String? sizeUnit;
  final double? size;
  const ProductDimensionsDigital({this.bytes, this.sizeUnit, this.size});
  factory ProductDimensionsDigital.fromJson(Map<String, Object?> json) =>
      ProductDimensionsDigital(
        bytes: json["bytes"] == null ? null : (json["bytes"] as num).toDouble(),
        sizeUnit:
            json["size_unit"] == null ? null : json["size_unit"] as String,
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (bytes != null) "bytes": _encodeValue(bytes),
        if (sizeUnit != null) "size_unit": _encodeValue(sizeUnit),
        if (size != null) "size": _encodeValue(size),
      };
}

/// Typed Inttegro request parameters.
final class ProductDimensionsInput implements _InttegroValue {
  final ProductDimensionsInputPhysical? physical;
  final ProductDimensionsInputDigital? digital;
  final ProductDimensionsInputCustom? custom;
  const ProductDimensionsInput({this.physical, this.digital, this.custom});
  factory ProductDimensionsInput.fromJson(Map<String, Object?> json) =>
      ProductDimensionsInput(
        physical: json["physical"] == null
            ? null
            : ProductDimensionsInputPhysical.fromJson(
                (json["physical"] as Map).cast<String, Object?>(),
              ),
        digital: json["digital"] == null
            ? null
            : ProductDimensionsInputDigital.fromJson(
                (json["digital"] as Map).cast<String, Object?>(),
              ),
        custom: json["custom"] == null
            ? null
            : ProductDimensionsInputCustom.fromJson(
                (json["custom"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (physical != null) "physical": _encodeValue(physical),
        if (digital != null) "digital": _encodeValue(digital),
        if (custom != null) "custom": _encodeValue(custom),
      };
}

/// Typed Inttegro request parameters.
final class ProductDimensionsInputCustom implements _InttegroValue {
  final String? sizeUnit;
  final double? size;
  final ProductDimensionDetails? details;
  const ProductDimensionsInputCustom({this.sizeUnit, this.size, this.details});
  factory ProductDimensionsInputCustom.fromJson(Map<String, Object?> json) =>
      ProductDimensionsInputCustom(
        sizeUnit:
            json["size_unit"] == null ? null : json["size_unit"] as String,
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
        details: json["details"] == null
            ? null
            : ProductDimensionDetails.fromJson(json["details"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (sizeUnit != null) "size_unit": _encodeValue(sizeUnit),
        if (size != null) "size": _encodeValue(size),
        if (details != null) "details": _encodeValue(details),
      };
}

/// Typed Inttegro request parameters.
final class ProductDimensionsInputDigital implements _InttegroValue {
  final double? bytes;
  final String? sizeUnit;
  final double? size;
  const ProductDimensionsInputDigital({this.bytes, this.sizeUnit, this.size});
  factory ProductDimensionsInputDigital.fromJson(Map<String, Object?> json) =>
      ProductDimensionsInputDigital(
        bytes: json["bytes"] == null ? null : (json["bytes"] as num).toDouble(),
        sizeUnit:
            json["size_unit"] == null ? null : json["size_unit"] as String,
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (bytes != null) "bytes": _encodeValue(bytes),
        if (sizeUnit != null) "size_unit": _encodeValue(sizeUnit),
        if (size != null) "size": _encodeValue(size),
      };
}

/// Typed Inttegro request parameters.
final class ProductDimensionsInputPhysical implements _InttegroValue {
  final String? weightUnit;
  final double? weight;
  final double? size;
  final String? volumeUnit;
  final double? volume;
  final double? length;
  final double? height;
  final double? width;
  const ProductDimensionsInputPhysical({
    this.weightUnit,
    this.weight,
    this.size,
    this.volumeUnit,
    this.volume,
    this.length,
    this.height,
    this.width,
  });
  factory ProductDimensionsInputPhysical.fromJson(
    Map<String, Object?> json,
  ) =>
      ProductDimensionsInputPhysical(
        weightUnit:
            json["weight_unit"] == null ? null : json["weight_unit"] as String,
        weight:
            json["weight"] == null ? null : (json["weight"] as num).toDouble(),
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
        volumeUnit:
            json["volume_unit"] == null ? null : json["volume_unit"] as String,
        volume:
            json["volume"] == null ? null : (json["volume"] as num).toDouble(),
        length:
            json["length"] == null ? null : (json["length"] as num).toDouble(),
        height:
            json["height"] == null ? null : (json["height"] as num).toDouble(),
        width: json["width"] == null ? null : (json["width"] as num).toDouble(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (weightUnit != null) "weight_unit": _encodeValue(weightUnit),
        if (weight != null) "weight": _encodeValue(weight),
        if (size != null) "size": _encodeValue(size),
        if (volumeUnit != null) "volume_unit": _encodeValue(volumeUnit),
        if (volume != null) "volume": _encodeValue(volume),
        if (length != null) "length": _encodeValue(length),
        if (height != null) "height": _encodeValue(height),
        if (width != null) "width": _encodeValue(width),
      };
}

/// Typed Inttegro domain value.
final class ProductDimensionsPhysical implements _InttegroValue {
  final String? weightUnit;
  final double? weight;
  final double? size;
  final String? volumeUnit;
  final double? volume;
  final double? length;
  final double? height;
  final double? width;
  const ProductDimensionsPhysical({
    this.weightUnit,
    this.weight,
    this.size,
    this.volumeUnit,
    this.volume,
    this.length,
    this.height,
    this.width,
  });
  factory ProductDimensionsPhysical.fromJson(
    Map<String, Object?> json,
  ) =>
      ProductDimensionsPhysical(
        weightUnit:
            json["weight_unit"] == null ? null : json["weight_unit"] as String,
        weight:
            json["weight"] == null ? null : (json["weight"] as num).toDouble(),
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
        volumeUnit:
            json["volume_unit"] == null ? null : json["volume_unit"] as String,
        volume:
            json["volume"] == null ? null : (json["volume"] as num).toDouble(),
        length:
            json["length"] == null ? null : (json["length"] as num).toDouble(),
        height:
            json["height"] == null ? null : (json["height"] as num).toDouble(),
        width: json["width"] == null ? null : (json["width"] as num).toDouble(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (weightUnit != null) "weight_unit": _encodeValue(weightUnit),
        if (weight != null) "weight": _encodeValue(weight),
        if (size != null) "size": _encodeValue(size),
        if (volumeUnit != null) "volume_unit": _encodeValue(volumeUnit),
        if (volume != null) "volume": _encodeValue(volume),
        if (length != null) "length": _encodeValue(length),
        if (height != null) "height": _encodeValue(height),
        if (width != null) "width": _encodeValue(width),
      };
}

/// Typed Inttegro request parameters.
final class ProductLineItemInput implements _InttegroValue {
  final LineItemType type;
  final ProductLineItemInputProduct product;
  const ProductLineItemInput({required this.type, required this.product});
  factory ProductLineItemInput.fromJson(Map<String, Object?> json) =>
      ProductLineItemInput(
        type: LineItemType.fromJson(json["type"]),
        product: ProductLineItemInputProduct.fromJson(json["product"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "product": _encodeValue(product),
      };
}

/// Typed Inttegro domain value.
final class ProductMedia implements _InttegroValue {
  final String? heroImage;
  final String? thumbnail;
  final String? webPageUrl;
  final String? brandLogo;
  final String? infographic;
  final String? promoVideo;
  final String? demoVideo;
  final List<String>? gallery;
  final List<String>? downloads;
  const ProductMedia({
    this.heroImage,
    this.thumbnail,
    this.webPageUrl,
    this.brandLogo,
    this.infographic,
    this.promoVideo,
    this.demoVideo,
    this.gallery,
    this.downloads,
  });
  factory ProductMedia.fromJson(Map<String, Object?> json) => ProductMedia(
        heroImage:
            json["hero_image"] == null ? null : json["hero_image"] as String,
        thumbnail:
            json["thumbnail"] == null ? null : json["thumbnail"] as String,
        webPageUrl: json["web_page_url"] == null
            ? null
            : json["web_page_url"] as String,
        brandLogo:
            json["brand_logo"] == null ? null : json["brand_logo"] as String,
        infographic:
            json["infographic"] == null ? null : json["infographic"] as String,
        promoVideo:
            json["promo_video"] == null ? null : json["promo_video"] as String,
        demoVideo:
            json["demo_video"] == null ? null : json["demo_video"] as String,
        gallery: json["gallery"] == null
            ? null
            : (json["gallery"] as List).map((item) => item as String).toList(),
        downloads: json["downloads"] == null
            ? null
            : (json["downloads"] as List)
                .map((item) => item as String)
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (heroImage != null) "hero_image": _encodeValue(heroImage),
        if (thumbnail != null) "thumbnail": _encodeValue(thumbnail),
        if (webPageUrl != null) "web_page_url": _encodeValue(webPageUrl),
        if (brandLogo != null) "brand_logo": _encodeValue(brandLogo),
        if (infographic != null) "infographic": _encodeValue(infographic),
        if (promoVideo != null) "promo_video": _encodeValue(promoVideo),
        if (demoVideo != null) "demo_video": _encodeValue(demoVideo),
        if (gallery != null) "gallery": _encodeValue(gallery),
        if (downloads != null) "downloads": _encodeValue(downloads),
      };
}

/// Typed Inttegro request parameters.
final class ProductMediaInput implements _InttegroValue {
  final String? heroImage;
  final String? thumbnail;
  final String? webPageUrl;
  final String? brandLogo;
  final String? infographic;
  final String? promoVideo;
  final String? demoVideo;
  final List<String>? gallery;
  final List<String>? downloads;
  const ProductMediaInput({
    this.heroImage,
    this.thumbnail,
    this.webPageUrl,
    this.brandLogo,
    this.infographic,
    this.promoVideo,
    this.demoVideo,
    this.gallery,
    this.downloads,
  });
  factory ProductMediaInput.fromJson(
    Map<String, Object?> json,
  ) =>
      ProductMediaInput(
        heroImage:
            json["hero_image"] == null ? null : json["hero_image"] as String,
        thumbnail:
            json["thumbnail"] == null ? null : json["thumbnail"] as String,
        webPageUrl: json["web_page_url"] == null
            ? null
            : json["web_page_url"] as String,
        brandLogo:
            json["brand_logo"] == null ? null : json["brand_logo"] as String,
        infographic:
            json["infographic"] == null ? null : json["infographic"] as String,
        promoVideo:
            json["promo_video"] == null ? null : json["promo_video"] as String,
        demoVideo:
            json["demo_video"] == null ? null : json["demo_video"] as String,
        gallery: json["gallery"] == null
            ? null
            : (json["gallery"] as List).map((item) => item as String).toList(),
        downloads: json["downloads"] == null
            ? null
            : (json["downloads"] as List)
                .map((item) => item as String)
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (heroImage != null) "hero_image": _encodeValue(heroImage),
        if (thumbnail != null) "thumbnail": _encodeValue(thumbnail),
        if (webPageUrl != null) "web_page_url": _encodeValue(webPageUrl),
        if (brandLogo != null) "brand_logo": _encodeValue(brandLogo),
        if (infographic != null) "infographic": _encodeValue(infographic),
        if (promoVideo != null) "promo_video": _encodeValue(promoVideo),
        if (demoVideo != null) "demo_video": _encodeValue(demoVideo),
        if (gallery != null) "gallery": _encodeValue(gallery),
        if (downloads != null) "downloads": _encodeValue(downloads),
      };
}

/// Typed Inttegro domain value.
final class ProductPage implements _InttegroValue {
  final int number;
  final int size;
  final List<Product> products;
  const ProductPage({
    required this.number,
    required this.size,
    required this.products,
  });
  factory ProductPage.fromJson(Map<String, Object?> json) => ProductPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        products: (json["products"] as List)
            .map(
              (item) => Product.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "products": _encodeValue(products),
      };
}

/// Typed Inttegro domain value.
final class ProductPriceSummary implements _InttegroValue {
  final String id;
  final bool active;
  final String? label;
  final Amount nominal;
  const ProductPriceSummary({
    required this.id,
    required this.active,
    this.label,
    required this.nominal,
  });
  factory ProductPriceSummary.fromJson(Map<String, Object?> json) =>
      ProductPriceSummary(
        id: json["id"] as String,
        active: json["active"] as bool,
        label: json["label"] == null ? null : json["label"] as String,
        nominal: Amount.fromJson(
          (json["nominal"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "active": _encodeValue(active),
        if (label != null) "label": _encodeValue(label),
        "nominal": _encodeValue(nominal),
      };
}

/// Typed Inttegro domain value.
final class ProductShipment implements _InttegroValue {
  final ProductShipmentType type;
  final ProductDelivery? delivery;
  final ProductDownload? download;
  final ProductRender? render;
  final ProductService? service;
  final ProductStream? stream;
  const ProductShipment({
    required this.type,
    this.delivery,
    this.download,
    this.render,
    this.service,
    this.stream,
  });
  factory ProductShipment.fromJson(
    Map<String, Object?> json,
  ) =>
      ProductShipment(
        type: ProductShipmentType.fromJson(json["type"]),
        delivery: json["delivery"] == null
            ? null
            : ProductDelivery.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        download: json["download"] == null
            ? null
            : ProductDownload.fromJson(
                (json["download"] as Map).cast<String, Object?>(),
              ),
        render: json["render"] == null
            ? null
            : ProductRender.fromJson(
                (json["render"] as Map).cast<String, Object?>(),
              ),
        service: json["service"] == null
            ? null
            : ProductService.fromJson(
                (json["service"] as Map).cast<String, Object?>(),
              ),
        stream: json["stream"] == null
            ? null
            : ProductStream.fromJson(
                (json["stream"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (delivery != null) "delivery": _encodeValue(delivery),
        if (download != null) "download": _encodeValue(download),
        if (render != null) "render": _encodeValue(render),
        if (service != null) "service": _encodeValue(service),
        if (stream != null) "stream": _encodeValue(stream),
      };
}

final class ProductDelivery implements _InttegroValue {
  const ProductDelivery();
  factory ProductDelivery.fromJson(Map<String, Object?> json) =>
      const ProductDelivery();
  @override
  Map<String, Object?> toJson() => const {};
}

final class ProductDownload implements _InttegroValue {
  const ProductDownload();
  factory ProductDownload.fromJson(Map<String, Object?> json) =>
      const ProductDownload();
  @override
  Map<String, Object?> toJson() => const {};
}

final class ProductRender implements _InttegroValue {
  const ProductRender();
  factory ProductRender.fromJson(Map<String, Object?> json) =>
      const ProductRender();
  @override
  Map<String, Object?> toJson() => const {};
}

final class ProductService implements _InttegroValue {
  const ProductService();
  factory ProductService.fromJson(Map<String, Object?> json) =>
      const ProductService();
  @override
  Map<String, Object?> toJson() => const {};
}

final class ProductStream implements _InttegroValue {
  const ProductStream();
  factory ProductStream.fromJson(Map<String, Object?> json) =>
      const ProductStream();
  @override
  Map<String, Object?> toJson() => const {};
}

/// Typed Inttegro request parameters.
final class ProductShipmentInput implements _InttegroValue {
  final ProductShipmentInputType type;
  const ProductShipmentInput({required this.type});
  factory ProductShipmentInput.fromJson(Map<String, Object?> json) =>
      ProductShipmentInput(
        type: ProductShipmentInputType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {"type": _encodeValue(type)};
}

/// Typed Inttegro domain value.
final class PublicFileStorage implements _InttegroValue {
  final FileStorageEncoding encoding;
  final int storedSize;
  const PublicFileStorage({required this.encoding, required this.storedSize});
  factory PublicFileStorage.fromJson(Map<String, Object?> json) =>
      PublicFileStorage(
        encoding: FileStorageEncoding.fromJson(json["encoding"]),
        storedSize: (json["stored_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "encoding": _encodeValue(encoding),
        "stored_size": _encodeValue(storedSize),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntent implements _InttegroValue {
  final bool allowVariants;
  final DateTime createdAt;
  final DateTime? expiresAt;
  final String id;
  final DateTime? inactiveAt;
  final PurchaseIntentMerchant? merchant;
  final PurchaseIntentPrice? price;
  final PurchaseIntentProduct? product;
  final PurchaseIntentQuantity quantity;
  final PurchaseIntentStatus status;
  final DateTime? updatedAt;
  final PurchaseIntentUsage usage;
  final PurchaseIntentVariantSet? variantSet;
  const PurchaseIntent({
    required this.allowVariants,
    required this.createdAt,
    this.expiresAt,
    required this.id,
    this.inactiveAt,
    this.merchant,
    this.price,
    this.product,
    required this.quantity,
    required this.status,
    this.updatedAt,
    required this.usage,
    this.variantSet,
  });
  factory PurchaseIntent.fromJson(Map<String, Object?> json) => PurchaseIntent(
        allowVariants: json["allow_variants"] as bool,
        createdAt: _decodeDateTime(json["created_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        id: json["id"] as String,
        inactiveAt: json["inactive_at"] == null
            ? null
            : _decodeDateTime(json["inactive_at"]),
        merchant: json["merchant"] == null
            ? null
            : PurchaseIntentMerchant.fromJson(
                (json["merchant"] as Map).cast<String, Object?>(),
              ),
        price: json["price"] == null
            ? null
            : PurchaseIntentPrice.fromJson(
                (json["price"] as Map).cast<String, Object?>(),
              ),
        product: json["product"] == null
            ? null
            : PurchaseIntentProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        quantity: PurchaseIntentQuantity.fromJson(
          (json["quantity"] as Map).cast<String, Object?>(),
        ),
        status: PurchaseIntentStatus.fromJson(json["status"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        usage: PurchaseIntentUsage.fromJson(
          (json["usage"] as Map).cast<String, Object?>(),
        ),
        variantSet: json["variant_set"] == null
            ? null
            : PurchaseIntentVariantSet.fromJson(
                (json["variant_set"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "allow_variants": _encodeValue(allowVariants),
        "created_at": _encodeValue(createdAt),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "id": _encodeValue(id),
        if (inactiveAt != null) "inactive_at": _encodeValue(inactiveAt),
        if (merchant != null) "merchant": _encodeValue(merchant),
        if (price != null) "price": _encodeValue(price),
        if (product != null) "product": _encodeValue(product),
        "quantity": _encodeValue(quantity),
        "status": _encodeValue(status),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        "usage": _encodeValue(usage),
        if (variantSet != null) "variant_set": _encodeValue(variantSet),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentMerchant implements _InttegroValue {
  final String? appName;
  final String? organizationId;
  final String? organizationName;
  const PurchaseIntentMerchant({
    this.appName,
    this.organizationId,
    this.organizationName,
  });
  factory PurchaseIntentMerchant.fromJson(Map<String, Object?> json) =>
      PurchaseIntentMerchant(
        appName: json["app_name"] == null ? null : json["app_name"] as String,
        organizationId: json["organization_id"] == null
            ? null
            : json["organization_id"] as String,
        organizationName: json["organization_name"] == null
            ? null
            : json["organization_name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (appName != null) "app_name": _encodeValue(appName),
        if (organizationId != null)
          "organization_id": _encodeValue(organizationId),
        if (organizationName != null)
          "organization_name": _encodeValue(organizationName),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentOriginalPrice implements _InttegroValue {
  final bool active;
  final String? id;
  final String? label;
  final Amount nominal;
  const PurchaseIntentOriginalPrice({
    required this.active,
    this.id,
    this.label,
    required this.nominal,
  });
  factory PurchaseIntentOriginalPrice.fromJson(Map<String, Object?> json) =>
      PurchaseIntentOriginalPrice(
        active: json["active"] as bool,
        id: json["id"] == null ? null : json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        nominal: Amount.fromJson(
          (json["nominal"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": _encodeValue(active),
        if (id != null) "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        "nominal": _encodeValue(nominal),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentPage implements _InttegroValue {
  final int number;
  final List<PurchaseIntent> purchaseIntents;
  final int size;
  const PurchaseIntentPage({
    required this.number,
    required this.purchaseIntents,
    required this.size,
  });
  factory PurchaseIntentPage.fromJson(Map<String, Object?> json) =>
      PurchaseIntentPage(
        number: (json["number"] as num).toInt(),
        purchaseIntents: (json["purchase_intents"] as List)
            .map(
              (item) => PurchaseIntent.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "purchase_intents": _encodeValue(purchaseIntents),
        "size": _encodeValue(size),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentPrice implements _InttegroValue {
  final bool active;
  final String? id;
  final String? label;
  final Amount nominal;
  final PurchaseIntentOriginalPrice? original;
  const PurchaseIntentPrice({
    required this.active,
    this.id,
    this.label,
    required this.nominal,
    this.original,
  });
  factory PurchaseIntentPrice.fromJson(Map<String, Object?> json) =>
      PurchaseIntentPrice(
        active: json["active"] as bool,
        id: json["id"] == null ? null : json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        nominal: Amount.fromJson(
          (json["nominal"] as Map).cast<String, Object?>(),
        ),
        original: json["original"] == null
            ? null
            : PurchaseIntentOriginalPrice.fromJson(
                (json["original"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": _encodeValue(active),
        if (id != null) "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        "nominal": _encodeValue(nominal),
        if (original != null) "original": _encodeValue(original),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentProduct implements _InttegroValue {
  final String id;
  final String? about;
  final bool active;
  final DateTime? archivedAt;
  final List<PurchaseIntentProductAttributesItem>? attributes;
  final String? category;
  final DateTime createdAt;
  final CustomData? customData;
  final String? description;
  final ProductDimensions? dimensions;
  final ProductMedia? media;
  final String name;
  final DateTime? publishedAt;
  final String? reference;
  final ProductShipment? shipment;
  final String? taxCode;
  final ProductType type;
  final String? unitDim;
  final DateTime? updatedAt;
  final List<ProductPriceSummary>? prices;
  final String? variantSetId;
  const PurchaseIntentProduct({
    required this.id,
    this.about,
    required this.active,
    this.archivedAt,
    this.attributes,
    this.category,
    required this.createdAt,
    this.customData,
    this.description,
    this.dimensions,
    this.media,
    required this.name,
    this.publishedAt,
    this.reference,
    this.shipment,
    this.taxCode,
    required this.type,
    this.unitDim,
    this.updatedAt,
    this.prices,
    this.variantSetId,
  });
  factory PurchaseIntentProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      PurchaseIntentProduct(
        id: json["id"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        active: json["active"] as bool,
        archivedAt: json["archived_at"] == null
            ? null
            : _decodeDateTime(json["archived_at"]),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => PurchaseIntentProductAttributesItem.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        category: json["category"] == null ? null : json["category"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        description:
            json["description"] == null ? null : json["description"] as String,
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        media: json["media"] == null
            ? null
            : ProductMedia.fromJson(
                (json["media"] as Map).cast<String, Object?>()),
        name: json["name"] as String,
        publishedAt: json["published_at"] == null
            ? null
            : _decodeDateTime(json["published_at"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        shipment: json["shipment"] == null
            ? null
            : ProductShipment.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        type: ProductType.fromJson(json["type"]),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => ProductPriceSummary.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        variantSetId: json["variant_set_id"] == null
            ? null
            : json["variant_set_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (about != null) "about": _encodeValue(about),
        "active": _encodeValue(active),
        if (archivedAt != null) "archived_at": _encodeValue(archivedAt),
        if (attributes != null) "attributes": _encodeValue(attributes),
        if (category != null) "category": _encodeValue(category),
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (description != null) "description": _encodeValue(description),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (media != null) "media": _encodeValue(media),
        "name": _encodeValue(name),
        if (publishedAt != null) "published_at": _encodeValue(publishedAt),
        if (reference != null) "reference": _encodeValue(reference),
        if (shipment != null) "shipment": _encodeValue(shipment),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        "type": _encodeValue(type),
        if (unitDim != null) "unit_dim": _encodeValue(unitDim),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (prices != null) "prices": _encodeValue(prices),
        if (variantSetId != null) "variant_set_id": _encodeValue(variantSetId),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentProductAttributesItem implements _InttegroValue {
  final String name;
  final String value;
  const PurchaseIntentProductAttributesItem({
    required this.name,
    required this.value,
  });
  factory PurchaseIntentProductAttributesItem.fromJson(
    Map<String, Object?> json,
  ) =>
      PurchaseIntentProductAttributesItem(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "value": _encodeValue(value),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentQuantity implements _InttegroValue {
  final int min;
  final int? max;
  const PurchaseIntentQuantity({required this.min, this.max});
  factory PurchaseIntentQuantity.fromJson(Map<String, Object?> json) =>
      PurchaseIntentQuantity(
        min: (json["min"] as num).toInt(),
        max: json["max"] == null ? null : (json["max"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "min": _encodeValue(min),
        if (max != null) "max": _encodeValue(max),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentUsage implements _InttegroValue {
  final bool? multiUse;
  final PurchaseIntentUsageOrder? order;
  final bool? singleUse;
  const PurchaseIntentUsage({this.multiUse, this.order, this.singleUse});
  factory PurchaseIntentUsage.fromJson(Map<String, Object?> json) =>
      PurchaseIntentUsage(
        multiUse: json["multi_use"] == null ? null : json["multi_use"] as bool,
        order: json["order"] == null
            ? null
            : PurchaseIntentUsageOrder.fromJson(
                (json["order"] as Map).cast<String, Object?>(),
              ),
        singleUse:
            json["single_use"] == null ? null : json["single_use"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (multiUse != null) "multi_use": _encodeValue(multiUse),
        if (order != null) "order": _encodeValue(order),
        if (singleUse != null) "single_use": _encodeValue(singleUse),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentUsageOrder implements _InttegroValue {
  final DateTime createdAt;
  final String id;
  const PurchaseIntentUsageOrder({required this.createdAt, required this.id});
  factory PurchaseIntentUsageOrder.fromJson(Map<String, Object?> json) =>
      PurchaseIntentUsageOrder(
        createdAt: _decodeDateTime(json["created_at"]),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        "id": _encodeValue(id),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentVariant implements _InttegroValue {
  final bool active;
  final int? position;
  final PurchaseIntentPrice? price;
  final PurchaseIntentProduct? product;
  final String productId;
  final VariantValues variantValues;
  const PurchaseIntentVariant({
    required this.active,
    this.position,
    this.price,
    this.product,
    required this.productId,
    required this.variantValues,
  });
  factory PurchaseIntentVariant.fromJson(Map<String, Object?> json) =>
      PurchaseIntentVariant(
        active: json["active"] as bool,
        position:
            json["position"] == null ? null : (json["position"] as num).toInt(),
        price: json["price"] == null
            ? null
            : PurchaseIntentPrice.fromJson(
                (json["price"] as Map).cast<String, Object?>(),
              ),
        product: json["product"] == null
            ? null
            : PurchaseIntentProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        productId: json["product_id"] as String,
        variantValues: VariantValues.fromJson(json["variant_values"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": _encodeValue(active),
        if (position != null) "position": _encodeValue(position),
        if (price != null) "price": _encodeValue(price),
        if (product != null) "product": _encodeValue(product),
        "product_id": _encodeValue(productId),
        "variant_values": _encodeValue(variantValues),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentVariantAxis implements _InttegroValue {
  final String key;
  final String label;
  final int position;
  const PurchaseIntentVariantAxis({
    required this.key,
    required this.label,
    required this.position,
  });
  factory PurchaseIntentVariantAxis.fromJson(Map<String, Object?> json) =>
      PurchaseIntentVariantAxis(
        key: json["key"] as String,
        label: json["label"] as String,
        position: (json["position"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "key": _encodeValue(key),
        "label": _encodeValue(label),
        "position": _encodeValue(position),
      };
}

/// Typed Inttegro domain value.
final class PurchaseIntentVariantSet implements _InttegroValue {
  final bool active;
  final String? defaultProductId;
  final String? description;
  final String id;
  final String name;
  final String? reference;
  final List<PurchaseIntentVariantAxis> variantAxes;
  final List<PurchaseIntentVariant> variants;
  const PurchaseIntentVariantSet({
    required this.active,
    this.defaultProductId,
    this.description,
    required this.id,
    required this.name,
    this.reference,
    required this.variantAxes,
    required this.variants,
  });
  factory PurchaseIntentVariantSet.fromJson(Map<String, Object?> json) =>
      PurchaseIntentVariantSet(
        active: json["active"] as bool,
        defaultProductId: json["default_product_id"] == null
            ? null
            : json["default_product_id"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        id: json["id"] as String,
        name: json["name"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        variantAxes: (json["variant_axes"] as List)
            .map(
              (item) => PurchaseIntentVariantAxis.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        variants: (json["variants"] as List)
            .map(
              (item) => PurchaseIntentVariant.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": _encodeValue(active),
        if (defaultProductId != null)
          "default_product_id": _encodeValue(defaultProductId),
        if (description != null) "description": _encodeValue(description),
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (reference != null) "reference": _encodeValue(reference),
        "variant_axes": _encodeValue(variantAxes),
        "variants": _encodeValue(variants),
      };
}

/// Typed Inttegro domain value.
final class Refund implements _InttegroValue {
  final DateTime? canceledAt;
  final DateTime createdAt;
  final CustomData? customData;
  final DateTime? failedAt;
  final String id;
  final List<RefundLineItem> lineItems;
  final String orderId;
  final DateTime? processingAt;
  final RefundReason reason;
  final String? reasonDetails;
  final String? reference;
  final RefundSettlement settlement;
  final RefundStatus status;
  final DateTime? succeededAt;
  final Amount total;
  const Refund({
    this.canceledAt,
    required this.createdAt,
    this.customData,
    this.failedAt,
    required this.id,
    required this.lineItems,
    required this.orderId,
    this.processingAt,
    required this.reason,
    this.reasonDetails,
    this.reference,
    required this.settlement,
    required this.status,
    this.succeededAt,
    required this.total,
  });
  factory Refund.fromJson(Map<String, Object?> json) => Refund(
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        id: json["id"] as String,
        lineItems: (json["line_items"] as List)
            .map(
              (item) => RefundLineItem.fromJson(
                  (item as Map).cast<String, Object?>()),
            )
            .toList(),
        orderId: json["order_id"] as String,
        processingAt: json["processing_at"] == null
            ? null
            : _decodeDateTime(json["processing_at"]),
        reason: RefundReason.fromJson(json["reason"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        settlement: RefundSettlement.fromJson(json["settlement"]),
        status: RefundStatus.fromJson(json["status"]),
        succeededAt: json["succeeded_at"] == null
            ? null
            : _decodeDateTime(json["succeeded_at"]),
        total: Amount.fromJson((json["total"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        "id": _encodeValue(id),
        "line_items": _encodeValue(lineItems),
        "order_id": _encodeValue(orderId),
        if (processingAt != null) "processing_at": _encodeValue(processingAt),
        "reason": _encodeValue(reason),
        if (reasonDetails != null)
          "reason_details": _encodeValue(reasonDetails),
        if (reference != null) "reference": _encodeValue(reference),
        "settlement": _encodeValue(settlement),
        "status": _encodeValue(status),
        if (succeededAt != null) "succeeded_at": _encodeValue(succeededAt),
        "total": _encodeValue(total),
      };
}

/// Typed Inttegro domain value.
final class RefundLineItem implements _InttegroValue {
  final String id;
  final String orderLineItemId;
  final Amount originalAmountPaid;
  final RefundReason? reason;
  final String? reasonDetails;
  final Amount refundAmount;
  const RefundLineItem({
    required this.id,
    required this.orderLineItemId,
    required this.originalAmountPaid,
    this.reason,
    this.reasonDetails,
    required this.refundAmount,
  });
  factory RefundLineItem.fromJson(Map<String, Object?> json) => RefundLineItem(
        id: json["id"] as String,
        orderLineItemId: json["order_line_item_id"] as String,
        originalAmountPaid: Amount.fromJson(
          (json["original_amount_paid"] as Map).cast<String, Object?>(),
        ),
        reason: json["reason"] == null
            ? null
            : RefundReason.fromJson(json["reason"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        refundAmount: Amount.fromJson(
          (json["refund_amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "order_line_item_id": _encodeValue(orderLineItemId),
        "original_amount_paid": _encodeValue(originalAmountPaid),
        if (reason != null) "reason": _encodeValue(reason),
        if (reasonDetails != null)
          "reason_details": _encodeValue(reasonDetails),
        "refund_amount": _encodeValue(refundAmount),
      };
}

/// Typed Inttegro domain value.
final class RefundPage implements _InttegroValue {
  final int number;
  final List<Refund> refunds;
  final int size;
  const RefundPage({
    required this.number,
    required this.refunds,
    required this.size,
  });
  factory RefundPage.fromJson(Map<String, Object?> json) => RefundPage(
        number: (json["number"] as num).toInt(),
        refunds: (json["refunds"] as List)
            .map((item) =>
                Refund.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "refunds": _encodeValue(refunds),
        "size": _encodeValue(size),
      };
}

/// Typed Inttegro request parameters.
final class RefundRequestMetaInput implements _InttegroValue {
  final String? idempotencyKey;
  const RefundRequestMetaInput({this.idempotencyKey});
  factory RefundRequestMetaInput.fromJson(Map<String, Object?> json) =>
      RefundRequestMetaInput(
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
      };
}

/// Typed Inttegro request parameters.
final class RenderMessageTemplatePreviewRequest implements _InttegroValue {
  final MessageTemplateReferenceInput messageTemplate;
  const RenderMessageTemplatePreviewRequest({required this.messageTemplate});
  factory RenderMessageTemplatePreviewRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      RenderMessageTemplatePreviewRequest(
        messageTemplate: MessageTemplateReferenceInput.fromJson(
          (json["message_template"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": _encodeValue(messageTemplate),
      };
}

/// Typed Inttegro domain value.
final class RenderedEmailMessageTemplate implements _InttegroValue {
  final String subject;
  final String text;
  final String? html;
  final MessageTemplateMailbox? from;
  final MessageTemplateMailbox? replyTo;
  final MessageHeaders? headers;
  final MessageTemplateSafetyResult? safety;
  const RenderedEmailMessageTemplate({
    required this.subject,
    required this.text,
    this.html,
    this.from,
    this.replyTo,
    this.headers,
    this.safety,
  });
  factory RenderedEmailMessageTemplate.fromJson(Map<String, Object?> json) =>
      RenderedEmailMessageTemplate(
        subject: json["subject"] as String,
        text: json["text"] as String,
        html: json["html"] == null ? null : json["html"] as String,
        from: json["from"] == null
            ? null
            : MessageTemplateMailbox.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : MessageTemplateMailbox.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : MessageHeaders.fromJson(json["headers"]),
        safety: json["safety"] == null
            ? null
            : MessageTemplateSafetyResult.fromJson(
                (json["safety"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "subject": _encodeValue(subject),
        "text": _encodeValue(text),
        if (html != null) "html": _encodeValue(html),
        if (from != null) "from": _encodeValue(from),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
        if (safety != null) "safety": _encodeValue(safety),
      };
}

/// Typed Inttegro domain value.
final class RenderedMessageTemplate implements _InttegroValue {
  final MessageTemplateChannel channel;
  final List<String>? attachments;
  final RenderedSMSMessageTemplate? sms;
  final RenderedEmailMessageTemplate? email;
  const RenderedMessageTemplate({
    required this.channel,
    this.attachments,
    this.sms,
    this.email,
  });
  factory RenderedMessageTemplate.fromJson(Map<String, Object?> json) =>
      RenderedMessageTemplate(
        channel: MessageTemplateChannel.fromJson(json["channel"]),
        attachments: json["attachments"] == null
            ? null
            : (json["attachments"] as List)
                .map((item) => item as String)
                .toList(),
        sms: json["sms"] == null
            ? null
            : RenderedSMSMessageTemplate.fromJson(
                (json["sms"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : RenderedEmailMessageTemplate.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "channel": _encodeValue(channel),
        if (attachments != null) "attachments": _encodeValue(attachments),
        if (sms != null) "sms": _encodeValue(sms),
        if (email != null) "email": _encodeValue(email),
      };
}

/// Typed Inttegro domain value.
final class RenderedSMSMessageTemplate implements _InttegroValue {
  final String fullMessage;
  const RenderedSMSMessageTemplate({required this.fullMessage});
  factory RenderedSMSMessageTemplate.fromJson(Map<String, Object?> json) =>
      RenderedSMSMessageTemplate(fullMessage: json["full_message"] as String);
  @override
  Map<String, Object?> toJson() => {"full_message": _encodeValue(fullMessage)};
}

/// Typed Inttegro request parameters.
final class RequestConfirmationRequest implements _InttegroValue {
  final String orderId;
  const RequestConfirmationRequest({required this.orderId});
  factory RequestConfirmationRequest.fromJson(Map<String, Object?> json) =>
      RequestConfirmationRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": _encodeValue(orderId)};
}

/// Typed Inttegro domain value.
final class ResourceSupply implements _InttegroValue {
  final String? attemptId;
  final String by;
  final String? channel;
  final String? resourceId;
  final String? resourceType;
  final DateTime suppliedAt;
  const ResourceSupply({
    this.attemptId,
    required this.by,
    this.channel,
    this.resourceId,
    this.resourceType,
    required this.suppliedAt,
  });
  factory ResourceSupply.fromJson(Map<String, Object?> json) => ResourceSupply(
        attemptId:
            json["attempt_id"] == null ? null : json["attempt_id"] as String,
        by: json["by"] as String,
        channel: json["channel"] == null ? null : json["channel"] as String,
        resourceId:
            json["resource_id"] == null ? null : json["resource_id"] as String,
        resourceType: json["resource_type"] == null
            ? null
            : json["resource_type"] as String,
        suppliedAt: _decodeDateTime(json["supplied_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (attemptId != null) "attempt_id": _encodeValue(attemptId),
        "by": _encodeValue(by),
        if (channel != null) "channel": _encodeValue(channel),
        if (resourceId != null) "resource_id": _encodeValue(resourceId),
        if (resourceType != null) "resource_type": _encodeValue(resourceType),
        "supplied_at": _encodeValue(suppliedAt),
      };
}

/// Typed Inttegro request parameters.
final class ReviewUploadRequestAttemptByIDRequest implements _InttegroValue {
  final String? publicMessage;
  final List<UploadRequestReviewReasonInput>? reasons;
  final String attemptId;
  final UploadReviewDecision decision;
  final String id;
  const ReviewUploadRequestAttemptByIDRequest({
    this.publicMessage,
    this.reasons,
    required this.attemptId,
    required this.decision,
    required this.id,
  });
  factory ReviewUploadRequestAttemptByIDRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      ReviewUploadRequestAttemptByIDRequest(
        publicMessage: json["public_message"] == null
            ? null
            : json["public_message"] as String,
        reasons: json["reasons"] == null
            ? null
            : (json["reasons"] as List)
                .map(
                  (item) => UploadRequestReviewReasonInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        attemptId: json["attempt_id"] as String,
        decision: UploadReviewDecision.fromJson(json["decision"]),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (publicMessage != null)
          "public_message": _encodeValue(publicMessage),
        if (reasons != null) "reasons": _encodeValue(reasons),
        "attempt_id": _encodeValue(attemptId),
        "decision": _encodeValue(decision),
        "id": _encodeValue(id),
      };
}

/// Typed Inttegro request parameters.
final class ReviewUploadRequestAttemptByOrdinalRequest
    implements _InttegroValue {
  final String? publicMessage;
  final List<UploadRequestReviewReasonInput>? reasons;
  final int attemptOrdinal;
  final UploadReviewDecision decision;
  final String id;
  const ReviewUploadRequestAttemptByOrdinalRequest({
    this.publicMessage,
    this.reasons,
    required this.attemptOrdinal,
    required this.decision,
    required this.id,
  });
  factory ReviewUploadRequestAttemptByOrdinalRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      ReviewUploadRequestAttemptByOrdinalRequest(
        publicMessage: json["public_message"] == null
            ? null
            : json["public_message"] as String,
        reasons: json["reasons"] == null
            ? null
            : (json["reasons"] as List)
                .map(
                  (item) => UploadRequestReviewReasonInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        attemptOrdinal: (json["attempt_ordinal"] as num).toInt(),
        decision: UploadReviewDecision.fromJson(json["decision"]),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (publicMessage != null)
          "public_message": _encodeValue(publicMessage),
        if (reasons != null) "reasons": _encodeValue(reasons),
        "attempt_ordinal": _encodeValue(attemptOrdinal),
        "decision": _encodeValue(decision),
        "id": _encodeValue(id),
      };
}

/// Typed Inttegro request parameters.
final class RevokeFileLinkRequest implements _InttegroValue {
  final FileActorInput? revokedBy;
  final String id;
  const RevokeFileLinkRequest({this.revokedBy, required this.id});
  factory RevokeFileLinkRequest.fromJson(Map<String, Object?> json) =>
      RevokeFileLinkRequest(
        revokedBy: json["revoked_by"] == null
            ? null
            : FileActorInput.fromJson(
                (json["revoked_by"] as Map).cast<String, Object?>(),
              ),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (revokedBy != null) "revoked_by": _encodeValue(revokedBy),
        "id": _encodeValue(id),
      };
}

/// Typed Inttegro domain value.
final class ScheduleCancelDetail implements _InttegroValue {
  final List<String>? chimeIds;
  final String content;
  final DateTime createdAt;
  final List<String>? customerIds;
  final ChimeEmailMessage? email;
  final List<ScheduleError>? errors;
  final DateTime? executedAt;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String> recipients;
  final DateTime sendAfter;
  final String senderId;
  final DateTime? canceledAt;
  const ScheduleCancelDetail({
    this.chimeIds,
    required this.content,
    required this.createdAt,
    this.customerIds,
    this.email,
    this.errors,
    this.executedAt,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
    required this.senderId,
    this.canceledAt,
  });
  factory ScheduleCancelDetail.fromJson(
    Map<String, Object?> json,
  ) =>
      ScheduleCancelDetail(
        chimeIds: json["chime_ids"] == null
            ? null
            : (json["chime_ids"] as List)
                .map((item) => item as String)
                .toList(),
        content: json["content"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        customerIds: json["customer_ids"] == null
            ? null
            : (json["customer_ids"] as List)
                .map((item) => item as String)
                .toList(),
        email: json["email"] == null
            ? null
            : ChimeEmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        errors: json["errors"] == null
            ? null
            : (json["errors"] as List)
                .map(
                  (item) => ScheduleError.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients:
            (json["recipients"] as List).map((item) => item as String).toList(),
        sendAfter: _decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (chimeIds != null) "chime_ids": _encodeValue(chimeIds),
        "content": _encodeValue(content),
        "created_at": _encodeValue(createdAt),
        if (customerIds != null) "customer_ids": _encodeValue(customerIds),
        if (email != null) "email": _encodeValue(email),
        if (errors != null) "errors": _encodeValue(errors),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
        "sender_id": _encodeValue(senderId),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
      };
}

/// Typed Inttegro request parameters.
final class ScheduleChimeRequest implements _InttegroValue {
  final ScheduleChimeRequestRequestMeta? requestMeta;
  final String? fullMessage;
  final ChimeEmailMessageInput? email;
  final MessageTemplateReferenceInput? messageTemplate;
  final String? senderId;
  final String? purpose;
  final List<Object?> recipients;
  final DateTime sendAfter;
  const ScheduleChimeRequest({
    this.requestMeta,
    this.fullMessage,
    this.email,
    this.messageTemplate,
    this.senderId,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
  });
  factory ScheduleChimeRequest.fromJson(Map<String, Object?> json) =>
      ScheduleChimeRequest(
        requestMeta: json["request_meta"] == null
            ? null
            : ScheduleChimeRequestRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        fullMessage: json["full_message"] == null
            ? null
            : json["full_message"] as String,
        email: json["email"] == null
            ? null
            : ChimeEmailMessageInput.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        messageTemplate: json["message_template"] == null
            ? null
            : MessageTemplateReferenceInput.fromJson(
                (json["message_template"] as Map).cast<String, Object?>(),
              ),
        senderId:
            json["sender_id"] == null ? null : json["sender_id"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients: (json["recipients"] as List).map((item) => item).toList(),
        sendAfter: _decodeDateTime(json["send_after"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        if (fullMessage != null) "full_message": _encodeValue(fullMessage),
        if (email != null) "email": _encodeValue(email),
        if (messageTemplate != null)
          "message_template": _encodeValue(messageTemplate),
        if (senderId != null) "sender_id": _encodeValue(senderId),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
      };
}

/// Typed Inttegro request parameters.
final class ScheduleChimeRequestRequestMeta implements _InttegroValue {
  final String? idempotencyKey;
  const ScheduleChimeRequestRequestMeta({this.idempotencyKey});
  factory ScheduleChimeRequestRequestMeta.fromJson(Map<String, Object?> json) =>
      ScheduleChimeRequestRequestMeta(
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
      };
}

/// Typed Inttegro domain value.
final class ScheduleCreationDetail implements _InttegroValue {
  final DateTime createdAt;
  final List<String>? customerIds;
  final ChimeEmailMessage? email;
  final DateTime? executedAt;
  final String fullMessage;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String>? recipients;
  final DateTime sendAfter;
  final String senderId;
  const ScheduleCreationDetail({
    required this.createdAt,
    this.customerIds,
    this.email,
    this.executedAt,
    required this.fullMessage,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    this.recipients,
    required this.sendAfter,
    required this.senderId,
  });
  factory ScheduleCreationDetail.fromJson(
    Map<String, Object?> json,
  ) =>
      ScheduleCreationDetail(
        createdAt: _decodeDateTime(json["created_at"]),
        customerIds: json["customer_ids"] == null
            ? null
            : (json["customer_ids"] as List)
                .map((item) => item as String)
                .toList(),
        email: json["email"] == null
            ? null
            : ChimeEmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        fullMessage: json["full_message"] as String,
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients: json["recipients"] == null
            ? null
            : (json["recipients"] as List)
                .map((item) => item as String)
                .toList(),
        sendAfter: _decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        if (customerIds != null) "customer_ids": _encodeValue(customerIds),
        if (email != null) "email": _encodeValue(email),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        "full_message": _encodeValue(fullMessage),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (recipients != null) "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
        "sender_id": _encodeValue(senderId),
      };
}

/// Typed Inttegro domain value.
final class ScheduleDetail implements _InttegroValue {
  final List<String>? chimeIds;
  final String content;
  final DateTime createdAt;
  final List<String>? customerIds;
  final ChimeEmailMessage? email;
  final List<ScheduleError>? errors;
  final DateTime? executedAt;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String> recipients;
  final DateTime sendAfter;
  final String senderId;
  const ScheduleDetail({
    this.chimeIds,
    required this.content,
    required this.createdAt,
    this.customerIds,
    this.email,
    this.errors,
    this.executedAt,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
    required this.senderId,
  });
  factory ScheduleDetail.fromJson(Map<String, Object?> json) => ScheduleDetail(
        chimeIds: json["chime_ids"] == null
            ? null
            : (json["chime_ids"] as List)
                .map((item) => item as String)
                .toList(),
        content: json["content"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        customerIds: json["customer_ids"] == null
            ? null
            : (json["customer_ids"] as List)
                .map((item) => item as String)
                .toList(),
        email: json["email"] == null
            ? null
            : ChimeEmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        errors: json["errors"] == null
            ? null
            : (json["errors"] as List)
                .map(
                  (item) => ScheduleError.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients:
            (json["recipients"] as List).map((item) => item as String).toList(),
        sendAfter: _decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (chimeIds != null) "chime_ids": _encodeValue(chimeIds),
        "content": _encodeValue(content),
        "created_at": _encodeValue(createdAt),
        if (customerIds != null) "customer_ids": _encodeValue(customerIds),
        if (email != null) "email": _encodeValue(email),
        if (errors != null) "errors": _encodeValue(errors),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
        "sender_id": _encodeValue(senderId),
      };
}

/// Typed Inttegro domain value.
final class ScheduleError implements _InttegroValue {
  final String? recipient;
  final String? fixCode;
  final String? type;
  const ScheduleError({this.recipient, this.fixCode, this.type});
  factory ScheduleError.fromJson(Map<String, Object?> json) => ScheduleError(
        recipient:
            json["recipient"] == null ? null : json["recipient"] as String,
        fixCode: json["fix_code"] == null ? null : json["fix_code"] as String,
        type: json["type"] == null ? null : json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (recipient != null) "recipient": _encodeValue(recipient),
        if (fixCode != null) "fix_code": _encodeValue(fixCode),
        if (type != null) "type": _encodeValue(type),
      };
}

/// Typed Inttegro request parameters.
final class SchedulePayoutRequest implements _InttegroValue {
  final DateTime? executeAfter;
  final int? maxAmount;
  final String destinationId;
  final String reference;
  const SchedulePayoutRequest({
    this.executeAfter,
    this.maxAmount,
    required this.destinationId,
    required this.reference,
  });
  factory SchedulePayoutRequest.fromJson(Map<String, Object?> json) =>
      SchedulePayoutRequest(
        executeAfter: json["execute_after"] == null
            ? null
            : _decodeDateTime(json["execute_after"]),
        maxAmount: json["max_amount"] == null
            ? null
            : (json["max_amount"] as num).toInt(),
        destinationId: json["destination_id"] as String,
        reference: json["reference"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (executeAfter != null) "execute_after": _encodeValue(executeAfter),
        if (maxAmount != null) "max_amount": _encodeValue(maxAmount),
        "destination_id": _encodeValue(destinationId),
        "reference": _encodeValue(reference),
      };
}

/// Typed Inttegro domain value.
final class SecretKey implements _InttegroValue {
  final String id;
  final String? label;
  final SecretKeyTokenType tokenType;
  final DateTime issuedAt;
  final DateTime? updatedAt;
  final DateTime? expiresAt;
  final SecretKeyStatus status;
  final bool active;
  final DateTime? revokedAt;
  final DateTime? lastUsedAt;
  final int? usageCount;
  const SecretKey({
    required this.id,
    this.label,
    required this.tokenType,
    required this.issuedAt,
    this.updatedAt,
    this.expiresAt,
    required this.status,
    required this.active,
    this.revokedAt,
    this.lastUsedAt,
    this.usageCount,
  });
  factory SecretKey.fromJson(Map<String, Object?> json) => SecretKey(
        id: json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        tokenType: SecretKeyTokenType.fromJson(json["token_type"]),
        issuedAt: _decodeDateTime(json["issued_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        status: SecretKeyStatus.fromJson(json["status"]),
        active: json["active"] as bool,
        revokedAt: json["revoked_at"] == null
            ? null
            : _decodeDateTime(json["revoked_at"]),
        lastUsedAt: json["last_used_at"] == null
            ? null
            : _decodeDateTime(json["last_used_at"]),
        usageCount: json["usage_count"] == null
            ? null
            : (json["usage_count"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        "token_type": _encodeValue(tokenType),
        "issued_at": _encodeValue(issuedAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "status": _encodeValue(status),
        "active": _encodeValue(active),
        if (revokedAt != null) "revoked_at": _encodeValue(revokedAt),
        if (lastUsedAt != null) "last_used_at": _encodeValue(lastUsedAt),
        if (usageCount != null) "usage_count": _encodeValue(usageCount),
      };
}

/// Typed Inttegro domain value.
final class SecretKeyPage implements _InttegroValue {
  final int number;
  final int size;
  final int count;
  final int total;
  final bool hasMore;
  final List<SecretKey> keys;
  const SecretKeyPage({
    required this.number,
    required this.size,
    required this.count,
    required this.total,
    required this.hasMore,
    required this.keys,
  });
  factory SecretKeyPage.fromJson(Map<String, Object?> json) => SecretKeyPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        count: (json["count"] as num).toInt(),
        total: (json["total"] as num).toInt(),
        hasMore: json["has_more"] as bool,
        keys: (json["keys"] as List)
            .map(
              (item) =>
                  SecretKey.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "count": _encodeValue(count),
        "total": _encodeValue(total),
        "has_more": _encodeValue(hasMore),
        "keys": _encodeValue(keys),
      };
}

/// Typed Inttegro domain value.
final class SecretKeyUsage implements _InttegroValue {
  final SecretKey key;
  final SecretKeyUsagePage usage;
  const SecretKeyUsage({required this.key, required this.usage});
  factory SecretKeyUsage.fromJson(Map<String, Object?> json) => SecretKeyUsage(
        key: SecretKey.fromJson((json["key"] as Map).cast<String, Object?>()),
        usage: SecretKeyUsagePage.fromJson(
          (json["usage"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "key": _encodeValue(key),
        "usage": _encodeValue(usage),
      };
}

/// Typed Inttegro domain value.
final class SecretKeyUsagePage implements _InttegroValue {
  final int number;
  final int size;
  final int count;
  final int total;
  final bool hasMore;
  final List<SecretKeyUsageRow> rows;
  const SecretKeyUsagePage({
    required this.number,
    required this.size,
    required this.count,
    required this.total,
    required this.hasMore,
    required this.rows,
  });
  factory SecretKeyUsagePage.fromJson(Map<String, Object?> json) =>
      SecretKeyUsagePage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        count: (json["count"] as num).toInt(),
        total: (json["total"] as num).toInt(),
        hasMore: json["has_more"] as bool,
        rows: (json["rows"] as List)
            .map(
              (item) => SecretKeyUsageRow.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "count": _encodeValue(count),
        "total": _encodeValue(total),
        "has_more": _encodeValue(hasMore),
        "rows": _encodeValue(rows),
      };
}

/// Typed Inttegro request parameters.
final class SecretKeyUsageRequest implements _InttegroValue {
  final int? number;
  final int? page;
  final int? size;
  final String secretKeyId;
  const SecretKeyUsageRequest({
    this.number,
    this.page,
    this.size,
    required this.secretKeyId,
  });
  factory SecretKeyUsageRequest.fromJson(Map<String, Object?> json) =>
      SecretKeyUsageRequest(
        number: json["number"] == null ? null : (json["number"] as num).toInt(),
        page: json["page"] == null ? null : (json["page"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
        secretKeyId: json["secret_key_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        if (page != null) "page": _encodeValue(page),
        if (size != null) "size": _encodeValue(size),
        "secret_key_id": _encodeValue(secretKeyId),
      };
}

/// Typed Inttegro domain value.
final class SecretKeyUsageRow implements _InttegroValue {
  final String secretKeyId;
  final DateTime occurredAt;
  final SecretKeyAuthResult authResult;
  const SecretKeyUsageRow({
    required this.secretKeyId,
    required this.occurredAt,
    required this.authResult,
  });
  factory SecretKeyUsageRow.fromJson(Map<String, Object?> json) =>
      SecretKeyUsageRow(
        secretKeyId: json["secret_key_id"] as String,
        occurredAt: _decodeDateTime(json["occurred_at"]),
        authResult: SecretKeyAuthResult.fromJson(json["auth_result"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "secret_key_id": _encodeValue(secretKeyId),
        "occurred_at": _encodeValue(occurredAt),
        "auth_result": _encodeValue(authResult),
      };
}

/// Typed Inttegro request parameters.
final class SendChimeRequest implements _InttegroValue {
  final String? fullMessage;
  final ChimeEmailMessageInput? email;
  final MessageTemplateReferenceInput? messageTemplate;
  final String? senderId;
  final String? purpose;
  final CustomData? customData;
  final SendChimeRequestRequestMeta? requestMeta;
  final SendChimeRequestRecipient recipient;
  const SendChimeRequest({
    this.fullMessage,
    this.email,
    this.messageTemplate,
    this.senderId,
    this.purpose,
    this.customData,
    this.requestMeta,
    required this.recipient,
  });
  factory SendChimeRequest.fromJson(Map<String, Object?> json) =>
      SendChimeRequest(
        fullMessage: json["full_message"] == null
            ? null
            : json["full_message"] as String,
        email: json["email"] == null
            ? null
            : ChimeEmailMessageInput.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        messageTemplate: json["message_template"] == null
            ? null
            : MessageTemplateReferenceInput.fromJson(
                (json["message_template"] as Map).cast<String, Object?>(),
              ),
        senderId:
            json["sender_id"] == null ? null : json["sender_id"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        requestMeta: json["request_meta"] == null
            ? null
            : SendChimeRequestRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        recipient: SendChimeRequestRecipient.fromJson(json["recipient"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (fullMessage != null) "full_message": _encodeValue(fullMessage),
        if (email != null) "email": _encodeValue(email),
        if (messageTemplate != null)
          "message_template": _encodeValue(messageTemplate),
        if (senderId != null) "sender_id": _encodeValue(senderId),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        "recipient": _encodeValue(recipient),
      };
}

/// Typed Inttegro request parameters.
final class SendChimeRequestRequestMeta implements _InttegroValue {
  final String? idempotencyKey;
  const SendChimeRequestRequestMeta({this.idempotencyKey});
  factory SendChimeRequestRequestMeta.fromJson(Map<String, Object?> json) =>
      SendChimeRequestRequestMeta(
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
      };
}

/// Typed Inttegro request parameters.
final class SetPayoutDestinationsRequest implements _InttegroValue {
  final PayoutDestinations destinations;
  const SetPayoutDestinationsRequest({required this.destinations});
  factory SetPayoutDestinationsRequest.fromJson(Map<String, Object?> json) =>
      SetPayoutDestinationsRequest(
        destinations: PayoutDestinations.fromJson(json["destinations"]),
      );
  @override
  Map<String, Object?> toJson() => {"destinations": _encodeValue(destinations)};
}

/// Typed Inttegro request parameters.
final class ShippingDetailsInput implements _InttegroValue {
  final String? id;
  final String? taxCode;
  final CustomDataInput? customData;
  final AmountParams fee;
  const ShippingDetailsInput({
    this.id,
    this.taxCode,
    this.customData,
    required this.fee,
  });
  factory ShippingDetailsInput.fromJson(Map<String, Object?> json) =>
      ShippingDetailsInput(
        id: json["id"] == null ? null : json["id"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        fee: AmountParams.fromJson(
          (json["fee"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (customData != null) "custom_data": _encodeValue(customData),
        "fee": _encodeValue(fee),
      };
}

/// Typed Inttegro request parameters.
final class ShippingInput implements _InttegroValue {
  final AddressInput address;
  const ShippingInput({required this.address});
  factory ShippingInput.fromJson(Map<String, Object?> json) => ShippingInput(
        address: AddressInput.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {"address": _encodeValue(address)};
}

/// Typed Inttegro request parameters.
final class ShippingLineItemInput implements _InttegroValue {
  final LineItemType type;
  final ShippingDetailsInput shipping;
  const ShippingLineItemInput({required this.type, required this.shipping});
  factory ShippingLineItemInput.fromJson(Map<String, Object?> json) =>
      ShippingLineItemInput(
        type: LineItemType.fromJson(json["type"]),
        shipping: ShippingDetailsInput.fromJson(
          (json["shipping"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "shipping": _encodeValue(shipping),
      };
}

/// Typed Inttegro request parameters.
final class TokenizeMobileMoneyPaymentMethodRequest implements _InttegroValue {
  final CustomData? customData;
  final String customerId;
  final PaymentMethodType type;
  final TokenizeMobileMoneyPaymentMethodRequestMobileMoney mobileMoney;
  final PaymentMethodOwnerInput owner;
  const TokenizeMobileMoneyPaymentMethodRequest({
    this.customData,
    required this.customerId,
    required this.type,
    required this.mobileMoney,
    required this.owner,
  });
  factory TokenizeMobileMoneyPaymentMethodRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      TokenizeMobileMoneyPaymentMethodRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        customerId: json["customer_id"] as String,
        type: PaymentMethodType.fromJson(json["type"]),
        mobileMoney:
            TokenizeMobileMoneyPaymentMethodRequestMobileMoney.fromJson(
          (json["mobile_money"] as Map).cast<String, Object?>(),
        ),
        owner: PaymentMethodOwnerInput.fromJson(
          (json["owner"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        "customer_id": _encodeValue(customerId),
        "type": _encodeValue(type),
        "mobile_money": _encodeValue(mobileMoney),
        "owner": _encodeValue(owner),
      };
}

/// Typed Inttegro request parameters.
final class TokenizeMobileMoneyPaymentMethodRequestMobileMoney
    implements _InttegroValue {
  final String accountNumber;
  final MobileMoneyNetwork network;
  const TokenizeMobileMoneyPaymentMethodRequestMobileMoney({
    required this.accountNumber,
    required this.network,
  });
  factory TokenizeMobileMoneyPaymentMethodRequestMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      TokenizeMobileMoneyPaymentMethodRequestMobileMoney(
        accountNumber: json["account_number"] as String,
        network: MobileMoneyNetwork.fromJson(json["network"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        "network": _encodeValue(network),
      };
}

/// Typed Inttegro request parameters.
final class UnarchivePaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const UnarchivePaymentMethodRequest({required this.paymentMethodId});
  factory UnarchivePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      UnarchivePaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}

/// Typed Inttegro request parameters.
final class UpdateApplicationRequest implements _InttegroValue {
  final String? name;
  final String? alias;
  final String? description;
  final String? legalEntityType;
  const UpdateApplicationRequest({
    this.name,
    this.alias,
    this.description,
    this.legalEntityType,
  });
  factory UpdateApplicationRequest.fromJson(Map<String, Object?> json) =>
      UpdateApplicationRequest(
        name: json["name"] == null ? null : json["name"] as String,
        alias: json["alias"] == null ? null : json["alias"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        legalEntityType: json["legal_entity_type"] == null
            ? null
            : json["legal_entity_type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (alias != null) "alias": _encodeValue(alias),
        if (description != null) "description": _encodeValue(description),
        if (legalEntityType != null)
          "legal_entity_type": _encodeValue(legalEntityType),
      };
}

/// Typed Inttegro request parameters.
final class UpdateCustomerRequest implements _InttegroValue {
  final CustomerAddressInput? billingAddress;
  final CustomDataPatch? customData;
  final String? emailAddress;
  final String? name;
  final String? phoneNumber;
  final String? reference;
  final CustomerAddressInput? shippingAddress;
  final String? suffix;
  final String? title;
  final String customerId;
  const UpdateCustomerRequest({
    this.billingAddress,
    this.customData,
    this.emailAddress,
    this.name,
    this.phoneNumber,
    this.reference,
    this.shippingAddress,
    this.suffix,
    this.title,
    required this.customerId,
  });
  factory UpdateCustomerRequest.fromJson(Map<String, Object?> json) =>
      UpdateCustomerRequest(
        billingAddress: json["billing_address"] == null
            ? null
            : CustomerAddressInput.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomDataPatch.fromJson(json["custom_data"]),
        emailAddress: json["email_address"] == null
            ? null
            : json["email_address"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        shippingAddress: json["shipping_address"] == null
            ? null
            : CustomerAddressInput.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
        suffix: json["suffix"] == null ? null : json["suffix"] as String,
        title: json["title"] == null ? null : json["title"] as String,
        customerId: json["customer_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (billingAddress != null)
          "billing_address": _encodeValue(billingAddress),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (emailAddress != null) "email_address": _encodeValue(emailAddress),
        if (name != null) "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (reference != null) "reference": _encodeValue(reference),
        if (shippingAddress != null)
          "shipping_address": _encodeValue(shippingAddress),
        if (suffix != null) "suffix": _encodeValue(suffix),
        if (title != null) "title": _encodeValue(title),
        "customer_id": _encodeValue(customerId),
      };
}

/// Typed Inttegro request parameters.
final class UpdateMessageTemplateRequest implements _InttegroValue {
  final String? name;
  final String? about;
  final MessageTemplateChannel? channel;
  final String? purpose;
  final String? locale;
  final List<MessageTemplateVariableInput>? variables;
  final MessageTemplateSMSContentInput? sms;
  final MessageTemplateEmailContentInput? email;
  final List<String>? attachments;
  final String id;
  const UpdateMessageTemplateRequest({
    this.name,
    this.about,
    this.channel,
    this.purpose,
    this.locale,
    this.variables,
    this.sms,
    this.email,
    this.attachments,
    required this.id,
  });
  factory UpdateMessageTemplateRequest.fromJson(Map<String, Object?> json) =>
      UpdateMessageTemplateRequest(
        name: json["name"] == null ? null : json["name"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        channel: json["channel"] == null
            ? null
            : MessageTemplateChannel.fromJson(json["channel"]),
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        locale: json["locale"] == null ? null : json["locale"] as String,
        variables: json["variables"] == null
            ? null
            : (json["variables"] as List)
                .map(
                  (item) => MessageTemplateVariableInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        sms: json["sms"] == null
            ? null
            : MessageTemplateSMSContentInput.fromJson(
                (json["sms"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : MessageTemplateEmailContentInput.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        attachments: json["attachments"] == null
            ? null
            : (json["attachments"] as List)
                .map((item) => item as String)
                .toList(),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (about != null) "about": _encodeValue(about),
        if (channel != null) "channel": _encodeValue(channel),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (locale != null) "locale": _encodeValue(locale),
        if (variables != null) "variables": _encodeValue(variables),
        if (sms != null) "sms": _encodeValue(sms),
        if (email != null) "email": _encodeValue(email),
        if (attachments != null) "attachments": _encodeValue(attachments),
        "id": _encodeValue(id),
      };
}

/// Typed Inttegro request parameters.
final class UpdateOrderRequest implements _InttegroValue {
  final bool? clearPaymentMethod;
  final CustomData? customData;
  final InvoiceSettingsInput? invoiceSettings;
  final bool? finalize;
  final List<LineItemInput>? lineItems;
  final String? number;
  final String? receiptNumber;
  final UpdateOrderRequestPaymentMethodData? paymentMethodData;
  final String? paymentMethodId;
  final String? statementDescriptor;
  final String? statementDescriptorPrefix;
  final String orderId;
  const UpdateOrderRequest({
    this.clearPaymentMethod,
    this.customData,
    this.invoiceSettings,
    this.finalize,
    this.lineItems,
    this.number,
    this.receiptNumber,
    this.paymentMethodData,
    this.paymentMethodId,
    this.statementDescriptor,
    this.statementDescriptorPrefix,
    required this.orderId,
  });
  factory UpdateOrderRequest.fromJson(Map<String, Object?> json) =>
      UpdateOrderRequest(
        clearPaymentMethod: json["clear_payment_method"] == null
            ? null
            : json["clear_payment_method"] as bool,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        invoiceSettings: json["invoice_settings"] == null
            ? null
            : InvoiceSettingsInput.fromJson(
                (json["invoice_settings"] as Map).cast<String, Object?>(),
              ),
        finalize: json["finalize"] == null ? null : json["finalize"] as bool,
        lineItems: json["line_items"] == null
            ? null
            : (json["line_items"] as List).map(LineItemInput.fromJson).toList(),
        number: json["number"] == null ? null : json["number"] as String,
        receiptNumber: json["receipt_number"] == null
            ? null
            : json["receipt_number"] as String,
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : UpdateOrderRequestPaymentMethodData.fromJson(
                (json["payment_method_data"] as Map).cast<String, Object?>(),
              ),
        paymentMethodId: json["payment_method_id"] == null
            ? null
            : json["payment_method_id"] as String,
        statementDescriptor: json["statement_descriptor"] == null
            ? null
            : json["statement_descriptor"] as String,
        statementDescriptorPrefix: json["statement_descriptor_prefix"] == null
            ? null
            : json["statement_descriptor_prefix"] as String,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (clearPaymentMethod != null)
          "clear_payment_method": _encodeValue(clearPaymentMethod),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (invoiceSettings != null)
          "invoice_settings": _encodeValue(invoiceSettings),
        if (finalize != null) "finalize": _encodeValue(finalize),
        if (lineItems != null) "line_items": _encodeValue(lineItems),
        if (number != null) "number": _encodeValue(number),
        if (receiptNumber != null)
          "receipt_number": _encodeValue(receiptNumber),
        if (paymentMethodData != null)
          "payment_method_data": _encodeValue(paymentMethodData),
        if (paymentMethodId != null)
          "payment_method_id": _encodeValue(paymentMethodId),
        if (statementDescriptor != null)
          "statement_descriptor": _encodeValue(statementDescriptor),
        if (statementDescriptorPrefix != null)
          "statement_descriptor_prefix":
              _encodeValue(statementDescriptorPrefix),
        "order_id": _encodeValue(orderId),
      };
}

/// Typed Inttegro request parameters.
final class UpdateOrderRequestPaymentMethodData implements _InttegroValue {
  final UpdateOrderRequestPaymentMethodDataMobileMoney? mobileMoney;
  final PaymentMethodType type;
  const UpdateOrderRequestPaymentMethodData({
    this.mobileMoney,
    required this.type,
  });
  factory UpdateOrderRequestPaymentMethodData.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateOrderRequestPaymentMethodData(
        mobileMoney: json["mobile_money"] == null
            ? null
            : UpdateOrderRequestPaymentMethodDataMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        type: PaymentMethodType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro request parameters.
final class UpdateOrderRequestPaymentMethodDataMobileMoney
    implements _InttegroValue {
  final MobileMoneyNetwork network;
  final String accountNumber;
  const UpdateOrderRequestPaymentMethodDataMobileMoney({
    required this.network,
    required this.accountNumber,
  });
  factory UpdateOrderRequestPaymentMethodDataMobileMoney.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateOrderRequestPaymentMethodDataMobileMoney(
        network: MobileMoneyNetwork.fromJson(json["network"]),
        accountNumber: json["account_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "network": _encodeValue(network),
        "account_number": _encodeValue(accountNumber),
      };
}

/// Typed Inttegro request parameters.
final class UpdatePaymentMethodRequest implements _InttegroValue {
  final CustomDataPatch? customData;
  final bool? active;
  final bool? archived;
  final UpdatePaymentMethodRequestOwner? owner;
  final String paymentMethodId;
  const UpdatePaymentMethodRequest({
    this.customData,
    this.active,
    this.archived,
    this.owner,
    required this.paymentMethodId,
  });
  factory UpdatePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      UpdatePaymentMethodRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomDataPatch.fromJson(json["custom_data"]),
        active: json["active"] == null ? null : json["active"] as bool,
        archived: json["archived"] == null ? null : json["archived"] as bool,
        owner: json["owner"] == null
            ? null
            : UpdatePaymentMethodRequestOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (active != null) "active": _encodeValue(active),
        if (archived != null) "archived": _encodeValue(archived),
        if (owner != null) "owner": _encodeValue(owner),
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}

/// Typed Inttegro request parameters.
final class UpdatePaymentMethodRequestOwner implements _InttegroValue {
  final String? name;
  final UpdatePaymentMethodRequestOwnerAddress? address;
  const UpdatePaymentMethodRequestOwner({this.name, this.address});
  factory UpdatePaymentMethodRequestOwner.fromJson(Map<String, Object?> json) =>
      UpdatePaymentMethodRequestOwner(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null
            ? null
            : UpdatePaymentMethodRequestOwnerAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}

/// Typed Inttegro request parameters.
final class UpdatePaymentMethodRequestOwnerAddress implements _InttegroValue {
  final String? city;
  final String? country;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phoneNumber;
  final String? postCode;
  final String? region;
  const UpdatePaymentMethodRequestOwnerAddress({
    this.city,
    this.country,
    this.line1,
    this.line2,
    this.name,
    this.phoneNumber,
    this.postCode,
    this.region,
  });
  factory UpdatePaymentMethodRequestOwnerAddress.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdatePaymentMethodRequestOwnerAddress(
        city: json["city"] == null ? null : json["city"] as String,
        country: json["country"] == null ? null : json["country"] as String,
        line1: json["line1"] == null ? null : json["line1"] as String,
        line2: json["line2"] == null ? null : json["line2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] == null ? null : json["region"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (city != null) "city": _encodeValue(city),
        if (country != null) "country": _encodeValue(country),
        if (line1 != null) "line1": _encodeValue(line1),
        if (line2 != null) "line2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (postCode != null) "post_code": _encodeValue(postCode),
        if (region != null) "region": _encodeValue(region),
      };
}

/// Typed Inttegro request parameters.
final class UpdatePriceRequest implements _InttegroValue {
  final String? label;
  final String? about;
  final String priceId;
  const UpdatePriceRequest({this.label, this.about, required this.priceId});
  factory UpdatePriceRequest.fromJson(Map<String, Object?> json) =>
      UpdatePriceRequest(
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        priceId: json["price_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": _encodeValue(label),
        if (about != null) "about": _encodeValue(about),
        "price_id": _encodeValue(priceId),
      };
}

/// Typed Inttegro request parameters.
final class UpdateProductRequest implements _InttegroValue {
  final ProductType? type;
  final String? name;
  final String? description;
  final String? about;
  final String? taxCode;
  final String? category;
  final ProductShipmentInput? shipment;
  final ProductDimensionsInput? dimensions;
  final String? unitDimension;
  final ProductMediaInput? media;
  final List<String>? images;
  final List<ProductAttributeInput>? attributes;
  final CustomData? customData;
  final String productId;
  const UpdateProductRequest({
    this.type,
    this.name,
    this.description,
    this.about,
    this.taxCode,
    this.category,
    this.shipment,
    this.dimensions,
    this.unitDimension,
    this.media,
    this.images,
    this.attributes,
    this.customData,
    required this.productId,
  });
  factory UpdateProductRequest.fromJson(Map<String, Object?> json) =>
      UpdateProductRequest(
        type: json["type"] == null ? null : ProductType.fromJson(json["type"]),
        name: json["name"] == null ? null : json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        shipment: json["shipment"] == null
            ? null
            : ProductShipmentInput.fromJson(
                (json["shipment"] as Map).cast<String, Object?>(),
              ),
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensionsInput.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        unitDimension: json["unit_dimension"] == null
            ? null
            : json["unit_dimension"] as String,
        media: json["media"] == null
            ? null
            : ProductMediaInput.fromJson(
                (json["media"] as Map).cast<String, Object?>(),
              ),
        images: json["images"] == null
            ? null
            : (json["images"] as List).map((item) => item as String).toList(),
        attributes: json["attributes"] == null
            ? null
            : (json["attributes"] as List)
                .map(
                  (item) => ProductAttributeInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        productId: json["product_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (name != null) "name": _encodeValue(name),
        if (description != null) "description": _encodeValue(description),
        if (about != null) "about": _encodeValue(about),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (category != null) "category": _encodeValue(category),
        if (shipment != null) "shipment": _encodeValue(shipment),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (unitDimension != null)
          "unit_dimension": _encodeValue(unitDimension),
        if (media != null) "media": _encodeValue(media),
        if (images != null) "images": _encodeValue(images),
        if (attributes != null) "attributes": _encodeValue(attributes),
        if (customData != null) "custom_data": _encodeValue(customData),
        "product_id": _encodeValue(productId),
      };
}

/// Typed Inttegro request parameters.
final class UpdatePurchaseIntentRequest implements _InttegroValue {
  final DateTime? expiresAt;
  final String? id;
  final UpdatePurchaseIntentRequestQuantity? quantity;
  final String? purchaseIntentId;
  final bool? reactivate;
  const UpdatePurchaseIntentRequest({
    this.expiresAt,
    this.id,
    this.quantity,
    this.purchaseIntentId,
    this.reactivate,
  });
  factory UpdatePurchaseIntentRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdatePurchaseIntentRequest(
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        id: json["id"] == null ? null : json["id"] as String,
        quantity: json["quantity"] == null
            ? null
            : UpdatePurchaseIntentRequestQuantity.fromJson(
                (json["quantity"] as Map).cast<String, Object?>(),
              ),
        purchaseIntentId: json["purchase_intent_id"] == null
            ? null
            : json["purchase_intent_id"] as String,
        reactivate:
            json["reactivate"] == null ? null : json["reactivate"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        if (id != null) "id": _encodeValue(id),
        if (quantity != null) "quantity": _encodeValue(quantity),
        if (purchaseIntentId != null)
          "purchase_intent_id": _encodeValue(purchaseIntentId),
        if (reactivate != null) "reactivate": _encodeValue(reactivate),
      };
}

/// Typed Inttegro request parameters.
final class UpdatePurchaseIntentRequestQuantity implements _InttegroValue {
  final int? max;
  final int min;
  const UpdatePurchaseIntentRequestQuantity({this.max, required this.min});
  factory UpdatePurchaseIntentRequestQuantity.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdatePurchaseIntentRequestQuantity(
        max: json["max"] == null ? null : (json["max"] as num).toInt(),
        min: (json["min"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (max != null) "max": _encodeValue(max),
        "min": _encodeValue(min),
      };
}

/// Typed Inttegro request parameters.
final class UpdateSecretKeyRequest implements _InttegroValue {
  final String label;
  final String secretKeyId;
  const UpdateSecretKeyRequest({
    required this.label,
    required this.secretKeyId,
  });
  factory UpdateSecretKeyRequest.fromJson(Map<String, Object?> json) =>
      UpdateSecretKeyRequest(
        label: json["label"] as String,
        secretKeyId: json["secret_key_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "label": _encodeValue(label),
        "secret_key_id": _encodeValue(secretKeyId),
      };
}

/// Typed Inttegro domain value.
final class UpdatedProduct implements _InttegroValue {
  final String id;
  final String name;
  final String? description;
  final String? about;
  final ProductType type;
  final String? reference;
  final String? taxCode;
  final String? category;
  final CustomData? customData;
  final ProductDimensions? dimensions;
  final List<ProductPriceSummary>? prices;
  final String? unitDim;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const UpdatedProduct({
    required this.id,
    required this.name,
    this.description,
    this.about,
    required this.type,
    this.reference,
    this.taxCode,
    this.category,
    this.customData,
    this.dimensions,
    this.prices,
    this.unitDim,
    required this.createdAt,
    this.updatedAt,
  });
  factory UpdatedProduct.fromJson(Map<String, Object?> json) => UpdatedProduct(
        id: json["id"] as String,
        name: json["name"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        type: ProductType.fromJson(json["type"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        dimensions: json["dimensions"] == null
            ? null
            : ProductDimensions.fromJson(
                (json["dimensions"] as Map).cast<String, Object?>(),
              ),
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => ProductPriceSummary.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        unitDim: json["unit_dim"] == null ? null : json["unit_dim"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (description != null) "description": _encodeValue(description),
        if (about != null) "about": _encodeValue(about),
        "type": _encodeValue(type),
        if (reference != null) "reference": _encodeValue(reference),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        if (category != null) "category": _encodeValue(category),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (dimensions != null) "dimensions": _encodeValue(dimensions),
        if (prices != null) "prices": _encodeValue(prices),
        if (unitDim != null) "unit_dim": _encodeValue(unitDim),
        "created_at": _encodeValue(createdAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
      };
}

/// Typed Inttegro domain value.
final class UploadFulfillment implements _InttegroValue {
  final UploadRequest uploadRequest;
  final FileUploadReceipt file;
  const UploadFulfillment({required this.uploadRequest, required this.file});
  factory UploadFulfillment.fromJson(Map<String, Object?> json) =>
      UploadFulfillment(
        uploadRequest: UploadRequest.fromJson(
          (json["upload_request"] as Map).cast<String, Object?>(),
        ),
        file: FileUploadReceipt.fromJson(
          (json["file"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "upload_request": _encodeValue(uploadRequest),
        "file": _encodeValue(file),
      };
}

/// Typed Inttegro domain value.
final class UploadRequest implements _InttegroValue {
  final String id;
  final String purpose;
  final UploadRequestStatus status;
  final bool active;
  final String? fileId;
  final String? uploadUrl;
  final UploadRequestConstraints constraints;
  final UploadRequestDisplay display;
  final FileParty subject;
  final FileParty recipient;
  final FileResource resource;
  final UploadRequestActor requester;
  final UploadRequestAttempts attempts;
  final UploadRequestLatestError? latestError;
  final UploadRequestActor? canceledBy;
  final CustomData? customData;
  final FileMetadata? metadata;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime expiresAt;
  final DateTime? uploadingAt;
  final DateTime? fulfilledAt;
  final DateTime? expiredAt;
  final DateTime? canceledAt;
  final UploadRequestAttempt? attempt;
  const UploadRequest({
    required this.id,
    required this.purpose,
    required this.status,
    required this.active,
    this.fileId,
    this.uploadUrl,
    required this.constraints,
    required this.display,
    required this.subject,
    required this.recipient,
    required this.resource,
    required this.requester,
    required this.attempts,
    this.latestError,
    this.canceledBy,
    this.customData,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    required this.expiresAt,
    this.uploadingAt,
    this.fulfilledAt,
    this.expiredAt,
    this.canceledAt,
    this.attempt,
  });
  factory UploadRequest.fromJson(Map<String, Object?> json) => UploadRequest(
        id: json["id"] as String,
        purpose: json["purpose"] as String,
        status: UploadRequestStatus.fromJson(json["status"]),
        active: json["active"] as bool,
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        uploadUrl:
            json["upload_url"] == null ? null : json["upload_url"] as String,
        constraints: UploadRequestConstraints.fromJson(
          (json["constraints"] as Map).cast<String, Object?>(),
        ),
        display: UploadRequestDisplay.fromJson(
          (json["display"] as Map).cast<String, Object?>(),
        ),
        subject: FileParty.fromJson(
          (json["subject"] as Map).cast<String, Object?>(),
        ),
        recipient: FileParty.fromJson(
          (json["recipient"] as Map).cast<String, Object?>(),
        ),
        resource: FileResource.fromJson(
          (json["resource"] as Map).cast<String, Object?>(),
        ),
        requester: UploadRequestActor.fromJson(
          (json["requester"] as Map).cast<String, Object?>(),
        ),
        attempts: UploadRequestAttempts.fromJson(
          (json["attempts"] as Map).cast<String, Object?>(),
        ),
        latestError: json["latest_error"] == null
            ? null
            : UploadRequestLatestError.fromJson(
                (json["latest_error"] as Map).cast<String, Object?>(),
              ),
        canceledBy: json["canceled_by"] == null
            ? null
            : UploadRequestActor.fromJson(
                (json["canceled_by"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        metadata: json["metadata"] == null
            ? null
            : FileMetadata.fromJson(json["metadata"]),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: _decodeDateTime(json["updated_at"]),
        expiresAt: _decodeDateTime(json["expires_at"]),
        uploadingAt: json["uploading_at"] == null
            ? null
            : _decodeDateTime(json["uploading_at"]),
        fulfilledAt: json["fulfilled_at"] == null
            ? null
            : _decodeDateTime(json["fulfilled_at"]),
        expiredAt: json["expired_at"] == null
            ? null
            : _decodeDateTime(json["expired_at"]),
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        attempt: json["attempt"] == null
            ? null
            : UploadRequestAttempt.fromJson(
                (json["attempt"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "purpose": _encodeValue(purpose),
        "status": _encodeValue(status),
        "active": _encodeValue(active),
        if (fileId != null) "file_id": _encodeValue(fileId),
        if (uploadUrl != null) "upload_url": _encodeValue(uploadUrl),
        "constraints": _encodeValue(constraints),
        "display": _encodeValue(display),
        "subject": _encodeValue(subject),
        "recipient": _encodeValue(recipient),
        "resource": _encodeValue(resource),
        "requester": _encodeValue(requester),
        "attempts": _encodeValue(attempts),
        if (latestError != null) "latest_error": _encodeValue(latestError),
        if (canceledBy != null) "canceled_by": _encodeValue(canceledBy),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (metadata != null) "metadata": _encodeValue(metadata),
        "created_at": _encodeValue(createdAt),
        "updated_at": _encodeValue(updatedAt),
        "expires_at": _encodeValue(expiresAt),
        if (uploadingAt != null) "uploading_at": _encodeValue(uploadingAt),
        if (fulfilledAt != null) "fulfilled_at": _encodeValue(fulfilledAt),
        if (expiredAt != null) "expired_at": _encodeValue(expiredAt),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        if (attempt != null) "attempt": _encodeValue(attempt),
      };
}

/// Typed Inttegro domain value.
final class UploadRequestActor implements _InttegroValue {
  final String? email;
  final String? id;
  final String? name;
  final String type;
  const UploadRequestActor({
    this.email,
    this.id,
    this.name,
    required this.type,
  });
  factory UploadRequestActor.fromJson(Map<String, Object?> json) =>
      UploadRequestActor(
        email: json["email"] == null ? null : json["email"] as String,
        id: json["id"] == null ? null : json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (email != null) "email": _encodeValue(email),
        if (id != null) "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class UploadRequestAttempt implements _InttegroValue {
  final DateTime attemptedAt;
  final String? contentType;
  final int? declaredSize;
  final UploadRequestLatestError? error;
  final DateTime? failedAt;
  final String? fileId;
  final String? filename;
  final String id;
  final int ordinal;
  final UploadRequestReview? review;
  final String status;
  final DateTime? succeededAt;
  final String uploadRequestId;
  const UploadRequestAttempt({
    required this.attemptedAt,
    this.contentType,
    this.declaredSize,
    this.error,
    this.failedAt,
    this.fileId,
    this.filename,
    required this.id,
    required this.ordinal,
    this.review,
    required this.status,
    this.succeededAt,
    required this.uploadRequestId,
  });
  factory UploadRequestAttempt.fromJson(Map<String, Object?> json) =>
      UploadRequestAttempt(
        attemptedAt: _decodeDateTime(json["attempted_at"]),
        contentType: json["content_type"] == null
            ? null
            : json["content_type"] as String,
        declaredSize: json["declared_size"] == null
            ? null
            : (json["declared_size"] as num).toInt(),
        error: json["error"] == null
            ? null
            : UploadRequestLatestError.fromJson(
                (json["error"] as Map).cast<String, Object?>(),
              ),
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        filename: json["filename"] == null ? null : json["filename"] as String,
        id: json["id"] as String,
        ordinal: (json["ordinal"] as num).toInt(),
        review: json["review"] == null
            ? null
            : UploadRequestReview.fromJson(
                (json["review"] as Map).cast<String, Object?>(),
              ),
        status: json["status"] as String,
        succeededAt: json["succeeded_at"] == null
            ? null
            : _decodeDateTime(json["succeeded_at"]),
        uploadRequestId: json["upload_request_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "attempted_at": _encodeValue(attemptedAt),
        if (contentType != null) "content_type": _encodeValue(contentType),
        if (declaredSize != null) "declared_size": _encodeValue(declaredSize),
        if (error != null) "error": _encodeValue(error),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        if (fileId != null) "file_id": _encodeValue(fileId),
        if (filename != null) "filename": _encodeValue(filename),
        "id": _encodeValue(id),
        "ordinal": _encodeValue(ordinal),
        if (review != null) "review": _encodeValue(review),
        "status": _encodeValue(status),
        if (succeededAt != null) "succeeded_at": _encodeValue(succeededAt),
        "upload_request_id": _encodeValue(uploadRequestId),
      };
}

/// Typed Inttegro domain value.
final class UploadRequestAttempts implements _InttegroValue {
  final int? maxAttempts;
  final int attemptCount;
  final int failedAttemptCount;
  final DateTime? lastAttemptedAt;
  const UploadRequestAttempts({
    this.maxAttempts,
    required this.attemptCount,
    required this.failedAttemptCount,
    this.lastAttemptedAt,
  });
  factory UploadRequestAttempts.fromJson(Map<String, Object?> json) =>
      UploadRequestAttempts(
        maxAttempts: json["max_attempts"] == null
            ? null
            : (json["max_attempts"] as num).toInt(),
        attemptCount: (json["attempt_count"] as num).toInt(),
        failedAttemptCount: (json["failed_attempt_count"] as num).toInt(),
        lastAttemptedAt: json["last_attempted_at"] == null
            ? null
            : _decodeDateTime(json["last_attempted_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAttempts != null) "max_attempts": _encodeValue(maxAttempts),
        "attempt_count": _encodeValue(attemptCount),
        "failed_attempt_count": _encodeValue(failedAttemptCount),
        if (lastAttemptedAt != null)
          "last_attempted_at": _encodeValue(lastAttemptedAt),
      };
}

/// Typed Inttegro request parameters.
final class UploadRequestAttemptsRequest implements _InttegroValue {
  final int? maxAttempts;
  const UploadRequestAttemptsRequest({this.maxAttempts});
  factory UploadRequestAttemptsRequest.fromJson(Map<String, Object?> json) =>
      UploadRequestAttemptsRequest(
        maxAttempts: json["max_attempts"] == null
            ? null
            : (json["max_attempts"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAttempts != null) "max_attempts": _encodeValue(maxAttempts),
      };
}

/// Typed Inttegro domain value.
final class UploadRequestConstraints implements _InttegroValue {
  final int? minSize;
  final int? maxSize;
  final int? exactSize;
  final List<String>? contentTypes;
  final List<String>? extensions;
  final String? filename;
  const UploadRequestConstraints({
    this.minSize,
    this.maxSize,
    this.exactSize,
    this.contentTypes,
    this.extensions,
    this.filename,
  });
  factory UploadRequestConstraints.fromJson(Map<String, Object?> json) =>
      UploadRequestConstraints(
        minSize:
            json["min_size"] == null ? null : (json["min_size"] as num).toInt(),
        maxSize:
            json["max_size"] == null ? null : (json["max_size"] as num).toInt(),
        exactSize: json["exact_size"] == null
            ? null
            : (json["exact_size"] as num).toInt(),
        contentTypes: json["content_types"] == null
            ? null
            : (json["content_types"] as List)
                .map((item) => item as String)
                .toList(),
        extensions: json["extensions"] == null
            ? null
            : (json["extensions"] as List)
                .map((item) => item as String)
                .toList(),
        filename: json["filename"] == null ? null : json["filename"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (minSize != null) "min_size": _encodeValue(minSize),
        if (maxSize != null) "max_size": _encodeValue(maxSize),
        if (exactSize != null) "exact_size": _encodeValue(exactSize),
        if (contentTypes != null) "content_types": _encodeValue(contentTypes),
        if (extensions != null) "extensions": _encodeValue(extensions),
        if (filename != null) "filename": _encodeValue(filename),
      };
}

/// Typed Inttegro request parameters.
final class UploadRequestConstraintsInput implements _InttegroValue {
  final int? minSize;
  final int? maxSize;
  final int? exactSize;
  final List<String>? contentTypes;
  final List<String>? extensions;
  final String? filename;
  const UploadRequestConstraintsInput({
    this.minSize,
    this.maxSize,
    this.exactSize,
    this.contentTypes,
    this.extensions,
    this.filename,
  });
  factory UploadRequestConstraintsInput.fromJson(Map<String, Object?> json) =>
      UploadRequestConstraintsInput(
        minSize:
            json["min_size"] == null ? null : (json["min_size"] as num).toInt(),
        maxSize:
            json["max_size"] == null ? null : (json["max_size"] as num).toInt(),
        exactSize: json["exact_size"] == null
            ? null
            : (json["exact_size"] as num).toInt(),
        contentTypes: json["content_types"] == null
            ? null
            : (json["content_types"] as List)
                .map((item) => item as String)
                .toList(),
        extensions: json["extensions"] == null
            ? null
            : (json["extensions"] as List)
                .map((item) => item as String)
                .toList(),
        filename: json["filename"] == null ? null : json["filename"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (minSize != null) "min_size": _encodeValue(minSize),
        if (maxSize != null) "max_size": _encodeValue(maxSize),
        if (exactSize != null) "exact_size": _encodeValue(exactSize),
        if (contentTypes != null) "content_types": _encodeValue(contentTypes),
        if (extensions != null) "extensions": _encodeValue(extensions),
        if (filename != null) "filename": _encodeValue(filename),
      };
}

/// Typed Inttegro domain value.
final class UploadRequestDisplay implements _InttegroValue {
  final String? title;
  final String? description;
  final String? helpText;
  const UploadRequestDisplay({this.title, this.description, this.helpText});
  factory UploadRequestDisplay.fromJson(Map<String, Object?> json) =>
      UploadRequestDisplay(
        title: json["title"] == null ? null : json["title"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        helpText:
            json["help_text"] == null ? null : json["help_text"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (title != null) "title": _encodeValue(title),
        if (description != null) "description": _encodeValue(description),
        if (helpText != null) "help_text": _encodeValue(helpText),
      };
}

/// Typed Inttegro request parameters.
final class UploadRequestDisplayInput implements _InttegroValue {
  final String? title;
  final String? description;
  final String? helpText;
  const UploadRequestDisplayInput({
    this.title,
    this.description,
    this.helpText,
  });
  factory UploadRequestDisplayInput.fromJson(Map<String, Object?> json) =>
      UploadRequestDisplayInput(
        title: json["title"] == null ? null : json["title"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        helpText:
            json["help_text"] == null ? null : json["help_text"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (title != null) "title": _encodeValue(title),
        if (description != null) "description": _encodeValue(description),
        if (helpText != null) "help_text": _encodeValue(helpText),
      };
}

/// Typed Inttegro domain value.
final class UploadRequestLatestError implements _InttegroValue {
  final String? code;
  final String? param;
  final String? message;
  final bool? retryable;
  final DateTime? at;
  const UploadRequestLatestError({
    this.code,
    this.param,
    this.message,
    this.retryable,
    this.at,
  });
  factory UploadRequestLatestError.fromJson(Map<String, Object?> json) =>
      UploadRequestLatestError(
        code: json["code"] == null ? null : json["code"] as String,
        param: json["param"] == null ? null : json["param"] as String,
        message: json["message"] == null ? null : json["message"] as String,
        retryable: json["retryable"] == null ? null : json["retryable"] as bool,
        at: json["at"] == null ? null : _decodeDateTime(json["at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (code != null) "code": _encodeValue(code),
        if (param != null) "param": _encodeValue(param),
        if (message != null) "message": _encodeValue(message),
        if (retryable != null) "retryable": _encodeValue(retryable),
        if (at != null) "at": _encodeValue(at),
      };
}

/// Typed Inttegro domain value.
final class UploadRequestPage implements _InttegroValue {
  final int number;
  final int size;
  final List<UploadRequest> uploadRequests;
  const UploadRequestPage({
    required this.number,
    required this.size,
    required this.uploadRequests,
  });
  factory UploadRequestPage.fromJson(Map<String, Object?> json) =>
      UploadRequestPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        uploadRequests: (json["upload_requests"] as List)
            .map(
              (item) =>
                  UploadRequest.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "upload_requests": _encodeValue(uploadRequests),
      };
}

/// Typed Inttegro domain value.
final class UploadRequestReview implements _InttegroValue {
  final DateTime createdAt;
  final UploadReviewDecision decision;
  final String? fileId;
  final String? publicMessage;
  final List<UploadRequestReviewReason>? reasons;
  final DateTime reviewedAt;
  final UploadReviewType type;
  const UploadRequestReview({
    required this.createdAt,
    required this.decision,
    this.fileId,
    this.publicMessage,
    this.reasons,
    required this.reviewedAt,
    required this.type,
  });
  factory UploadRequestReview.fromJson(Map<String, Object?> json) =>
      UploadRequestReview(
        createdAt: _decodeDateTime(json["created_at"]),
        decision: UploadReviewDecision.fromJson(json["decision"]),
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        publicMessage: json["public_message"] == null
            ? null
            : json["public_message"] as String,
        reasons: json["reasons"] == null
            ? null
            : (json["reasons"] as List)
                .map(
                  (item) => UploadRequestReviewReason.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        reviewedAt: _decodeDateTime(json["reviewed_at"]),
        type: UploadReviewType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        "decision": _encodeValue(decision),
        if (fileId != null) "file_id": _encodeValue(fileId),
        if (publicMessage != null)
          "public_message": _encodeValue(publicMessage),
        if (reasons != null) "reasons": _encodeValue(reasons),
        "reviewed_at": _encodeValue(reviewedAt),
        "type": _encodeValue(type),
      };
}

/// Typed Inttegro domain value.
final class UploadRequestReviewReason implements _InttegroValue {
  final String code;
  final String message;
  final String? param;
  const UploadRequestReviewReason({
    required this.code,
    required this.message,
    this.param,
  });
  factory UploadRequestReviewReason.fromJson(Map<String, Object?> json) =>
      UploadRequestReviewReason(
        code: json["code"] as String,
        message: json["message"] as String,
        param: json["param"] == null ? null : json["param"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "code": _encodeValue(code),
        "message": _encodeValue(message),
        if (param != null) "param": _encodeValue(param),
      };
}

/// Typed Inttegro request parameters.
final class UploadRequestReviewReasonInput implements _InttegroValue {
  final String? param;
  final String code;
  final String message;
  const UploadRequestReviewReasonInput({
    this.param,
    required this.code,
    required this.message,
  });
  factory UploadRequestReviewReasonInput.fromJson(Map<String, Object?> json) =>
      UploadRequestReviewReasonInput(
        param: json["param"] == null ? null : json["param"] as String,
        code: json["code"] as String,
        message: json["message"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (param != null) "param": _encodeValue(param),
        "code": _encodeValue(code),
        "message": _encodeValue(message),
      };
}

/// Typed Inttegro request parameters.
final class VerifyOTPRequest implements _InttegroValue {
  final String transactionId;
  final String recipient;
  final String token;
  const VerifyOTPRequest({
    required this.transactionId,
    required this.recipient,
    required this.token,
  });
  factory VerifyOTPRequest.fromJson(Map<String, Object?> json) =>
      VerifyOTPRequest(
        transactionId: json["transaction_id"] as String,
        recipient: json["recipient"] as String,
        token: json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "transaction_id": _encodeValue(transactionId),
        "recipient": _encodeValue(recipient),
        "token": _encodeValue(token),
      };
}
