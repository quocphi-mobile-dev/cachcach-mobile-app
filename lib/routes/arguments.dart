import 'package:get/get.dart';

T? getScreenArgs<T>() {
  final _args = Get.arguments;
  return _args is T ? _args : null;
}
