enum QuestionType { NORMAL, TRUTH, DARE }

extension QuestionTypeExtensions on QuestionType {
  int getId() {
    if (this == QuestionType.NORMAL) {
      return 1;
    }

    if (this == QuestionType.TRUTH) {
      return 2;
    }

    if (this == QuestionType.DARE) {
      return 3;
    }

    return -1;
  }
}

class Questions {
  int? questionId;
  String? content;
  int? type;

  Questions({this.questionId, this.content, this.type});

  Questions.fromJson(Map<String, dynamic> json) {
    questionId = json['question_id'];
    content = json['content'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['question_id'] = questionId;
    data['content'] = content;
    data['type'] = type;
    return data;
  }
}
