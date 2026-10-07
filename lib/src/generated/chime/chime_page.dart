part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimePage implements _InttegroValue {
  final int number;
  final int size;
  final List<Chime> chimes;
  const ChimePage({
    required this.number,
    required this.size,
    required this.chimes,
  });
  factory ChimePage.fromJson(Map<String, Object?> json) => ChimePage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        chimes: (json["chimes"] as List)
            .map(
                (item) => Chime.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "chimes": _encodeValue(chimes),
      };
}
