part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class DeleteFileRequest implements _InttegroValue {
  final String fileId;
  const DeleteFileRequest({required this.fileId});
  factory DeleteFileRequest.fromJson(Map<String, Object?> json) =>
      DeleteFileRequest(fileId: json["file_id"] as String);
  @override
  Map<String, Object?> toJson() => {"file_id": _encodeValue(fileId)};
}
