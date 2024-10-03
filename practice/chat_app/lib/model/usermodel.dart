class UserModel {
  String? id;
  String? name;
  String? email;
  String? profilepic;

  UserModel({this.id, this.name, this.email, this.profilepic});

  UserModel.frommap(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"];
    email = map["email"];
    profilepic = map["profilepic"];
  }
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "profilepic": profilepic,
    };
  }
}
