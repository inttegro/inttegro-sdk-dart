part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PayoutSettingsMutation implements _InttegroValue {
  final PayoutDestinations? destinations;
  final bool? fxEnabled;
  final String? id;
  final PayoutSettingsMutationSchedule? schedule;
  const PayoutSettingsMutation({
    this.destinations,
    this.fxEnabled,
    this.id,
    this.schedule,
  });
  factory PayoutSettingsMutation.fromJson(Map<String, Object?> json) =>
      PayoutSettingsMutation(
        destinations: json["destinations"] == null
            ? null
            : PayoutDestinations.fromJson(json["destinations"]),
        fxEnabled:
            json["fx_enabled"] == null ? null : json["fx_enabled"] as bool,
        id: json["id"] == null ? null : json["id"] as String,
        schedule: json["schedule"] == null
            ? null
            : PayoutSettingsMutationSchedule.fromJson(
                (json["schedule"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (destinations != null) "destinations": _encodeValue(destinations),
        if (fxEnabled != null) "fx_enabled": _encodeValue(fxEnabled),
        if (id != null) "id": _encodeValue(id),
        if (schedule != null) "schedule": _encodeValue(schedule),
      };
}
