part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ProductMediaInput implements _InttegroValue {
  final String? heroImage;
  final String? thumbnail;
  final String? webPageUrl;
  final String? brandLogo;
  final String? infographic;
  final String? promoVideo;
  final String? demoVideo;
  final List<String>? gallery;
  final List<String>? downloads;
  const ProductMediaInput({
    this.heroImage,
    this.thumbnail,
    this.webPageUrl,
    this.brandLogo,
    this.infographic,
    this.promoVideo,
    this.demoVideo,
    this.gallery,
    this.downloads,
  });
  factory ProductMediaInput.fromJson(
    Map<String, Object?> json,
  ) =>
      ProductMediaInput(
        heroImage:
            json["hero_image"] == null ? null : json["hero_image"] as String,
        thumbnail:
            json["thumbnail"] == null ? null : json["thumbnail"] as String,
        webPageUrl: json["web_page_url"] == null
            ? null
            : json["web_page_url"] as String,
        brandLogo:
            json["brand_logo"] == null ? null : json["brand_logo"] as String,
        infographic:
            json["infographic"] == null ? null : json["infographic"] as String,
        promoVideo:
            json["promo_video"] == null ? null : json["promo_video"] as String,
        demoVideo:
            json["demo_video"] == null ? null : json["demo_video"] as String,
        gallery: json["gallery"] == null
            ? null
            : (json["gallery"] as List).map((item) => item as String).toList(),
        downloads: json["downloads"] == null
            ? null
            : (json["downloads"] as List)
                .map((item) => item as String)
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (heroImage != null) "hero_image": _encodeValue(heroImage),
        if (thumbnail != null) "thumbnail": _encodeValue(thumbnail),
        if (webPageUrl != null) "web_page_url": _encodeValue(webPageUrl),
        if (brandLogo != null) "brand_logo": _encodeValue(brandLogo),
        if (infographic != null) "infographic": _encodeValue(infographic),
        if (promoVideo != null) "promo_video": _encodeValue(promoVideo),
        if (demoVideo != null) "demo_video": _encodeValue(demoVideo),
        if (gallery != null) "gallery": _encodeValue(gallery),
        if (downloads != null) "downloads": _encodeValue(downloads),
      };
}
