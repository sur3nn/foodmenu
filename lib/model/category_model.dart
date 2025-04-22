class AvailableCategories {
  String? id;
  String? title;
  String? color;

  AvailableCategories({this.id, this.title, this.color});

  AvailableCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['color'] = color;
    return data;
  }
}
