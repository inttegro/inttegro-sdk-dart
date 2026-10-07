part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class RevokeFileLinkRequest implements _InttegroValue {
  final FileActorInput? revokedBy;
  final String id;
  const RevokeFileLinkRequest({this.revokedBy, required this.id});
  factory RevokeFileLinkRequest.fromJson(Map<String, Object?> json) =>
      RevokeFileLinkRequest(
        revokedBy: json["revoked_by"] == null
            ? null
            : FileActorInput.fromJson(
                (json["revoked_by"] as Map).cast<String, Object?>(),
              ),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (revokedBy != null) "revoked_by": _encodeValue(revokedBy),
        "id": _encodeValue(id),
      };
}
