import 'package:flutter/material.dart';

class Taskdata {
  String? taskName;
  DateTime? dateTime;
  TimeOfDay? timeofStart;
  TimeOfDay? timeofEnd;
  String? discription;
  Image? image;

  Taskdata(
      {required this.taskName,
      required this.dateTime,
      required this.timeofStart,
      required this.timeofEnd,
      required this.discription,
      required this.image});
}
