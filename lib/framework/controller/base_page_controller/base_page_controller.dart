import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/repository/base_page_repository/base_page_model.dart';
import 'package:revisiting_kody_test_ui/ui/home/mobile/home_mobile.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';

class BasePageController {
  BasePageController._();

  static List<BasePageModel> navBarItems = [
    BasePageModel(id: 0, label: AppConstants.home, icon: AppConstants.homeIcon),
    BasePageModel(id: 1, label: AppConstants.home, icon: AppConstants.homeIcon),
    BasePageModel(id: 2, label: AppConstants.home, icon: AppConstants.homeIcon),
    BasePageModel(id: 3, label: AppConstants.home, icon: AppConstants.homeIcon),
  ];

  static const List<Widget> bodyItems = [HomeMobile(), HomeMobile(), HomeMobile(), HomeMobile()];

  static int navItemLength = AppConstants.numberOfNavBarItems;
  static int navItem = AppConstants.startNavIndex;
}
