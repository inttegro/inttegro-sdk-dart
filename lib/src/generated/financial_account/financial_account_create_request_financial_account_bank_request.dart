part of '../../../inttegro.dart';

final class FinancialAccountCreateRequestFinancialAccountBankRequest
    extends FinancialAccountCreateRequest {
  final FinancialAccountBankRequest value;
  const FinancialAccountCreateRequestFinancialAccountBankRequest(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
