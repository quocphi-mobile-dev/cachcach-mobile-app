import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscuredPass() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return;
      textFieldFocusNode.canRequestFocus = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: AppColors.bgColorAuth,
          body: SafeArea(
            child: Column(
              children: [
                buildTopBar(),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.w,
                    ).copyWith(bottom: 50.h),
                    children: [
                      _buildAppIcon(),
                      space(h: 12.h),
                      _formSignUp(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildAppIcon() {
    return SizedBox(
      height: 140.h,
      width: 140.w,
      child: Image.asset(
        AppImages.imgLogo,
      ),
    );
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
        fillColor: AppColors.whiteSmoke,
        filled: true,
        labelText: "Name",
        hintStyle: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColors.whiteSmoke,
        filled: true,
        labelText: "Email",
        hintStyle: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      obscureText: _obscured,
      focusNode: textFieldFocusNode,
      decoration: InputDecoration(
        fillColor: AppColors.whiteSmoke,
        filled: true,
        labelText: "Mật khẩu",
        hintStyle: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: _toggleObscuredPass,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextPolicy() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24.ic,
          height: 24.ic,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
            activeColor: AppColors.crusta,
          ),
        ),
        space(w: 10.w),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Tôi đồng ý với ",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey,
                  ),
                ),
                TextSpan(
                  text: "Điều khoản",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                TextSpan(
                  text: " và ",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                TextSpan(
                  text: "Chính sách bảo mật.",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("tap tap");
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
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
    return gradientButton(
      onTap: () {},
      child: Center(
        child: Text(
          "Đăng ký",
          style: AppTextStyle.textStyleCommon.copyWith(
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
