class EventModel {
  int? id;
  String title;
  String date;
  String tag;

  EventModel({this.id, required this.title, required this.date, required this.tag});

  EventModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        date = json['date'],
        tag = json['tag'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'date': date,
    'tag': tag,
  };
}