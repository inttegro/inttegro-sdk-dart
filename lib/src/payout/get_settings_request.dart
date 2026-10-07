part of '../../payout.dart';

/// An empty request for retrieving payout settings.
final class GetSettingsRequest implements InttegroValue {
  const GetSettingsRequest();
  factory GetSettingsRequest.fromJson(Map<String, Object?> json) =>
      const GetSettingsRequest();
  @override
  Map<String, Object?> toJson() => {};
}
