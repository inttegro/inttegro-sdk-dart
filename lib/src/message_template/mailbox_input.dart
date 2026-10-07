part of '../../message_template.dart';

/// Mailbox fields accepted by the message template API.
///
/// Carries [name] and [address].
final class MailboxInput implements InttegroValue {
  final String? name;
  final String address;
  const MailboxInput({this.name, required this.address});
  factory MailboxInput.fromJson(Map<String, Object?> json) => MailboxInput(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": encodeValue(name),
        "address": encodeValue(address),
      };
}
