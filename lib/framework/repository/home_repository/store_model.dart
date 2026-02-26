import 'package:revisiting_kody_test_ui/framework/repository/home_repository/offer_model.dart';

class Store {
  int id;
  String name;
  String image;
  String banner;
  String rating;
  String review;
  String minOrder;
  String freeDeliveryKm;
  String deliveryTime;
  String distance;
  Offer offer;

  Store({
    required this.id,
    required this.name,
    required this.image,
    required this.banner,
    required this.rating,
    required this.review,
    required this.minOrder,
    required this.freeDeliveryKm,
    required this.deliveryTime,
    required this.distance,
    required this.offer,
  });

  Store copyWith({
    int? id,
    String? name,
    String? image,
    String? banner,
    String? rating,
    String? review,
    String? minOrder,
    String? freeDeliveryKm,
    String? deliveryTime,
    String? distance,
    Offer? offer,
  }) => Store(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
    banner: banner ?? this.banner,
    rating: rating ?? this.rating,
    review: review ?? this.review,
    minOrder: minOrder ?? this.minOrder,
    freeDeliveryKm: freeDeliveryKm ?? this.freeDeliveryKm,
    deliveryTime: deliveryTime ?? this.deliveryTime,
    distance: distance ?? this.distance,
    offer: offer ?? this.offer,
  );

  factory Store.fromJson(Map<String, dynamic> json) => Store(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    banner: json["banner"],
    rating: json["rating"],
    review: json["review"],
    minOrder: json["min_order"],
    freeDeliveryKm: json["free_delivery_km"],
    deliveryTime: json["delivery_time"],
    distance: json["distance"],
    offer: Offer.fromJson(json["offer"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "banner": banner,
    "rating": rating,
    "review": review,
    "min_order": minOrder,
    "free_delivery_km": freeDeliveryKm,
    "delivery_time": deliveryTime,
    "distance": distance,
    "offer": offer.toJson(),
  };
}
