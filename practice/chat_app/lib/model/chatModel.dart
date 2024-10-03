class ChatModel {
  String? chatroomid;
  List<String>? participants;

  ChatModel({this.chatroomid, this.participants});

  ChatModel.fromMap(Map<String, dynamic> map) {
    chatroomid = map['chatroomid'];
    participants = map['participants'];
  }
  Map<String, dynamic> toMap() {
    return {
      "chatroomid": chatroomid,
      "participants": participants,
    };
  }
}
