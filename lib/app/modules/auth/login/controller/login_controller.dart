import 'package:cachcach/core/utils/top_level_function.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:cachcach/services/repositories/login_repository.dart';
import 'package:cachcach/services/storage_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController(text: 'admin');
  TextEditingController passwordController =
      TextEditingController(text: '123456');

  CancelToken cancelToken = CancelToken();

  @override
  void onClose() {
    cancelToken.cancel();
    super.onClose();
  }

  Future login() async {
    try {
      showLoading();
      var accessToken = await LoginRepository.login(
        username: emailController.text.trim(),
        password: passwordController.text.trim(),
        cancelToken: cancelToken,
      );

      StorageService().saveToken = accessToken;
      hideLoading();
      Get.toNamed(RouteName.home);
    } catch (e) {
      hideLoading();
      handleException(e);
    }
  }
}
