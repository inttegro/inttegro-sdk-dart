part of '../../balance_transaction.dart';

/// Identifies the balance transaction to retrieve.
///
/// Carries [transactionId].
final class LookupRequest implements InttegroValue {
  final String transactionId;
  const LookupRequest({required this.transactionId});
  factory LookupRequest.fromJson(Map<String, Object?> json) => LookupRequest(
        transactionId: json["transaction_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "transaction_id": encodeValue(transactionId),
      };
}
