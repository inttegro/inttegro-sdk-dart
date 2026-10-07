part of '../../upload_request.dart';

/// Identifies the upload request to retrieve.
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
