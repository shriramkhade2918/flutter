
import 'package:bloc/bloc.dart';
import 'package:crude_operation/bloc/bloc/employee_event.dart';
import 'package:crude_operation/bloc/bloc/employee_state.dart';
import 'package:crude_operation/model%20Class/EmployeeModel.dart';


class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  List<Employee> employeeInfo = [];

 EmployeeBloc() : super(EmployeeInitial()) {
    on<AddEmployee>((event, emit) {
      employeeInfo.add(event.employee);
      emit(EmployeeLoaded(employeeInfo));
    });

    on<UpdateEmployee>((event, emit) {
      final index = employeeInfo.indexWhere((employee) => employee.empId == event.empId);
      if (index != -1) {
        employeeInfo[index].empName = event.empName;
        
        // employeeInfo[index].empId = event.empId;
        employeeInfo[index].location = event.location;
        employeeInfo[index].companyName = event.companyName;
      }
      emit(EmployeeLoaded(employeeInfo));
    });

    on<DeleteEmployee>((event, emit) {
      employeeInfo.removeWhere((employee) => employee.empId == event.empId);
      emit(EmployeeLoaded(employeeInfo));
    });
  }
}
