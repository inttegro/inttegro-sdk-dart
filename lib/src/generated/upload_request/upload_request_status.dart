part of '../../../inttegro.dart';

/// A typed `UploadRequestStatus` value used by the Inttegro API.
final class UploadRequestStatus implements _InttegroValue {
  final String value;
  const UploadRequestStatus(this.value);
  factory UploadRequestStatus.fromJson(Object? json) =>
      UploadRequestStatus(json as String);
  static const pending = UploadRequestStatus("pending");
  static const uploading = UploadRequestStatus("uploading");
  static const fulfilled = UploadRequestStatus("fulfilled");
  static const expired = UploadRequestStatus("expired");
  static const canceled = UploadRequestStatus("canceled");
  static const failed = UploadRequestStatus("failed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is UploadRequestStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
