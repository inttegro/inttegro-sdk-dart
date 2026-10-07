part of '../../balance_transaction.dart';

/// A resource use consuming part of a balance-transaction allocation.
///
/// Exposes [id] and [amount].
final class AllocationUse implements InttegroValue {
  final String id;
  final Amount amount;
  const AllocationUse({required this.id, required this.amount});
  factory AllocationUse.fromJson(
    Map<String, Object?> json,
  ) =>
      AllocationUse(
        id: json["id"] as String,
        amount: Amount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "amount": encodeValue(amount),
      };
}
