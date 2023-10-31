import 'package:cachcach/model/play_type.dart';

class GameMode {
  int? id;
  String? name;
  int? type;
  String? description;
  int? platform;
  int? playType;
  String? createdAt;
  String? updatedAt;

  GameMode(
      {this.id,
      this.name,
      this.type,
      this.description,
      this.platform,
      this.playType,
      this.createdAt,
      this.updatedAt});

  GameMode.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    description = json['description'];
    platform = json['platform'];
    playType = json['play_type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['description'] = description;
    data['platform'] = platform;
    data['play_type'] = playType;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }

  String getTotalPlayer() {
    if (isCouple()) {
      return "2";
    }

    return ">2";
  }

  bool isCouple() {
    return playType == PlayType.COUPLE.getId();
  }
}
