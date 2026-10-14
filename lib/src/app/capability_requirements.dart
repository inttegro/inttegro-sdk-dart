part of '../../app.dart';

/// Requirements that currently prevent a capability from being enabled.
final class CapabilityRequirements implements InttegroValue {
  final List<CapabilityRequirement> currentlyDue;
  const CapabilityRequirements({required this.currentlyDue});
  factory CapabilityRequirements.fromJson(Map<String, Object?> json) =>
      CapabilityRequirements(
        currentlyDue: (json['currently_due'] as List)
            .map((value) => CapabilityRequirement.fromJson(
                (value as Map).cast<String, Object?>()))
            .toList(growable: false),
      );
  @override
  Map<String, Object?> toJson() => {'currently_due': encodeValue(currentlyDue)};
}
