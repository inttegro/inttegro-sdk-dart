part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplateMailbox implements _InttegroValue {
  final String address;
  final String? name;
  const MessageTemplateMailbox({required this.address, this.name});
  factory MessageTemplateMailbox.fromJson(Map<String, Object?> json) =>
      MessageTemplateMailbox(
        address: json["address"] as String,
        name: json["name"] == null ? null : json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": _encodeValue(address),
        if (name != null) "name": _encodeValue(name),
      };
}
