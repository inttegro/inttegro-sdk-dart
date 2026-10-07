part of '../../../inttegro.dart';

/// A typed `UploadReviewDecision` value used by the Inttegro API.
final class UploadReviewDecision implements _InttegroValue {
  final String value;
  const UploadReviewDecision(this.value);
  factory UploadReviewDecision.fromJson(Object? json) =>
      UploadReviewDecision(json as String);
  static const approved = UploadReviewDecision("approved");
  static const rejected = UploadReviewDecision("rejected");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is UploadReviewDecision && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
