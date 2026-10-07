part of '../../financial_account.dart';

/// The bank-account variant of [CreateRequest].
///
/// [value] contains the bank details, owner, currency, and optional pull or
/// push configuration sent when the financial account is created.
final class BankCreateRequest extends CreateRequest {
  final BankRequest value;
  const BankCreateRequest(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
