import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Profile",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 34.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.crusta,
              ),
            ),
            space(h: 10.h),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.w)
                    .copyWith(bottom: 50.h),
                shrinkWrap: true,
                children: [
                  _buildUserName(),
                  space(h: 20.h),
                  _buildNotification(),
                  space(h: 12.h),
                  _buildLanguage(),
                  space(h: 12.h),
                  _buildRateApp(),
                  space(h: 12.h),
                  _buildContactSupport(),
                  space(h: 12.h),
                  _buildDeleteAccount(),
                  space(h: 12.h),
                  _buildChangePassword(),
                  space(h: 24.h),
                  _buildLogout(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommon({required Widget child, VoidCallback? onTap}) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(30.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(30.r),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            child: child,
          ),
        ),
      ),
    );
  }

  Widget _buildLogout() {
    return _buildCommon(
        child: Row(
          children: [
            Icon(
              Icons.logout,
              size: 32.ic,
            ),
            space(w: 10.w),
            Expanded(
              child: Text(
                "Logout",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.bittersweet,
                ),
              ),
            ),
          ],
        ),
        onTap: () {

        });
  }

  Widget _buildChangePassword() {
    return _buildCommon(
        child: Row(
          children: [
            Icon(
              Icons.lock_reset,
              size: 32.ic,
            ),
            space(w: 10.w),
            Expanded(
              child: Text(
                "Change password",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.shamrock,
                ),
              ),
            ),
          ],
        ),
        onTap: () {});
  }

  Widget _buildDeleteAccount() {
    return _buildCommon(
        child: Row(
          children: [
            Icon(
              Icons.delete,
              size: 32.ic,
            ),
            space(w: 10.w),
            Expanded(
              child: Text(
                "Delete account",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.bittersweet,
                ),
              ),
            ),
          ],
        ),
        onTap: () {});
  }

  Widget _buildContactSupport() {
    return _buildCommon(
        child: Row(
          children: [
            Icon(
              Icons.chat_outlined,
              size: 32.ic,
            ),
            space(w: 10.w),
            Expanded(
              child: Text(
                "Contact support",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.freeSpeechMagenta,
                ),
              ),
            ),
          ],
        ),
        onTap: () {});
  }

  Widget _buildRateApp() {
    return _buildCommon(
        child: Row(
          children: [
            Icon(
              Icons.star,
              size: 32.ic,
            ),
            space(w: 10.w),
            Expanded(
              child: Text(
                "Rate App",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.citron,
                ),
              ),
            ),
          ],
        ),
        onTap: () {});
  }

  Widget _buildLanguage() {
    return _buildCommon(
        child: Row(
          children: [
            Icon(
              Icons.language,
              size: 32.ic,
            ),
            space(w: 10.w),
            Expanded(
              child: Text(
                "Language",
                style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.ceruleanBlue),
              ),
            ),
            space(w: 10.w),
            Text(
              "EN",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
            space(w: 20.w),
          ],
        ),
        onTap: () {});
  }

  Widget _buildNotification() {
    return _buildCommon(
      child: Row(
        children: [
          Icon(
            Icons.notifications_none,
            size: 32.ic,
          ),
          space(w: 10.w),
          Expanded(
            child: Text(
              "Enable notification",
              style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.ceruleanBlue),
            ),
          ),
          space(w: 10.w),
          Switch(value: true, onChanged: (value) {}),
        ],
      ),
    );
  }

  Widget _buildUserName() {
    return Row(
      children: [
        Container(
          width: 50.ic,
          height: 50.ic,
          padding: EdgeInsets.all(10.ic),
          decoration: const BoxDecoration(
            color: AppColors.whiteSmoke,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            AppIcons.icProfile,
            width: 40.ic,
            height: 40.ic,
          ),
        ),
        space(w: 20),
        Expanded(
            child: Text(
          "Nguyen Quoc Hoan",
          style: AppTextStyle.textStyleCommon.copyWith(
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.indianRed,
          ),
        ))
      ],
    );
  }
}
