part of '../../../inttegro.dart';

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
