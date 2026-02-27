import 'package:flutter/cupertino.dart';
import 'package:revisiting_kody_test_ui/framework/repository/base_page_repository/base_page_model.dart';
import 'package:revisiting_kody_test_ui/ui/home/mobile/home_mobile.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/pending_screen.dart';

final basePageController = ChangeNotifierProvider<BasePageController>((ref) => BasePageController(),);

 class BasePageController extends ChangeNotifier {
  BasePageController();

  List<BasePageModel> navBarItems = [
    BasePageModel(id: 0, label: AppConstants.home, icon: AppConstants.homeIcon),
    BasePageModel(id: 1, label: AppConstants.order, icon: AppConstants.orderIcon),
    BasePageModel(id: 2, label: AppConstants.cart, icon: AppConstants.cartIcon),
    BasePageModel(id: 3, label: AppConstants.profile, icon: AppConstants.profileIcon),
  ];

  List<Widget> bodyItems = [const HomeMobile(), const PendingScreen(), const PendingScreen(), const PendingScreen()];

  int navItemLength = AppConstants.numberOfNavBarItems;
  int navItem = AppConstants.startNavIndex;

  void updateNavItem (int index) {
    navItem = index;
    notifyListeners();
  }
}
