part of '../../product.dart';

/// Media and download references supplied for a product.
///
/// Carries [heroImage], [thumbnail], [webPageUrl], and [brandLogo], among
/// other supported fields.
final class MediaInput implements InttegroValue {
  final String? heroImage;
  final String? thumbnail;
  final String? webPageUrl;
  final String? brandLogo;
  final String? infographic;
  final String? promoVideo;
  final String? demoVideo;
  final List<String>? gallery;
  final List<String>? downloads;
  const MediaInput({
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
  factory MediaInput.fromJson(
    Map<String, Object?> json,
  ) =>
      MediaInput(
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
        if (heroImage != null) "hero_image": encodeValue(heroImage),
        if (thumbnail != null) "thumbnail": encodeValue(thumbnail),
        if (webPageUrl != null) "web_page_url": encodeValue(webPageUrl),
        if (brandLogo != null) "brand_logo": encodeValue(brandLogo),
        if (infographic != null) "infographic": encodeValue(infographic),
        if (promoVideo != null) "promo_video": encodeValue(promoVideo),
        if (demoVideo != null) "demo_video": encodeValue(demoVideo),
        if (gallery != null) "gallery": encodeValue(gallery),
        if (downloads != null) "downloads": encodeValue(downloads),
      };
}
