part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeEmailMailbox implements _InttegroValue {
  final String? name;
  final String? address;
  const ChimeEmailMailbox({this.name, this.address});
  factory ChimeEmailMailbox.fromJson(Map<String, Object?> json) =>
      ChimeEmailMailbox(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null ? null : json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}
