import "../lib/person.dart";

class employee extends Person {
  final String _job;

  const employee(String name, int age, this._job) : super(name, age);

  @override
  void describe() {
    print('This is $name, he/she is $age years old. The position in this company is $_job.');
  }
}
