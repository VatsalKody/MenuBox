import 'package:flutter/services.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/category_model.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/existing_offer_model.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/home_model.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/store_model.dart';

class HomeController {
  HomeController._();
  static List<String> banner = [];
  static List<Category> categories = [];
  static List<Category> recentOrders = [];
  static List<ExistingOffer> existingOffers = [];
  static List<Category> spotlight = [];
  static List<Store> stores = [];

  static Future<void> loadHomeJsonData() async {
    String responseInString = await rootBundle.loadString('assets/json/home.json');
    final data = homeFromJson(responseInString);
    HomeController.banner = data.banner;
    HomeController.categories = data.categories;
    HomeController.existingOffers = data.existingOffers;
    HomeController.recentOrders = data.recentOrders;
    HomeController.stores = data.stores;
    HomeController.spotlight = data.spotlight;
  }

  static int carouselIndex = banner.length;
}
