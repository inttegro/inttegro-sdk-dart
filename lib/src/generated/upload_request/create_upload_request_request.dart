part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateUploadRequestRequest implements _InttegroValue {
  final UploadRequestConstraintsInput? constraints;
  final UploadRequestDisplayInput? display;
  final FilePartyInput? subject;
  final FilePartyInput? recipient;
  final FileResourceInput? resource;
  final FileActorInput? requester;
  final UploadRequestAttemptsRequest? attempts;
  final CustomData? customData;
  final DateTime? expiresAt;
  final String purpose;
  const CreateUploadRequestRequest({
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
  factory CreateUploadRequestRequest.fromJson(Map<String, Object?> json) =>
      CreateUploadRequestRequest(
        constraints: json["constraints"] == null
            ? null
            : UploadRequestConstraintsInput.fromJson(
                (json["constraints"] as Map).cast<String, Object?>(),
              ),
        display: json["display"] == null
            ? null
            : UploadRequestDisplayInput.fromJson(
                (json["display"] as Map).cast<String, Object?>(),
              ),
        subject: json["subject"] == null
            ? null
            : FilePartyInput.fromJson(
                (json["subject"] as Map).cast<String, Object?>(),
              ),
        recipient: json["recipient"] == null
            ? null
            : FilePartyInput.fromJson(
                (json["recipient"] as Map).cast<String, Object?>(),
              ),
        resource: json["resource"] == null
            ? null
            : FileResourceInput.fromJson(
                (json["resource"] as Map).cast<String, Object?>(),
              ),
        requester: json["requester"] == null
            ? null
            : FileActorInput.fromJson(
                (json["requester"] as Map).cast<String, Object?>(),
              ),
        attempts: json["attempts"] == null
            ? null
            : UploadRequestAttemptsRequest.fromJson(
                (json["attempts"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        purpose: json["purpose"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (constraints != null) "constraints": _encodeValue(constraints),
        if (display != null) "display": _encodeValue(display),
        if (subject != null) "subject": _encodeValue(subject),
        if (recipient != null) "recipient": _encodeValue(recipient),
        if (resource != null) "resource": _encodeValue(resource),
        if (requester != null) "requester": _encodeValue(requester),
        if (attempts != null) "attempts": _encodeValue(attempts),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "purpose": _encodeValue(purpose),
      };
}
