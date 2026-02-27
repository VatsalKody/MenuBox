import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/category_model.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/existing_offer_model.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/home_model.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/store_model.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/common_print.dart';

final homeController = ChangeNotifierProvider<HomeController>((ref) => HomeController(),);

class HomeController extends ChangeNotifier {
  HomeController();

  List<String>? banner;
  List<Category>? categories;
  List<Category>? recentOrders;
  List<ExistingOffer>? existingOffers;
  List<Category>? spotlight;
  List<Store>? stores;
  int carouselIndex = 0;

  Future<void> loadHomeJsonData() async {
    String responseInString = await rootBundle.loadString(AppConstants.homeJson);
    CommonPrint.printFunction(debugTypeIdentifier: 'Stringify JSON Data is - $responseInString');
    final data = homeFromJson(responseInString);
    CommonPrint.printFunction(debugTypeIdentifier: 'Home Data from JSON is - $data');
    banner = data.banner;
    categories = data.categories;
    existingOffers = data.existingOffers;
    recentOrders = data.recentOrders;
    stores = data.stores;
    spotlight = data.spotlight;
    CommonPrint.printFunction(debugTypeIdentifier: 'Data has been successfully loaded from JSON!!!');
    notifyListeners();
  }

  void updateCarouselIndex (int index) {
    carouselIndex = index;
    notifyListeners();
  }

  int getCarouselIndex () {
    return carouselIndex;
  }
}
