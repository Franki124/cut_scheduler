import 'package:cut_scheduler/common/widgets/date_selector.dart';
import 'package:cut_scheduler/common/widgets/subject_tile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> debug = ['1', '2', '3'];
  int _selectedDateIndex = 0;

  void handleDateChange(int newIndex) {
    setState(() {
      _selectedDateIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Gap(10),
        DateSelector(textArray: debug, onChange: handleDateChange),
        const Gap(10),
        Container(
          padding: const EdgeInsets.only(left: 8, right: 8),
            child: const SubjectTile()
        ),
      ],
    );
  }
}
