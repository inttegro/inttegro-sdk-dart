part of '../../upload_request.dart';

/// Identifies the upload request to cancel and supplies any cancellation
/// options.
///
/// Carries [canceledBy] and [id].
final class CancelRequest implements InttegroValue {
  final inttegro_file.ActorInput? canceledBy;
  final String id;
  const CancelRequest({this.canceledBy, required this.id});
  factory CancelRequest.fromJson(Map<String, Object?> json) => CancelRequest(
        canceledBy: json["canceled_by"] == null
            ? null
            : inttegro_file.ActorInput.fromJson(
                (json["canceled_by"] as Map).cast<String, Object?>(),
              ),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (canceledBy != null) "canceled_by": encodeValue(canceledBy),
        "id": encodeValue(id),
      };
}
