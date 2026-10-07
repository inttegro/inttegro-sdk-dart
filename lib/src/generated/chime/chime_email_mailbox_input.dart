part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ChimeEmailMailboxInput implements _InttegroValue {
  final String? name;
  final String? address;
  const ChimeEmailMailboxInput({this.name, this.address});
  factory ChimeEmailMailboxInput.fromJson(Map<String, Object?> json) =>
      ChimeEmailMailboxInput(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null ? null : json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}
