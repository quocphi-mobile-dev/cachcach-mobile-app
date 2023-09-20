import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthMainController extends GetxController {
  final TextEditingController emailLoginTextController =
      TextEditingController(text: "");

  final Rx<String?> emailLoginError = Rx<String?>("");

  final TextEditingController passwordLoginTextController =
      TextEditingController(text: "");

  final Rx<String?> passwordLoginError = Rx<String?>("");

  final TextEditingController emailSignUpTextController =
      TextEditingController(text: "");
  Rx<String?> emailSignUpError = Rx<String?>("");
  final TextEditingController passwordSignUpTextController =
      TextEditingController(text: "");
  Rx<String?> passwordSignUpError = Rx<String?>("");
}
