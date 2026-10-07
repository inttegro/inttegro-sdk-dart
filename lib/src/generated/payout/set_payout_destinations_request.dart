part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class SetPayoutDestinationsRequest implements _InttegroValue {
  final PayoutDestinations destinations;
  const SetPayoutDestinationsRequest({required this.destinations});
  factory SetPayoutDestinationsRequest.fromJson(Map<String, Object?> json) =>
      SetPayoutDestinationsRequest(
        destinations: PayoutDestinations.fromJson(json["destinations"]),
      );
  @override
  Map<String, Object?> toJson() => {"destinations": _encodeValue(destinations)};
}
