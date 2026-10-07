part of '../../chime.dart';

/// The phone number of a resolved Chime recipient.
final class RecipientPhone implements InttegroValue {
  final String number;
  const RecipientPhone({required this.number});
  factory RecipientPhone.fromJson(Map<String, Object?> json) =>
      RecipientPhone(number: json["number"] as String);
  @override
  Map<String, Object?> toJson() => {"number": encodeValue(number)};
}
