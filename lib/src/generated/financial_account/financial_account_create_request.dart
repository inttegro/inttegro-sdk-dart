part of '../../../inttegro.dart';

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
