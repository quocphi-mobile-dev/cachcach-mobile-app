import 'package:cachcach/services/api/api_path.dart';
import 'package:cachcach/services/api/api_service.dart';
import 'package:dio/dio.dart';

class LoginRepository {
  static Future login({
    String? username,
    String? password,
    CancelToken? cancelToken,
  }) async {
    var data = {
      "username": username,
      "password": password,
    };

    Response response = await ApiService()
        .post(ApiPath.login, data: data, cancelToken: cancelToken);

    return response.data['data']['access_token'];
  }

  static Future logout({CancelToken? cancelToken}) async {
    Response response =
        await ApiService().delete(ApiPath.logout, cancelToken: cancelToken);
    return response.data;
  }
}
