class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);

  String get getname => name;
  int get getage => age;

  void describe() {
    print('This is $name, he/she is $age years old.');
  }
}
