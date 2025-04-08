import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:habitlly/Theme/themes.dart';
import 'package:habitlly/introduction_splashscreen/introductionScreens.dart';
import 'package:habitlly/notifications/notifications_service.dart';

import 'package:habitlly/util/sizedconfig.dart';

void main() {
  // status bar color in the app dammmnscc
  // SystemChrome.setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(statusBarColor: Color(orange)));
  WidgetsFlutterBinding.ensureInitialized();
//! init Notifications
  NotificationsService().initNotification();

  runApp(const MyApp());
}
//ward is black piece of shit who suck cock and eat shit
class MyApp extends StatelessWidget {
  const MyApp({super.key});
//Ward checking shit 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes().lightMode,
      home: Builder(
        builder: (context) {
          SizeConfig.init(context); // Initialize screen size
          return const Intropages();
        },
      ),
    );
  }
}

