part of '../../payment.dart';

/// Requests a new payment confirmation challenge.
final class NextActionRequestConfirmation implements InttegroValue {
  final NextActionConfirmRequest? lastRequest;
  final DateTime? after;
  const NextActionRequestConfirmation({this.lastRequest, this.after});
  factory NextActionRequestConfirmation.fromJson(
    Map<String, Object?> json,
  ) =>
      NextActionRequestConfirmation(
        lastRequest: json["last_request"] == null
            ? null
            : NextActionConfirmRequest.fromJson(
                (json["last_request"] as Map).cast<String, Object?>(),
              ),
        after: json["after"] == null ? null : decodeDateTime(json["after"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (lastRequest != null) "last_request": encodeValue(lastRequest),
        if (after != null) "after": encodeValue(after),
      };
}
