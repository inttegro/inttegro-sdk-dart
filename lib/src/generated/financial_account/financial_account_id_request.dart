part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountIDRequest implements _InttegroValue {
  final String accountId;
  const FinancialAccountIDRequest({required this.accountId});
  factory FinancialAccountIDRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountIDRequest(accountId: json["account_id"] as String);
  @override
  Map<String, Object?> toJson() => {"account_id": _encodeValue(accountId)};
}
