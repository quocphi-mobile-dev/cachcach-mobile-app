class GameModeCategory {
  String? id;
  String? name;
  String? description;
  String? createdAt;
  String? updatedAt;
  int? type;
  String? gameModeId;
  String? categoryId;

  GameModeCategory(
      {this.id,
      this.name,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.type,
      this.gameModeId,
      this.categoryId});

  GameModeCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    type = json['type'];
    gameModeId = json['game_mode_id'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['type'] = type;
    data['game_mode_id'] = gameModeId;
    data['category_id'] = categoryId;
    return data;
  }
}
