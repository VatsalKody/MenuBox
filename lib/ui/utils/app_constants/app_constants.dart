import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();

  static const int numberOfNavBarItems = 4;
  static const int startNavIndex = 0;

  static late Size size;

  // app based strings are custom defined here and the variables are used to use those those strings / texts
  static const String home = 'Home';
  static const String profile = 'Profile';
  static const String cart = 'Cart';
  static const String order = 'Order';

  // app base icons which will be used at different places through out the application
  static const IconData homeIcon = Icons.home;
  static const IconData orderIcon = Icons.list_alt;
  static const IconData profileIcon = Icons.account_circle;
  static const IconData notificationAddIcon = Icons.notification_add;
  static const IconData cartIcon = Icons.shopping_cart_outlined;
  static const IconData searchIcon = Icons.search_rounded;
  static const IconData clockIcon = Icons.access_time_rounded;
  static const IconData errorIcon = Icons.error_outline;
  static const IconData locationIcon = Icons.location_on;
  static const IconData starIcon = Icons.star;
  static const IconData filterIcon = Icons.filter_alt_outlined;
  static const IconData downArrowIcon = Icons.keyboard_arrow_down;
  static const IconData menuIcon = Icons.menu_outlined;

  static const String strApplicationTitle = 'MenuBox';

  static const String strSearchHere = 'Search Here';

  static const String strRecentlyOrderedLeftTitle = 'Recently Ordered on MenuBox';
  static const String strRecentlyOrderedRightTitle = '';
  static const String strRecentlyOrderedType = 'recentlyOrdered';

  static const String strCategoriesLeftTitle = 'Categories';
  // static const String strCategoriesRightTitle = '';
  // static const String strCategoriesType = 'recentlyOrdered';

  static const String strExcitingOffersLeftTitle = 'Exciting Offers';
  static const String strExcitingOffersRightTitle = 'View All';

  static const String strSpotlightLeftTitle = 'In The Spotlight';
  static const String strSpotlightType = 'Spotlight';
  static const String strSpotlightRightTitle = 'View All';

  static const String strAllStoresLeftTitle = 'All Stores';
  static const String strAllStoresType = 'Stores';
  static const String strAllStoresRightTitle = '';
  static const String strAllStoresDeliveryLeftTitle = 'Free Delivery Upto ';
  static const String strAllStoresDeliveryRightTitle = ' Km';
  static const String strAllStoresReviewsLeftTitle = '(';
  static const String strAllStoresReviewsRightTitle = '+)';
  static const String strAllStoresMinOrderLeftTitle = '(';
  static const String strAllStoresINRRightTitle = '+)';
  static const String strFilledViewAllButton = 'View All Restaurants';

  static const String strYourLocation = 'Your Location';
  static const String strPunjabIndia = 'Punjab, India';
}
