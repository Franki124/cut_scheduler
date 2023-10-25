import 'package:cut_scheduler/common/styles/app_colors.dart';
import 'package:cut_scheduler/screens/home.dart';
import 'package:cut_scheduler/screens/settings.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _screenIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.primaryElement,
        title: const Text(
          'Scheduler',
          style: TextStyle(
            color: AppColors.primaryElementText,
          ),
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(
            color: AppColors.primaryBackground,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: screens[_screenIndex]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _screenIndex,
          onTap: (value) {
            setState(() {
              _screenIndex = value;
            });
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blueAccent,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
