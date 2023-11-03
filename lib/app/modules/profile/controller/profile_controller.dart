import 'package:cachcach/core/utils/top_level_function.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:cachcach/services/repositories/login_repository.dart';
import 'package:cachcach/services/storage_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  CancelToken cancelToken = CancelToken();
  RxBool enableNotification = false.obs;

  @override
  void onClose() {
    cancelToken.cancel();
    super.onClose();
  }

  Future logout() async {
    try {
      showLoading();
      await LoginRepository.logout(cancelToken: cancelToken);
      hideLoading();
      StorageService().saveToken = null;
      Get.offAllNamed(RouteName.login);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
