class UserData {
  int? id;
  String name;
  String number;
  String type;

  UserData({this.id, required this.name, required  this.number, required this.type});

  UserData.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        number = json['number'],
        type = json['type'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'number': number,
    'type': type,
  };
}
