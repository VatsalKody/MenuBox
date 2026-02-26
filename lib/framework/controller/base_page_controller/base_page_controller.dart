import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/repository/base_page_repository/base_page_model.dart';
import 'package:revisiting_kody_test_ui/ui/home/mobile/home_mobile.dart';


class BasePageController extends ChangeNotifier {
  BasePageController._();

  static List<BasePageModel> navBarItems = [
    BasePageModel(id: 0, label: 'Home', icon: Icons.home),
    BasePageModel(id: 1, label: 'Order', icon: Icons.list_alt),
    BasePageModel(id: 2, label: 'Cart', icon: Icons.shopping_cart_outlined),
    BasePageModel(id: 3, label: 'Profile', icon: Icons.manage_accounts_sharp),
  ];

  static const List<Widget> bodyItems = [HomeMobile(), HomeMobile(), HomeMobile(), HomeMobile()];

  static int navItemLength = 4;
  static int navItem = 0;
}
