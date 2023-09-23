import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 40.h),
            children: [
              _buildAppIcon(),
              space(h: 12.h),
              _formLogin(),
              space(h: 12.h),
              const FormLoginSocial(),
              space(h: 12.h),
              Text(
                "Bạn chưa có tài khoản? Đăng ký ngay",
                textAlign: TextAlign.center,
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppIcon() {
    return SizedBox(
        height: 120.h,
        width: 120.w,
        child: Image.asset(
          AppImages.imgLogo,
        ));
  }

  Widget _formLogin() {
    return Column(
      children: [
        _buildEmailTextField(),
        space(h: 20.h),
        _buildPasswordTextField(),
        space(h: 20.h),
        _buildRowForgotPasswordAndEmail(),
        space(h: 20.h),
        _buildLoginButton(),
        space(h: 20.h),
        _buildTrialButton(),
        space(h: 20.h),
      ],
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email",
        // hintStyle: AppTextStyles.hintStyle,
        prefixIcon: const Icon(
          Icons.email_outlined,
          color: AppColors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        // hintStyle: AppTextStyles.hintStyle,
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: AppColors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(RouteName.home);
        },
        style: ElevatedButton.styleFrom(
          // primary: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: const Text(
          "Login",
          // style: AppTextStyles.buttonTextStyle,
        ),
      ),
    );
  }

  Widget _buildRowForgotPasswordAndEmail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Forgot password?",
            // style: AppTextStyles.buttonTextStyle,
          ),
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(RouteName.signUp);
          },
          child: const Text(
            "Sign up",
            // style: AppTextStyles.buttonTextStyle,
          ),
        ),
      ],
    );
  }

  Widget _buildTrialButton() {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: AppColors.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Text(
          "Trial",
          style: AppTextStyle.textStyleCommon.copyWith(
            fontSize: 12.sp,
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class FormLoginSocial extends StatelessWidget {
  const FormLoginSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildLoginWithGoogleButton(),
        const Spacer(),
        _buildLoginWithFacebookButton(),
        const Spacer(),
        _buildLoginWithAppleButton(),
      ],
    );
  }

  Widget _buildLoginWithGoogleButton() {
    return SizedBox(
      width: 50.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          // primary: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Image.asset(
          AppImages.imgLogo,
          height: 24.h,
          width: 24.w,
        ),
      ),
    );
  }

  Widget _buildLoginWithFacebookButton() {
    return SizedBox(
      width: 50.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          // primary: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Image.asset(
          AppImages.imgLogo,
          height: 24.h,
          width: 24.w,
        ),
      ),
    );
  }

  Widget _buildLoginWithAppleButton() {
    return SizedBox(
      width: 50.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          // primary: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Image.asset(
          AppImages.imgLogo,
          height: 24.h,
          width: 24.w,
        ),
      ),
    );
  }
}
