import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/dimens.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

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
                horizontal: 22.dp,
                vertical: 40.dp,
              ),
              children: [
                space(h: .45.dp),
                _buildAppIcon(),
                space(h: 12.dp),
                _formSignUp(),
              ],
            ),
          )),
    );
  }

  Widget _buildAppIcon() {
    return SizedBox(
        height: 120.dp,
        width: 120.dp,
        child: Image.asset(
          AppImages.imgLogo,
        ));
  }

  Widget _formSignUp() {
    return Column(
      children: [
        _buildNameTextField(),
        space(h: 20.dp),
        _buildEmailTextField(),
        space(h: 20.dp),
        _buildPasswordTextField(),
        space(h: 20.dp),
        _buildTextPolicy(),
        space(h: 20.dp),
        _buildLoginButton(),
        space(h: 20.dp),
      ],
    );
  }

  Widget _buildNameTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Name",
        hintStyle: AppTextStyle.t16w400(AppColors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.dp),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.dp,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.dp),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.dp,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.dp),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.dp,
          ),
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: AppTextStyle.t16w400(AppColors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.dp),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.dp,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.dp),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.dp,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.dp),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.dp,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: AppTextStyle.t16w400(AppColors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.dp),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.dp,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.dp),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.dp,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.dp),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.dp,
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
          style: AppTextStyle.t14w400(AppColors.grey),
        ),
        Expanded(
          child: Text(
            "Terms of Use and Privacy Policy",
            style: AppTextStyle.t14w400(AppColors.grey),
          ),
        )
      ],
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 48.dp,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.dp),
          ),
        ),
        child: const Text("Sign Up"),
      ),
    );
  }
}
