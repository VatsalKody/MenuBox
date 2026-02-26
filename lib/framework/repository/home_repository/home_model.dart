import 'dart:convert';

import 'package:revisiting_kody_test_ui/framework/repository/home_repository/category_model.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/existing_offer_model.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/store_model.dart';

Home homeFromJson(String str) => Home.fromJson(json.decode(str));

String homeToJson(Home data) => json.encode(data.toJson());

class Home {
  List<String> banner;
  List<Category> categories;
  List<Category> recentOrders;
  List<ExistingOffer> existingOffers;
  List<Category> spotlight;
  List<Store> stores;

  Home({
    required this.banner,
    required this.categories,
    required this.recentOrders,
    required this.existingOffers,
    required this.spotlight,
    required this.stores,
  });

  Home copyWith({
    List<String>? banner,
    List<Category>? categories,
    List<Category>? recentOrders,
    List<ExistingOffer>? existingOffers,
    List<Category>? spotlight,
    List<Store>? stores,
  }) => Home(
    banner: banner ?? this.banner,
    categories: categories ?? this.categories,
    recentOrders: recentOrders ?? this.recentOrders,
    existingOffers: existingOffers ?? this.existingOffers,
    spotlight: spotlight ?? this.spotlight,
    stores: stores ?? this.stores,
  );

  factory Home.fromJson(Map<String, dynamic> json) => Home(
    banner: List<String>.from(json["banner"].map((x) => x)),
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    recentOrders: List<Category>.from(json["recent_orders"].map((x) => Category.fromJson(x))),
    existingOffers: List<ExistingOffer>.from(
      json["existing_offers"].map((x) => ExistingOffer.fromJson(x)),
    ),
    spotlight: List<Category>.from(json["spotlight"].map((x) => Category.fromJson(x))),
    stores: List<Store>.from(json["stores"].map((x) => Store.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "banner": List<dynamic>.from(banner.map((x) => x)),
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "recent_orders": List<dynamic>.from(recentOrders.map((x) => x.toJson())),
    "existing_offers": List<dynamic>.from(existingOffers.map((x) => x.toJson())),
    "spotlight": List<dynamic>.from(spotlight.map((x) => x.toJson())),
    "stores": List<dynamic>.from(stores.map((x) => x.toJson())),
  };
}
