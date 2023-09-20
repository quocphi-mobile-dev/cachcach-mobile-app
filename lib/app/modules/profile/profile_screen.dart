import 'package:cachcach/app/modules/bottom_bar/main_bottom_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainBottomBar(
        callback: (index) {
          print("callback: index $index");
        },
      ),
      appBar: AppBar(
        title: const Text("Profile"),
      ),
    );
  }
}
