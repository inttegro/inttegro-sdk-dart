part of '../../../inttegro.dart';

final class FinancialAccountCreateRequestFinancialAccountWalletRequest
    extends FinancialAccountCreateRequest {
  final FinancialAccountWalletRequest value;
  const FinancialAccountCreateRequestFinancialAccountWalletRequest(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
