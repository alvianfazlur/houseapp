class UserData {
  int id;
  String name;
  String number;
  String type;

  UserData({required this.id, required this.name, required  this.number, required this.type});

  static final List<UserData> userList = [
    UserData(id: 1, name: "Lorem Ipsum", type: "C", number: '4'),
    UserData(id: 2, name: "Lorem Ipsum", type: "C", number: '5'),
    UserData(id: 1, name: "Lorem Ipsum", type: "C", number: '4'),
    UserData(id: 2, name: "Lorem Ipsum", type: "C", number: '5'),
    UserData(id: 1, name: "Lorem Ipsum", type: "C", number: '4'),
    UserData(id: 2, name: "Lorem Ipsum", type: "C", number: '5'),
    UserData(id: 1, name: "Lorem Ipsum", type: "C", number: '4'),
    UserData(id: 2, name: "Lorem Ipsum", type: "C", number: '5'),
  ];
}
