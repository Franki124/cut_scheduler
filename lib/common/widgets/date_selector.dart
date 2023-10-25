import 'package:cut_scheduler/common/styles/app_colors.dart';
import 'package:flutter/material.dart';

class DateSelector extends StatefulWidget {
  final List<String> textArray;
  final Function(int) onChange;

  const DateSelector(
      {super.key, required this.textArray, required this.onChange});

  @override
  State<DateSelector> createState() => DateSelectorState();
}

class DateSelectorState extends State<DateSelector> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primaryBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularArrow(
              icon: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
              ),
              onPressed: () {
                if (_currentIndex <= 0) {
                  return;
                }
                widget.onChange(_currentIndex);
                setState(() {
                  _currentIndex -= 1;
                });
              }),
          Text(
            widget.textArray[_currentIndex],
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          CircularArrow(
              icon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
              onPressed: () {
                if (_currentIndex >= widget.textArray.length - 1) {
                  return;
                }
                widget.onChange(_currentIndex);
                setState(() {
                  _currentIndex += 1;
                });
              }),
        ],
      ),
    );
  }
}

class CircularArrow extends StatelessWidget {
  final Icon icon;
  final Function() onPressed;

  const CircularArrow({required this.icon, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: CircleAvatar(backgroundColor: Colors.blue, child: icon),
      iconSize: 25,
    );
  }
}
