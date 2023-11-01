import 'package:cachcach/model/game_mode.dart';
import 'package:cachcach/model/game_mode_category.dart';
import 'package:cachcach/services/api/api_path.dart';
import 'package:cachcach/services/api/api_service.dart';
import 'package:dio/dio.dart';

class HomeRepository {
  static Future<List<GameMode>> getGameModes(
      {String platform = "2", CancelToken? cancelToken}) async {
    var query = {"platform": platform};

    Response response = await ApiService().get(ApiPath.gameModes,
        queryParameters: query, cancelToken: cancelToken);
    List<GameMode> gameModes = [];
    response.data['data'].forEach(
        (v) => gameModes.add(GameMode.fromJson(Map<String, dynamic>.from(v))));
    return gameModes;
  }

  static Future<List<GameModeCategory>> getGameModeCategories(
      {required int? id, CancelToken? cancelToken}) async {
    Response response = await ApiService()
        .get(ApiPath.gameModeCategories(id), cancelToken: cancelToken);

    List<GameModeCategory> listCategory = [];
    response.data['data'].forEach((v) => listCategory
        .add(GameModeCategory.fromJson(Map<String, dynamic>.from(v))));
    return listCategory;
  }
}
