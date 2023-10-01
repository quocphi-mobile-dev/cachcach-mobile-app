import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              return AppTextStyle.textStyleCommon.copyWith(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
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
        backgroundColor: AppColors.white,
        indicatorColor: AppColors.bgColor,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            icon: Image.asset(AppImages.imgPlayBottomBar),
            label: 'Play',
          ),
          NavigationDestination(
            icon: Image.asset(
              AppImages.imgMyDaresBottomBar,
            ),
            label: 'My dares',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
