part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CancelUploadRequestRequest implements _InttegroValue {
  final FileActorInput? canceledBy;
  final String id;
  const CancelUploadRequestRequest({this.canceledBy, required this.id});
  factory CancelUploadRequestRequest.fromJson(Map<String, Object?> json) =>
      CancelUploadRequestRequest(
        canceledBy: json["canceled_by"] == null
            ? null
            : FileActorInput.fromJson(
                (json["canceled_by"] as Map).cast<String, Object?>(),
              ),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (canceledBy != null) "canceled_by": _encodeValue(canceledBy),
        "id": _encodeValue(id),
      };
}
