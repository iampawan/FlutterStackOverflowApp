class QuestionData {
  List<Questions> questions;

  QuestionData({this.questions});

  QuestionData.fromJson(Map<String, dynamic> json) {
    if (json['questions'] != null) {
      questions = new List<Questions>();
      json['questions'].forEach((v) {
        questions.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.questions != null) {
      data['questions'] = this.questions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  int id;
  String question;
  int voteCount;
  String views;
  String tags;

  Questions({this.id, this.question, this.voteCount, this.views, this.tags});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    voteCount = json['vote_count'];
    views = json['views'];
    tags = json['tags'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['vote_count'] = this.voteCount;
    data['views'] = this.views;
    data['tags'] = this.tags;
    return data;
  }
}
