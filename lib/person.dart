class Person {
  final String _name;
  final int _age;

  const Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

  void describe() {
    print('This is $name, he/she is $age years old.');
  }
}
