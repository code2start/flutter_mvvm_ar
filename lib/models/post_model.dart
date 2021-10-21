class PostModel {
  int? id;
  int? userId;
  String? title;
  String? boody;

  PostModel({this.id, this.userId, this.title, this.boody});
  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    title = json['title'];
    boody = json['body'];
  }
  Map<String, dynamic> toJSON() {
    return {"userId": userId, "id": id, "title": title, "body": boody};
  }
}
