import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
              _formSendMail(),
              space(h: 12.h),
            ],
          ),
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

  Widget _formSendMail() {
    return Column(
      children: [
        _buildInputEmail(),
        _buildEmailTextField(),
        space(h: 32.h),
        _buildLoginButton(),
      ],
    );
  }

  Widget _buildInputEmail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Get.toNamed(RouteName.forgotPassword);
          },
          child: const Text(
            "Nhập lại email của bạn",
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: "Email",
        hintStyle: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: const Icon(
          Icons.email_outlined,
          color: AppColors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.white,
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
          "Gửi",
          // style: AppTextStyles.buttonTextStyle,
        ),
      ),
    );
  }
}
