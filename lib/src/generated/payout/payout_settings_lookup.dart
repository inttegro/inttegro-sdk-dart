part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PayoutSettingsLookup implements _InttegroValue {
  final PayoutDestinations destinations;
  final bool? fxEnabled;
  final PayoutSettingsLookupSchedule? schedule;
  const PayoutSettingsLookup({
    required this.destinations,
    this.fxEnabled,
    this.schedule,
  });
  factory PayoutSettingsLookup.fromJson(Map<String, Object?> json) =>
      PayoutSettingsLookup(
        destinations: PayoutDestinations.fromJson(json["destinations"]),
        fxEnabled:
            json["fx_enabled"] == null ? null : json["fx_enabled"] as bool,
        schedule: json["schedule"] == null
            ? null
            : PayoutSettingsLookupSchedule.fromJson(
                (json["schedule"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "destinations": _encodeValue(destinations),
        if (fxEnabled != null) "fx_enabled": _encodeValue(fxEnabled),
        if (schedule != null) "schedule": _encodeValue(schedule),
      };
}
