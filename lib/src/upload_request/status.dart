part of '../../upload_request.dart';

/// The current lifecycle state of an [UploadRequest].
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const pending = Status("pending");
  static const uploading = Status("uploading");
  static const fulfilled = Status("fulfilled");
  static const expired = Status("expired");
  static const canceled = Status("canceled");
  static const failed = Status("failed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Status && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
