part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class MessageTemplateMailboxInput implements _InttegroValue {
  final String? name;
  final String address;
  const MessageTemplateMailboxInput({this.name, required this.address});
  factory MessageTemplateMailboxInput.fromJson(Map<String, Object?> json) =>
      MessageTemplateMailboxInput(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        "address": _encodeValue(address),
      };
}
