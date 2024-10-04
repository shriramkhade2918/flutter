// part of 'employee_bloc.dart';

// @immutable
// sealed class EmployeeEvent {}
// lib/bloc/user_event.dart
import 'package:crude_operation/model%20Class/EmployeeModel.dart';

abstract class EmployeeEvent {}

class AddEmployee extends EmployeeEvent {
  final Employee employee;

  AddEmployee(this.employee);
}

class UpdateEmployee extends EmployeeEvent {
  String empId;
  String empName;
  String companyName;
  String location;

  UpdateEmployee(this.empId, this.empName, this.companyName, this.location);
}

class DeleteEmployee extends EmployeeEvent {
  final String empId;

  DeleteEmployee(this.empId);
}
