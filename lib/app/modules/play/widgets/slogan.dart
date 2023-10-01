import 'dart:async';

import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slogan extends StatefulWidget {
  const Slogan({super.key});

  @override
  State<Slogan> createState() => _SloganState();
}

class _SloganState extends State<Slogan> {
  CarouselController carouselController = CarouselController();
  int pageSelected = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          carouselController: carouselController,
          items: List.generate(5, (index) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                gradient: const LinearGradient(
                  colors: [AppColors.sunshade, AppColors.coral],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    AppImages.imgSlogan,
                    width: 80.w,
                    height: 56.h,
                  ),
                  space(w: 10.w),
                  Expanded(
                    child: Text(
                      "Uống rượu chẳng để cho ai - Uống rượu là để kéo dài niềm vui",
                      style: AppTextStyle.textStyleCommon.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
          options: CarouselOptions(
              aspectRatio: 343.w / 132.h,
              enlargeCenterPage: true,
              scrollPhysics: const NeverScrollableScrollPhysics(),
              autoPlay: true,
              onPageChanged: (index, _) {
                setState(() {
                  pageSelected = index;
                });
              }),
        ),
        space(h: 12.h),
        AnimatedSmoothIndicator(
          activeIndex: pageSelected,
          count: 5,
          effect: ExpandingDotsEffect(
            activeDotColor: AppColors.white,
            dotWidth: 10.ic,
            dotHeight: 10.ic,
            expansionFactor: 2,
            dotColor: AppColors.crusta,
          ),
        ),
      ],
    );
  }
}
