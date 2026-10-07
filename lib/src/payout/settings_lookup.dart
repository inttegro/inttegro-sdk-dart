part of '../../payout.dart';

/// The application's current payout destinations, schedule, and FX setting.
///
/// Exposes [destinations], [fxEnabled], and [schedule].
final class SettingsLookup implements InttegroValue {
  final core.PayoutDestinations destinations;
  final bool? fxEnabled;
  final SettingsLookupSchedule? schedule;
  const SettingsLookup({
    required this.destinations,
    this.fxEnabled,
    this.schedule,
  });
  factory SettingsLookup.fromJson(Map<String, Object?> json) => SettingsLookup(
        destinations: core.PayoutDestinations.fromJson(json["destinations"]),
        fxEnabled:
            json["fx_enabled"] == null ? null : json["fx_enabled"] as bool,
        schedule: json["schedule"] == null
            ? null
            : SettingsLookupSchedule.fromJson(
                (json["schedule"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "destinations": encodeValue(destinations),
        if (fxEnabled != null) "fx_enabled": encodeValue(fxEnabled),
        if (schedule != null) "schedule": encodeValue(schedule),
      };
}
