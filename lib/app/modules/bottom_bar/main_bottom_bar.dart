import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Theme(
      data: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.orange,
                );
              }

              return AppTextStyle.textStyleCommon.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black.withOpacity(0.44),
              );
            },
          ),
        ),
      ),
      child: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            widget.callback(index);
          });
        },
        indicatorColor: AppColors.atomicTangerine.withOpacity(0.16),
        selectedIndex: currentPageIndex,
        backgroundColor: AppColors.white,
        destinations: <Widget>[
          NavigationDestination(
            icon: SvgPicture.asset(
              AppIcons.icHome,
              width: 20.ic,
              height: 20.ic,
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.icHome,
              width: 20.ic,
              height: 20.ic,
              color: AppColors.orange,
            ),
            label: 'Khám phá',
          ),
          // NavigationDestination(
          //   icon: SvgPicture.asset(
          //     AppIcons.icMyDares,
          //     width: 20.ic,
          //     height: 20.ic,
          //   ),
          //   selectedIcon: SvgPicture.asset(
          //     AppIcons.icMyDares,
          //     width: 20.ic,
          //     height: 20.ic,
          //     color: AppColors.orange,
          //   ),
          //   label: 'My dares',
          // ),
          NavigationDestination(
            icon: SvgPicture.asset(
              AppIcons.icProfile,
              width: 20.ic,
              height: 20.ic,
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.icProfile,
              width: 20.ic,
              height: 20.ic,
              color: AppColors.orange,
            ),
            label: 'Cá nhân',
          ),
        ],
      ),
    );
  }
}
