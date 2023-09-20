import 'package:cachcach/core/languages/translations/ja_JP.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///Mapping app language
class TranslationService extends Translations {
  // get device's locale
  static final Locale locale = _getLocaleFromLanguage();

  // fallback to en_US if device has different language
  static const Locale fallbackLocale = Locale('ja', 'JP');

  @override
  Map<String, Map<String, String>> get keys => <String, Map<String, String>>{
        'ja': jaJP,
      };

  // support lang code
  static final List<String> langCodes = [
    'ja',
  ];

  // support locale
  static final List<Locale> locales = [
    Locale('ja', 'JP'),
  ];

  // update locale with lang code
  static void changeLocale(String langCode) {
    final locale = _getLocaleFromLanguage(langCode: langCode);
    Get.updateLocale(locale);
  }

  // get locale by lang code
  static Locale _getLocaleFromLanguage({String? langCode}) {
    final String? lang = langCode ?? Get.deviceLocale?.languageCode;
    for (int i = 0; i < langCodes.length; i++) {
      if (lang == langCodes[i]) {
        return locales[i];
      }
    }
    return Locale('ja', 'JP');
  }
}
