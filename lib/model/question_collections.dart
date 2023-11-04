import 'package:cachcach/model/questions.dart';
import 'package:cachcach/core/extensions/iterable_extension.dart';

class QuestionCollections {
  int? questionCollectionId;
  int? type;
  List<Questions>? questions;

  QuestionCollections({this.questionCollectionId, this.type, this.questions});

  QuestionCollections.fromJson(Map<String, dynamic> json) {
    questionCollectionId = json['question_collection_id'];
    type = json['type'];
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions!.add(Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['question_collection_id'] = questionCollectionId;
    data['type'] = type;
    if (questions != null) {
      data['questions'] = questions!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  Questions? getQuestionTruth() {
    return questions?.firstWhereOrNull(
        (element) => element.type == QuestionType.TRUTH.getId());
  }

  Questions? getQuestionDare() {
    return questions?.firstWhereOrNull(
        (element) => element.type == QuestionType.DARE.getId());
  }
}
