part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupUploadRequestRequest implements _InttegroValue {
  final String id;
  const LookupUploadRequestRequest({required this.id});
  factory LookupUploadRequestRequest.fromJson(Map<String, Object?> json) =>
      LookupUploadRequestRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": _encodeValue(id)};
}
