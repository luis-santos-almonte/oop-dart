import 'dart:io';
import '../lib/methods/methods.dart';
import '../lib/utils/menu.dart';
import '../lib/utils/parameters.dart';

void main() {
  int now = DateTime.now().weekday;
  weekDays today = weekDays.values[now - 1];

  print('Today is: ${today.name}');

  while (true) {
    displayMenu();
    String? choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        personMethod();
        break;
      case '2':
        employeeMethod();
        break;
      case '3':
        dolphinMethod();
        break;
      case '4':
        vehicleMethod();
        break;
      case '5':
        checkEvenOrOdd();
        break;
      case '6':
        print('Exiting program. Goodbye!');
        return;
      default:
        print('Invalid choice. Please select again.');
    }
    stdin.readLineSync();
  }
}
