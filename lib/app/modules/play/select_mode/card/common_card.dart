import 'package:cachcach/core/theme/images.dart';
import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(AppImages.backgroundCard)
        ],
      ),
    );
  }
}
