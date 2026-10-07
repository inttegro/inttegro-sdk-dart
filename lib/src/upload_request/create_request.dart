part of '../../upload_request.dart';

/// Parameters for creating an upload request.
///
/// Carries [constraints], [display], [subject], and [recipient], among other
/// supported fields.
final class CreateRequest implements InttegroValue {
  final ConstraintsInput? constraints;
  final DisplayInput? display;
  final inttegro_file.PartyInput? subject;
  final inttegro_file.PartyInput? recipient;
  final inttegro_file.ResourceInput? resource;
  final inttegro_file.ActorInput? requester;
  final AttemptsRequest? attempts;
  final core.CustomData? customData;
  final DateTime? expiresAt;
  final String purpose;
  const CreateRequest({
    this.constraints,
    this.display,
    this.subject,
    this.recipient,
    this.resource,
    this.requester,
    this.attempts,
    this.customData,
    this.expiresAt,
    required this.purpose,
  });
  factory CreateRequest.fromJson(Map<String, Object?> json) => CreateRequest(
        constraints: json["constraints"] == null
            ? null
            : ConstraintsInput.fromJson(
                (json["constraints"] as Map).cast<String, Object?>(),
              ),
        display: json["display"] == null
            ? null
            : DisplayInput.fromJson(
                (json["display"] as Map).cast<String, Object?>(),
              ),
        subject: json["subject"] == null
            ? null
            : inttegro_file.PartyInput.fromJson(
                (json["subject"] as Map).cast<String, Object?>(),
              ),
        recipient: json["recipient"] == null
            ? null
            : inttegro_file.PartyInput.fromJson(
                (json["recipient"] as Map).cast<String, Object?>(),
              ),
        resource: json["resource"] == null
            ? null
            : inttegro_file.ResourceInput.fromJson(
                (json["resource"] as Map).cast<String, Object?>(),
              ),
        requester: json["requester"] == null
            ? null
            : inttegro_file.ActorInput.fromJson(
                (json["requester"] as Map).cast<String, Object?>(),
              ),
        attempts: json["attempts"] == null
            ? null
            : AttemptsRequest.fromJson(
                (json["attempts"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        expiresAt: json["expires_at"] == null
            ? null
            : decodeDateTime(json["expires_at"]),
        purpose: json["purpose"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (constraints != null) "constraints": encodeValue(constraints),
        if (display != null) "display": encodeValue(display),
        if (subject != null) "subject": encodeValue(subject),
        if (recipient != null) "recipient": encodeValue(recipient),
        if (resource != null) "resource": encodeValue(resource),
        if (requester != null) "requester": encodeValue(requester),
        if (attempts != null) "attempts": encodeValue(attempts),
        if (customData != null) "custom_data": encodeValue(customData),
        if (expiresAt != null) "expires_at": encodeValue(expiresAt),
        "purpose": encodeValue(purpose),
      };
}
