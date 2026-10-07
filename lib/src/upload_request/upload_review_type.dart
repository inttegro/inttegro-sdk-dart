part of '../../upload_request.dart';

/// Whether an uploaded file was reviewed automatically or manually.
final class UploadReviewType implements InttegroValue {
  final String value;
  const UploadReviewType(this.value);
  factory UploadReviewType.fromJson(Object? json) =>
      UploadReviewType(json as String);
  static const automatic = UploadReviewType("automatic");
  static const manual = UploadReviewType("manual");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is UploadReviewType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
