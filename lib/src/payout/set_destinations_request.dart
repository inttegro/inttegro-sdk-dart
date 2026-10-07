part of '../../payout.dart';

/// Parameters for replacing the configured payout destinations.
///
/// Carries [destinations].
final class SetDestinationsRequest implements InttegroValue {
  final core.PayoutDestinations destinations;
  const SetDestinationsRequest({required this.destinations});
  factory SetDestinationsRequest.fromJson(Map<String, Object?> json) =>
      SetDestinationsRequest(
        destinations: core.PayoutDestinations.fromJson(json["destinations"]),
      );
  @override
  Map<String, Object?> toJson() => {"destinations": encodeValue(destinations)};
}
