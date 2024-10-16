import "dart:io";

import "../class/person.dart";
import "../class/animal.dart";
import "../class/employee.dart";
import '../class/vehicle.dart';
import "../utils/utils.dart";

void personMethod() {
  try {
    String name = 'Luis';
    int age = 22;
    Person newPerson = Person(name, age);

    newPerson.describe();
    print(newPerson.name);
  } catch (e) {
    print('An error occurred in personMethod: $e');
  }
}

void employeeMethod() {
  try {
    String name = 'Marcos';
    int age = 35;
    String job = 'Software Engineer';
    Employee newEmployee = Employee(name, age, job);

    newEmployee.describe();
  } catch (e) {
    print('An error occurred in employeeMethod: $e');
  }
}

void dolphinMethod() {
  try {
    String type = 'Orca';
    double size = 15.5;
    Dolphin newDolphin = Dolphin(size, type);

    newDolphin.eat();
    newDolphin.swim();
  } catch (e) {
    print('An error occurred in dolphinMethod: $e');
  }
}

void vehicleMethod() {
  try {
    Vehicle vehicle1 = Vehicle.createVehicle('car');
    Vehicle vehicle2 = Vehicle.createVehicle('motorcycle');
    Vehicle vehicle3 = Vehicle.createVehicle('truck');

    print(vehicle1);
    print(vehicle2);
    print(vehicle3);
  } catch (e) {
    print('An error occurred in vehicleMethod: $e');
  }
}

void checkEvenOrOdd() {
  print('Give me a number and I will return if it is even or odd:');
  int number = getUserInput();

  if (number.pair) {
    print('$number is even! :D');
  } else {
    print('$number is odd! :T');
  }
}

int getUserInput() {
  while (true) {
    try {
      String? input = stdin.readLineSync();
      if (input == null || input.trim().isEmpty) {
        throw Exception('Input cannot be empty.');
      }
      return int.parse(input);
    } catch (e) {
      print('Invalid input. Please enter a valid number:');
    }
  }
}
