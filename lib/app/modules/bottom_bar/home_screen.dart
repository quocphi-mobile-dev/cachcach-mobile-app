import 'package:cachcach/app/modules/bottom_bar/main_bottom_bar.dart';
import 'package:cachcach/app/modules/play/play_screen.dart';
import 'package:cachcach/app/modules/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainBottomBar(
        callback: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: <Widget>[
        const PlayScreen(),
        // MyDareScreen(),
        const ProfileScreen(),
      ][currentPageIndex],
    );
  }
}
