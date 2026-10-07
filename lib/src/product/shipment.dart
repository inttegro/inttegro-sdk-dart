part of '../../product.dart';

/// The delivery or fulfillment configuration for a product.
///
/// Exposes [type], [delivery], [download], and [render], among other contract
/// fields.
final class Shipment implements InttegroValue {
  final ShipmentType type;
  final Delivery? delivery;
  final Download? download;
  final Render? render;
  final Service? service;
  final Stream? stream;
  const Shipment({
    required this.type,
    this.delivery,
    this.download,
    this.render,
    this.service,
    this.stream,
  });
  factory Shipment.fromJson(
    Map<String, Object?> json,
  ) =>
      Shipment(
        type: ShipmentType.fromJson(json["type"]),
        delivery: json["delivery"] == null
            ? null
            : Delivery.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        download: json["download"] == null
            ? null
            : Download.fromJson(
                (json["download"] as Map).cast<String, Object?>(),
              ),
        render: json["render"] == null
            ? null
            : Render.fromJson(
                (json["render"] as Map).cast<String, Object?>(),
              ),
        service: json["service"] == null
            ? null
            : Service.fromJson(
                (json["service"] as Map).cast<String, Object?>(),
              ),
        stream: json["stream"] == null
            ? null
            : Stream.fromJson(
                (json["stream"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        if (delivery != null) "delivery": encodeValue(delivery),
        if (download != null) "download": encodeValue(download),
        if (render != null) "render": encodeValue(render),
        if (service != null) "service": encodeValue(service),
        if (stream != null) "stream": encodeValue(stream),
      };
}
