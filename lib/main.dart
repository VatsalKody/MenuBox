import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:revisiting_kody_test_ui/ui/base_screen/mobile/base_mobile.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(systemNavigationBarColor: AppColors.clrBlack),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.strApplicationTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.clrDeepPurple),
        useMaterial3: true,
      ),
      home: const BaseMobile(),
    );
  }
}
