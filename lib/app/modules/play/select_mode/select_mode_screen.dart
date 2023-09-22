import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/dimens.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'card/classic_card.dart';

class SelectModeScreen extends StatelessWidget {
  const SelectModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildTopBar(),
            space(h: 12.dp),
            Text(
              "Select a Mode",
              style: AppTextStyle.common(34, FontWeight.w600, AppColors.black),
            ),
            Expanded(child: ClassicCard())
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              AppIcons.icArrowLeft,
              width: 32.dp,
              height: 32.dp,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              AppImages.imgSettings,
              width: 44.dp,
              height: 44.dp,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
