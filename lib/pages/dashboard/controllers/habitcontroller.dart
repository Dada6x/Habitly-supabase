import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitlly/notifications/notifications_service.dart';
import 'package:habitlly/pages/dashboard/model/habit_model.dart';
import 'package:uuid/uuid.dart';

class HabitController extends GetxController {
  RxList<Habit> habits = <Habit>[].obs;
  final TextEditingController textFieldController = TextEditingController();
  var habitName = ''.obs;
  var chosenTime = "10:00 AM".obs;
  var notificationsEnabled = false.obs;
  var habitID = const Uuid().v4();
  RxMap<String, bool> selectedDays = RxMap({
    'sun': false,
    'mon': false,
    'tue': false,
    'wed': false,
    'thu': false,
    'fri': false,
    'sat': false,
  });

//! adding habits
  void addHabit() {
    if (habitName.value.isNotEmpty) {
      habits.add(Habit(
        name: habitName.value,
        chosenTime: chosenTime.value,
        notificationsEnabled: notificationsEnabled.value,
        selectedDays: Map<String, bool>.from(selectedDays),
      ));
      NotificationsService().habitScheduleNotification(
          HabitName: habitName.value, timeString: chosenTime.value);

      print(habitName.value);
      print(chosenTime.value);
      print(notificationsEnabled.value);
      print(selectedDays.value);
      print(habitID);

      reset();
    }
  }

//! deleting habits
  void deleteHabit(String habitId) {
    habits.removeWhere((habit) => habit.id == habitId);
  }

//! resetting the fields
  void reset() {
    textFieldController.clear();
    habitName.value = '';
    chosenTime.value = "01:00 AM";
    notificationsEnabled.value = false;
    selectedDays.value = {
      'sun': false,
      'mon': false,
      'tue': false,
      'wed': false,
      'thu': false,
      'fri': false,
      'sat': false,
    };
  }

//! edit Habits
  void editHabit({
    required String id,
    required String name,
    required String time,
    required bool notifications,
    required Map<String, bool> days,
  }) {
    int index = habits.indexWhere((habit) => habit.id == id);
    habits[index] = Habit(
      name: habitName.value,
      chosenTime: chosenTime.value,
      notificationsEnabled: notificationsEnabled.value,
      selectedDays: Map<String, bool>.from(selectedDays),
    );
    reset();
  }
}
