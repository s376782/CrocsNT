import 'package:animations/animations.dart';
import 'package:crocsnt/constants.dart';
import 'package:crocsnt/screens/emergency_screen.dart';
import 'package:crocsnt/screens/map_screen.dart';
import 'package:crocsnt/screens/report_screen.dart';
import 'package:crocsnt/screens/survival_skills_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _pages = const [
    MapScreen(),
    SurvivalSkillListScreen(),
    EmergencyScreen(),
    ReportScreen()
  ];
  int _currentIndex = 0;

  void onTapNavigationBar(index) {
    if (index != _currentIndex) {
      setState(() => _currentIndex = index);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: PageTransitionSwitcher(
          duration: Constants.defaultDuration,
          transitionBuilder: (child, animation, secondaryAnimation) =>
              FadeThroughTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  child: child),
          child: _pages[_currentIndex],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(top: Constants.defaultPadding / 2),
          color: Constants.defaultBackgroundColor(context),
          child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: onTapNavigationBar,
              backgroundColor: Constants.defaultBackgroundColor(context),
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 12,
              selectedItemColor: Constants.primaryColor,
              unselectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(label: 'Map', icon: Icon(Icons.map)),
                BottomNavigationBarItem(
                    label: 'Survival Skills', icon: Icon(Icons.book)),
                BottomNavigationBarItem(
                    label: 'Emergency', icon: Icon(Icons.emergency)),
                BottomNavigationBarItem(
                    label: 'Report', icon: Icon(Icons.report))
              ]),
        ),
      );
}
