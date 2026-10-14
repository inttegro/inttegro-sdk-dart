part of '../../payout.dart';

/// Payout settings returned after a configuration change.
///
/// Exposes [destinations], [fxEnabled], [id], [limits], and [schedule].
final class SettingsMutation implements InttegroValue {
  final core.PayoutDestinations? destinations;
  final bool? fxEnabled;
  final String? id;
  final SettingsLimits limits;
  final SettingsMutationSchedule? schedule;
  const SettingsMutation({
    required this.limits,
    this.destinations,
    this.fxEnabled,
    this.id,
    this.schedule,
  });
  factory SettingsMutation.fromJson(Map<String, Object?> json) =>
      SettingsMutation(
        destinations: json["destinations"] == null
            ? null
            : core.PayoutDestinations.fromJson(json["destinations"]),
        fxEnabled:
            json["fx_enabled"] == null ? null : json["fx_enabled"] as bool,
        id: json["id"] == null ? null : json["id"] as String,
        limits: SettingsLimits.fromJson(
          (json['limits'] as Map).cast<String, Object?>(),
        ),
        schedule: json["schedule"] == null
            ? null
            : SettingsMutationSchedule.fromJson(
                (json["schedule"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (destinations != null) "destinations": encodeValue(destinations),
        if (fxEnabled != null) "fx_enabled": encodeValue(fxEnabled),
        if (id != null) "id": encodeValue(id),
        'limits': encodeValue(limits),
        if (schedule != null) "schedule": encodeValue(schedule),
      };
}
