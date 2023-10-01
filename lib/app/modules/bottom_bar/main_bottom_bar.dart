import 'package:flutter/material.dart';

class MainBottomBar extends StatefulWidget {
  final Color? color;
  final Function callback;

  const MainBottomBar({
    super.key,
    required this.callback,
    this.color,
  });

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
          widget.callback(index);
        });
      },
      indicatorColor: Colors.amber[800],
      selectedIndex: currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.account_circle_rounded),
          icon: Icon(Icons.account_circle_outlined),
          label: 'School',
        ),
      ],
    );
  }
}
