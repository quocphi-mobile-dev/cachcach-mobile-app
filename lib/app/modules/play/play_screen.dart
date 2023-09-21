import 'package:cachcach/app/modules/bottom_bar/main_bottom_bar.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/dimens.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/theme.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(bottom: 20.dp),
          children: [
            space(h: 20.dp),
            Image.asset(
              AppImages.imgLogoMini,
              width: 172.dp,
              height: 126.dp,
            ),
            space(h: 20.dp),
            _widgetGroupCouple(),
            space(h: 20.dp),
            _widgetGroupFriends(),
          ],
        ),
      ),
    );
  }

  Widget _widgetGroupCouple() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Couple",
            style: AppTextStyle.common(34, FontWeight.w600, AppColors.black),
          ),
          space(h: 20.dp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem(
                  image: AppImages.imgTrustOrDare,
                  label: "Truth or Dare",
                  onTap: () {
                    Get.toNamed(RouteName.selectMode);
                  }),
              _buildItem(
                  image: AppImages.imgTrustOrDare,
                  label: "Chewing",
                  onTap: () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget _widgetGroupFriends() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friends",
            style: AppTextStyle.common(34, FontWeight.w600, AppColors.black),
          ),
          space(h: 20.dp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem(
                  image: AppImages.imgTrustOrDare,
                  label: "Truth or Dare",
                  onTap: () {}),
              _buildItem(
                  image: AppImages.imgTrustOrDare,
                  label: "Chewing",
                  onTap: () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItem({
    required String image,
    required String label,
    VoidCallback? onTap,
  }) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Container(
          width: 162.dp,
          height: 162.dp,
          padding: EdgeInsets.symmetric(horizontal: 20.dp, vertical: 12.dp),
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(image),
              space(h: 20.dp),
              Text(
                label,
                style:
                    AppTextStyle.common(16, FontWeight.w400, AppColors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
