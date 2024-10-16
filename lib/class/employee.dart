import "person.dart";

class Employee extends Person {
  final String _job;

  const Employee(super._name, super._age, this._job);

  @override
  void describe() {
    print(
        'This is $name, he/she is $age years old. The position in this company is $_job.');
  }
}
