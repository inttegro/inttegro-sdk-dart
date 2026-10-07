part of '../../file.dart';

/// Identifies the file to delete.
///
/// Carries [fileId].
final class DeleteRequest implements InttegroValue {
  final String fileId;
  const DeleteRequest({required this.fileId});
  factory DeleteRequest.fromJson(Map<String, Object?> json) =>
      DeleteRequest(fileId: json["file_id"] as String);
  @override
  Map<String, Object?> toJson() => {"file_id": encodeValue(fileId)};
}
