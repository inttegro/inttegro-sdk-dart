part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupFileLinkRequest implements _InttegroValue {
  final String id;
  const LookupFileLinkRequest({required this.id});
  factory LookupFileLinkRequest.fromJson(Map<String, Object?> json) =>
      LookupFileLinkRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": _encodeValue(id)};
}
