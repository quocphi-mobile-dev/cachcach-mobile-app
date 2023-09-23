import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum StorageKey {
  token,
  refreshToken,
  userId,
}

class StorageService {
  SharedPreferences? _prefs;
  static final StorageService _service = StorageService._internal();

  StorageService._internal();

  factory StorageService() => _service;

  final _storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ));
  final options =
      const IOSOptions(accessibility: KeychainAccessibility.first_unlock);

  Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  set saveToken(String? value) {
    _storage.write(key: StorageKey.token.name, value: value, iOptions: options);
  }

  Future<String?> get token async {
    try {
      return await _storage.read(key: StorageKey.token.name, iOptions: options);
    } catch (e) {
      return null;
    }
  }

  set saveRefreshToken(String? value) {
    _storage.write(
        key: StorageKey.refreshToken.name, value: value, iOptions: options);
  }

  Future<String?> get refreshToken async {
    try {
      return await _storage.read(
          key: StorageKey.refreshToken.name, iOptions: options);
    } catch (e) {
      return null;
    }
  }

  Future<void> get deleteToken => _storage.delete(key: StorageKey.token.name);

  void setBool(String key, bool value) {
    _prefs?.setBool(key, value);
  }

  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  void setInt(String key, int value) {
    _prefs?.setInt(key, value);
  }

  int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  void setDouble(String key, double value) {
    _prefs?.setDouble(key, value);
  }

  double? getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  void setString({required String key, required String value}) {
    _prefs?.setString(key, value);
  }

  String? getString(String key) {
    return _prefs?.getString(key);
  }

  void setListString({required String key, required List<String> value}) {
    _prefs?.setStringList(key, value);
  }

  List<String>? getListString({required key}) {
    return _prefs?.getStringList(key);
  }

  Future<bool>? removeKey(String key) {
    return _prefs?.remove(key);
  }

  void setData(Map<String, dynamic> data, String key) {
    final String dataJson = json.encode(data);
    setString(key: key, value: dataJson);
  }

  dynamic getData(String key) {
    final String? dataJson = getString(key);
    if (dataJson != null) {
      return json.decode(dataJson);
    }
    return null;
  }

  void saveUserId(int id) {
    setInt(StorageKey.userId.name, id);
  }

  int getUserId() {
    return getInt(StorageKey.userId.name) ?? -1;
  }
}
