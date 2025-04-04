import 'package:uuid/uuid.dart';

class Habit {
  String id;
  String name;
  String chosenTime;
  bool notificationsEnabled;
  Map<String, bool> selectedDays;

  Habit({
    String? id,
    required this.name,
    required this.chosenTime,
    required this.notificationsEnabled,
    required this.selectedDays,
  }) : id = id ?? const Uuid().v4(); // Generate a unique ID if not provided
}
///!!! 
  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'chosenTime': chosenTime,
  //     'notificationsEnabled': notificationsEnabled,
  //     'selectedDays': selectedDays,
  //   };
  // }

  // factory Habit.fromMap(Map<String, dynamic> map) {
  //   return Habit(
  //     id: map['id'],
  //     name: map['name'],
  //     chosenTime: map['chosenTime'],
  //     notificationsEnabled: map['notificationsEnabled'],
  //     selectedDays: Map<String, bool>.from(map['selectedDays']),
  //   );
  // }




/*
I/flutter (18789): name 
I/flutter (18789): 11:10 AM
I/flutter (18789): true
I/flutter (18789): {sun: true, mon: true, tue: true, wed: true, thu: true, fri: true, sat: true}
*/