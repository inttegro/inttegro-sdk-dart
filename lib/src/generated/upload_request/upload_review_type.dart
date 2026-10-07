part of '../../../inttegro.dart';

/// A typed `UploadReviewType` value used by the Inttegro API.
final class UploadReviewType implements _InttegroValue {
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
