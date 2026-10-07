part of '../../financial_account.dart';

/// The wallet variant of [CreateRequest].
///
/// [value] contains the wallet details, owner, currency, and optional pull or
/// push configuration sent when the financial account is created.
final class WalletCreateRequest extends CreateRequest {
  final WalletRequest value;
  const WalletCreateRequest(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
