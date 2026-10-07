part of '../../balance.dart';

/// Identifies the balance to retrieve.
///
/// Its wire representation is an empty JSON object.
final class LookupRequest implements InttegroValue {
  const LookupRequest();
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      const LookupRequest();
  @override
  Map<String, Object?> toJson() => {};
}
