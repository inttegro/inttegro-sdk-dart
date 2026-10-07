part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ProductShipment implements _InttegroValue {
  final ProductShipmentType type;
  final ProductDelivery? delivery;
  final ProductDownload? download;
  final ProductRender? render;
  final ProductService? service;
  final ProductStream? stream;
  const ProductShipment({
    required this.type,
    this.delivery,
    this.download,
    this.render,
    this.service,
    this.stream,
  });
  factory ProductShipment.fromJson(
    Map<String, Object?> json,
  ) =>
      ProductShipment(
        type: ProductShipmentType.fromJson(json["type"]),
        delivery: json["delivery"] == null
            ? null
            : ProductDelivery.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        download: json["download"] == null
            ? null
            : ProductDownload.fromJson(
                (json["download"] as Map).cast<String, Object?>(),
              ),
        render: json["render"] == null
            ? null
            : ProductRender.fromJson(
                (json["render"] as Map).cast<String, Object?>(),
              ),
        service: json["service"] == null
            ? null
            : ProductService.fromJson(
                (json["service"] as Map).cast<String, Object?>(),
              ),
        stream: json["stream"] == null
            ? null
            : ProductStream.fromJson(
                (json["stream"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (delivery != null) "delivery": _encodeValue(delivery),
        if (download != null) "download": _encodeValue(download),
        if (render != null) "render": _encodeValue(render),
        if (service != null) "service": _encodeValue(service),
        if (stream != null) "stream": _encodeValue(stream),
      };
}
