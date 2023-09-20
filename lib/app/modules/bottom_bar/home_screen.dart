import 'package:cachcach/app/modules/bottom_bar/main_bottom_bar.dart';
import 'package:cachcach/app/modules/my_dare/my_dare.dart';
import 'package:cachcach/app/modules/play/play_screen.dart';
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
      bottomNavigationBar:  MainBottomBar(callback: (index){
        setState(() {
          currentPageIndex = index;
        });
        print("callback _HomeScreenState: index $index");
      },),

      body: <Widget>[
        PlayScreen(),
        MyDareScreen(),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
