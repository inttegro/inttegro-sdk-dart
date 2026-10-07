part of '../../../inttegro.dart';

final class FinancialAccountCreateRequestFinancialAccountDoshRequest
    extends FinancialAccountCreateRequest {
  final FinancialAccountDoshRequest value;
  const FinancialAccountCreateRequestFinancialAccountDoshRequest(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
