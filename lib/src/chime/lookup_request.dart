part of '../../chime.dart';

/// Identifies the Chime to retrieve.
///
/// Carries [chimeId].
final class LookupRequest implements InttegroValue {
  final String chimeId;
  const LookupRequest({required this.chimeId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(chimeId: json["chime_id"] as String);
  @override
  Map<String, Object?> toJson() => {"chime_id": encodeValue(chimeId)};
}
