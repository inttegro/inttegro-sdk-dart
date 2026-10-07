part of '../../file.dart';

/// Identifies the file to retrieve.
///
/// Carries [fileId].
final class LookupRequest implements InttegroValue {
  final String fileId;
  const LookupRequest({required this.fileId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(fileId: json["file_id"] as String);
  @override
  Map<String, Object?> toJson() => {"file_id": encodeValue(fileId)};
}
