import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: AppColors.bgColor,
          appBar: AppBar(
            title: const Text("Sign Up"),
          ),
          body: SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 22.w,
                vertical: 40.h,
              ),
              children: [
                _buildAppIcon(),
                space(h: 12.h),
                _formSignUp(),
              ],
            ),
          )),
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

  Widget _formSignUp() {
    return Column(
      children: [
        _buildNameTextField(),
        space(h: 20.h),
        _buildEmailTextField(),
        space(h: 20.h),
        _buildPasswordTextField(),
        space(h: 20.h),
        _buildTextPolicy(),
        space(h: 20.h),
        _buildLoginButton(),
        space(h: 20.h),
      ],
    );
  }

  Widget _buildNameTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Name",
        hintStyle: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 16.sp,
          color: AppColors.grey,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.w,
          ),
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 16.sp,
          color: AppColors.grey,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.w,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 16.sp,
          color: AppColors.grey,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.w,
          ),
        ),
      ),
    );
  }

  Widget _buildTextPolicy() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Checkbox(value: true, onChanged: (_) {}),
        Text(
          "By signing up, you agree to our ",
          style: AppTextStyle.textStyleCommon.copyWith(
            fontSize: 14.sp,
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
        Expanded(
          child: Text(
            "Terms of Use and Privacy Policy",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 14.sp,
              color: AppColors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 48.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: const Text("Sign Up"),
      ),
    );
  }
}
