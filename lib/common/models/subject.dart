import 'package:flutter/material.dart';

class Subject {
  final String type;
  final Icon icon;
  final String name;
  final String lecturer;
  final String classroom;
  final String startTime;
  final String endTime;

  Subject({
    required this.type,
    required this.icon,
    required this.name,
    required this.lecturer,
    required this.classroom,
    required this.startTime,
    required this.endTime,
  });
}
