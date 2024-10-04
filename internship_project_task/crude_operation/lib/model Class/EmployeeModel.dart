class Employee {
  String? empName;
  String? companyName;
  String? empId;
  String? location;

  Employee({this.empName, this.empId, this.companyName, this.location});

  void editInfo(Map<String, dynamic> map) {
    empName = map['empName'];
    companyName = map['companyName'];
    empId = map['empId'];
    location = map['location'];
  }

  Map<String, dynamic> toMap() {
    return {
      'empName': empName,
      'empId': empId,
      'companyName': companyName,
      'location': location,
    };
  }
}
