part of '../../purchase_intent.dart';

/// Identifies the purchase intent to retrieve.
///
/// Carries [id].
final class LookupRequest implements InttegroValue {
  final String id;
  const LookupRequest({required this.id});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": encodeValue(id)};
}
