import 'dart:io';
import "../lib/animal.dart";
import "../lib/employee.dart";
import "../lib/person.dart";
import '../lib/vehicle.dart';

enum weekDays { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

extension pairInts on int {
  bool get pair => this % 2 == 0;
}

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

void dolphinMethod() {
  String type = 'Orca';
  double size = 15.5;
  Dolphin newDolphin = Dolphin(size, type);

  newDolphin.eat();
  newDolphin.swim();
}

void vehicleMethod() {
  Vehicle vehicle1 = Vehicle.createVehicle('car');
  Vehicle vehicle2 = Vehicle.createVehicle('motorcycle');
  Vehicle vehicle3 = Vehicle.createVehicle('truck');

  print(vehicle1);
  print(vehicle2);
  print(vehicle3);
}

void main() {
  int now = DateTime.now().weekday;
  weekDays today = weekDays.values[now - 1];
  String? inputNumber;
  int? number;

  personMethod();
  employeeMethod();
  print(today.name);

  print('Give me a number and I will return if it is even or odd: ');

  do {
    try {
      print('value:');
      inputNumber = stdin.readLineSync();
      if (inputNumber == null || inputNumber.trim().isEmpty) {
        throw Exception('The input cannot be empty.');
      }
      number = int.parse(inputNumber);
    } catch (e) {
      print('Please enter a valid number.');
    }
  } while (number == null);

  if (number.pair) {
    print('$number is even! :D');
  } else {
    print('$number is not even! :T');
  }

  dolphinMethod();
  vehicleMethod();
}
