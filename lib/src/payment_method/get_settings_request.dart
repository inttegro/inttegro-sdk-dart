part of '../../payment_method.dart';

/// An empty request for retrieving payment method settings.
final class GetSettingsRequest implements InttegroValue {
  const GetSettingsRequest();
  factory GetSettingsRequest.fromJson(Map<String, Object?> json) =>
      const GetSettingsRequest();
  @override
  Map<String, Object?> toJson() => {};
}
