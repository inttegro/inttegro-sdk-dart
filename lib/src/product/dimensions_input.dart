part of '../../product.dart';

/// Product dimensions supplied in a create or update request.
///
/// Carries [physical], [digital], and [custom].
final class DimensionsInput implements InttegroValue {
  final DimensionsInputPhysical? physical;
  final DimensionsInputDigital? digital;
  final DimensionsInputCustom? custom;
  const DimensionsInput({this.physical, this.digital, this.custom});
  factory DimensionsInput.fromJson(Map<String, Object?> json) =>
      DimensionsInput(
        physical: json["physical"] == null
            ? null
            : DimensionsInputPhysical.fromJson(
                (json["physical"] as Map).cast<String, Object?>(),
              ),
        digital: json["digital"] == null
            ? null
            : DimensionsInputDigital.fromJson(
                (json["digital"] as Map).cast<String, Object?>(),
              ),
        custom: json["custom"] == null
            ? null
            : DimensionsInputCustom.fromJson(
                (json["custom"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (physical != null) "physical": encodeValue(physical),
        if (digital != null) "digital": encodeValue(digital),
        if (custom != null) "custom": encodeValue(custom),
      };
}
