part of '../../financial_account.dart';

/// A request to create a wallet, bank, or Dosh financial account.
///
/// Construct the matching variant—[WalletCreateRequest],
/// [BankCreateRequest], or [DoshCreateRequest]—and pass it to the core client's
/// `financialAccounts.create` method.
sealed class CreateRequest implements InttegroValue {
  const CreateRequest();
  factory CreateRequest.fromJson(Object? json) {
    try {
      return WalletCreateRequest(
        WalletRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return BankCreateRequest(
        BankRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return DoshCreateRequest(
        DoshRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported CreateRequest value');
  }
}
