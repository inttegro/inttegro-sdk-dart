part of '../../file_link.dart';

/// Identifies a file link and the actor revoking it.
final class RevokeRequest implements InttegroValue {
  final inttegro_file.ActorInput? revokedBy;
  final String id;
  const RevokeRequest({this.revokedBy, required this.id});
  factory RevokeRequest.fromJson(Map<String, Object?> json) => RevokeRequest(
        revokedBy: json["revoked_by"] == null
            ? null
            : inttegro_file.ActorInput.fromJson(
                (json["revoked_by"] as Map).cast<String, Object?>(),
              ),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (revokedBy != null) "revoked_by": encodeValue(revokedBy),
        "id": encodeValue(id),
      };
}
