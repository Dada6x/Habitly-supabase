import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:habitlly/pages/community/community.dart';
import 'package:habitlly/pages/dashboard/dashboard_page.dart';

import 'package:habitlly/pages/dashboard/new_habit_page.dart';
import 'package:habitlly/pages/maps/maps.dart';
import 'package:habitlly/pages/settings_profile/settings.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;
  RxBool darkTheme = false.obs;
  // List of pages
  final List<Widget> pages = [
    const Dashboard(), //0
    const Maps(), //1
    const Community(), //2
    const Settings(), //3
    NewHabit(), //4
    // EditHabit() //5
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }

  // void editHabti(Habit, int index) {
  //   EditHabit(
  //     habitAAA: Habit,
  //   );
  //   currentIndex.value = 5;
  // }
}
