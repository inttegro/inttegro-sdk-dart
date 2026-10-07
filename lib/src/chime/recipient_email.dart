part of '../../chime.dart';

/// The email address of a resolved Chime recipient.
final class RecipientEmail implements InttegroValue {
  final String address;
  const RecipientEmail({required this.address});
  factory RecipientEmail.fromJson(Map<String, Object?> json) =>
      RecipientEmail(address: json["address"] as String);
  @override
  Map<String, Object?> toJson() => {"address": encodeValue(address)};
}
