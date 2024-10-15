import "../lib/employee.dart";
import "../lib/person.dart";

enum weekDays { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

void personMethod() {
  String name = 'Luis';
  int age = 22;
  Person newPerson = Person(name, age);

  newPerson.describe();

  print(newPerson.name);
}

void employeeMethod() {
  String name = 'Marcos';
  int age = 35;
  String job = 'Software Engineer';
  Employee newEmployee = Employee(name, age, job);

  newEmployee.describe();
}

void main() {
  personMethod();
  employeeMethod();
}
