part of '../../message_template.dart';

/// The name and address of an email mailbox stored on a template.
final class Mailbox implements InttegroValue {
  final String address;
  final String? name;
  const Mailbox({required this.address, this.name});
  factory Mailbox.fromJson(Map<String, Object?> json) => Mailbox(
        address: json["address"] as String,
        name: json["name"] == null ? null : json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": encodeValue(address),
        if (name != null) "name": encodeValue(name),
      };
}
