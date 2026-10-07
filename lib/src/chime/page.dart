part of '../../chime.dart';

/// A page of Chimes returned by a list operation.
///
/// Exposes [number], [size], and [chimes].
final class Page implements InttegroValue {
  final int number;
  final int size;
  final List<Chime> chimes;
  const Page({
    required this.number,
    required this.size,
    required this.chimes,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        chimes: (json["chimes"] as List)
            .map(
                (item) => Chime.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": encodeValue(number),
        "size": encodeValue(size),
        "chimes": encodeValue(chimes),
      };
}
