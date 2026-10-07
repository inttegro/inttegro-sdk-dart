part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupChimeRequest implements _InttegroValue {
  final String chimeId;
  const LookupChimeRequest({required this.chimeId});
  factory LookupChimeRequest.fromJson(Map<String, Object?> json) =>
      LookupChimeRequest(chimeId: json["chime_id"] as String);
  @override
  Map<String, Object?> toJson() => {"chime_id": _encodeValue(chimeId)};
}
