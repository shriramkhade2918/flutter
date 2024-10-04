// lib/bloc/user_state.dart
import 'package:crude_operation/model%20Class/EmployeeModel.dart';

// import '../models/user.dart';

abstract class EmployeeState {}

class EmployeeInitial extends EmployeeState {}

class EmployeeLoaded extends EmployeeState {
  final List<Employee> employeeInfo;

  EmployeeLoaded(this.employeeInfo);
}
