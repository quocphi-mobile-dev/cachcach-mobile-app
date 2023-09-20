import 'package:cachcach/app/modules/bottom_bar/main_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyDareScreen extends StatefulWidget {
  const MyDareScreen({super.key});

  @override
  State<MyDareScreen> createState() => _MyDareScreenState();
}

class _MyDareScreenState extends State<MyDareScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: const Text('Page 2'),
      ),
    );
  }
}
