part of '../../file.dart';

/// Selects a file and delivery options when retrieving its contents.
///
/// Carries [disposition], [delivery], and [fileId].
final class ContentsRequest implements InttegroValue {
  final Disposition? disposition;
  final Delivery? delivery;
  final String fileId;
  const ContentsRequest({
    this.disposition,
    this.delivery,
    required this.fileId,
  });
  factory ContentsRequest.fromJson(Map<String, Object?> json) =>
      ContentsRequest(
        disposition: json["disposition"] == null
            ? null
            : Disposition.fromJson(json["disposition"]),
        delivery: json["delivery"] == null
            ? null
            : Delivery.fromJson(json["delivery"]),
        fileId: json["file_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (disposition != null) "disposition": encodeValue(disposition),
        if (delivery != null) "delivery": encodeValue(delivery),
        "file_id": encodeValue(fileId),
      };
}
