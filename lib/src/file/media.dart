part of '../../file.dart';

/// Media metadata detected for a stored file.
///
/// Exposes [kind], [width], [height], and [durationMs], among other contract
/// fields.
final class Media implements InttegroValue {
  final String? kind;
  final int? width;
  final int? height;
  final int? durationMs;
  final int? pageCount;
  final int? frameCount;
  final String? colorSpace;
  final bool? hasAlpha;
  final String? codec;
  final String? aspectRatio;
  const Media({
    this.kind,
    this.width,
    this.height,
    this.durationMs,
    this.pageCount,
    this.frameCount,
    this.colorSpace,
    this.hasAlpha,
    this.codec,
    this.aspectRatio,
  });
  factory Media.fromJson(Map<String, Object?> json) => Media(
        kind: json["kind"] == null ? null : json["kind"] as String,
        width: json["width"] == null ? null : (json["width"] as num).toInt(),
        height: json["height"] == null ? null : (json["height"] as num).toInt(),
        durationMs: json["duration_ms"] == null
            ? null
            : (json["duration_ms"] as num).toInt(),
        pageCount: json["page_count"] == null
            ? null
            : (json["page_count"] as num).toInt(),
        frameCount: json["frame_count"] == null
            ? null
            : (json["frame_count"] as num).toInt(),
        colorSpace:
            json["color_space"] == null ? null : json["color_space"] as String,
        hasAlpha: json["has_alpha"] == null ? null : json["has_alpha"] as bool,
        codec: json["codec"] == null ? null : json["codec"] as String,
        aspectRatio: json["aspect_ratio"] == null
            ? null
            : json["aspect_ratio"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (kind != null) "kind": encodeValue(kind),
        if (width != null) "width": encodeValue(width),
        if (height != null) "height": encodeValue(height),
        if (durationMs != null) "duration_ms": encodeValue(durationMs),
        if (pageCount != null) "page_count": encodeValue(pageCount),
        if (frameCount != null) "frame_count": encodeValue(frameCount),
        if (colorSpace != null) "color_space": encodeValue(colorSpace),
        if (hasAlpha != null) "has_alpha": encodeValue(hasAlpha),
        if (codec != null) "codec": encodeValue(codec),
        if (aspectRatio != null) "aspect_ratio": encodeValue(aspectRatio),
      };
}
