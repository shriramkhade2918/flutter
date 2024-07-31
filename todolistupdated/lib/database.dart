
class ModelClass {
  int? taskid;
  String title;
  String dis;
  String date;
  int done;

  ModelClass(
      {this.taskid,
      required this.title,
      required this.dis,
      required this.date,
      required this.done});

  Map<String, dynamic> map() {
    return {
      'title': title,
      'dis': dis,
      'date': date,
      'done': done,
    };
  }
}

