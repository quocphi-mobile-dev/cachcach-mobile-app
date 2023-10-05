import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 40.h),
            children: [
              _buildAppIcon(),
              space(h: 12.h),
              _formLogin(),
              space(h: 12.h),
              _buildTextAnotherLogin(),
              space(h: 12.h),
              const FormLoginSocial(),
              space(h: 12.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bạn chưa có tài khoản?",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(RouteName.signUp);
                    },
                    child: Text(
                      "Đăng ký ngay",
                      style: AppTextStyle.textStyleCommon.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextAnotherLogin() {
    return Center(
      child: Text(
        "Hoặc đăng nhập với",
        style: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      ),
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

  Widget _formLogin() {
    return Column(
      children: [
        _buildEmailTextField(),
        space(h: 12.h),
        _buildPasswordTextField(),
        _buildRowForgotPasswordAndEmail(),
        space(h: 12.h),
        _buildLoginButton(),
        space(h: 20.h),
        _buildTrialButton(),
      ],
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
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

  Widget _buildLoginButton() {
    return gradientButton(
      onTap: () {
        Get.toNamed(RouteName.home);
      },
      child: Center(
        child: Text(
          "Đăng nhập",
          style: AppTextStyle.textStyleCommon.copyWith(
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildRowForgotPasswordAndEmail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Get.toNamed(RouteName.forgotPassword);
          },
          child: const Text(
            "Quên mật khẩu?",
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTrialButton() {
    return normalButton(
      onTap: () {},
      child: Center(
        child: Text(
          "Dùng thử",
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

class FormLoginSocial extends StatelessWidget {
  const FormLoginSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildLoginWithFacebookButton(),
        const Spacer(),
        _buildLoginWithGoogleButton(),
        const Spacer(),
        _buildLoginWithTwitter(),
      ],
    );
  }

  Widget _buildLoginWithGoogleButton() {
    return outlineButton(
      width: 62.ic,
      height: 62.ic,
      onTap: () {},
      child: Image.asset(
        AppImages.imgGoogle,
        width: 40.ic,
        height: 40.ic,
      ),
    );
  }

  Widget _buildLoginWithFacebookButton() {
    return normalButton(
      width: 62.ic,
      height: 62.ic,
      backgroundColor: AppColors.mariner,
      onTap: () {},
      child: Icon(
        Icons.facebook,
        size: 40.ic,
        color: AppColors.white,
      ),
    );
  }

  Widget _buildLoginWithTwitter() {
    return normalButton(
      width: 62.ic,
      height: 62.ic,
      backgroundColor: AppColors.deepSkyBlue,
      onTap: () {},
      child: Center(
        child: SvgPicture.asset(
          AppIcons.icTwitter,
          width: 40.ic,
          height: 40.ic,
          fit: BoxFit.cover,
          color: AppColors.white,
        ),
      ),
    );
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
