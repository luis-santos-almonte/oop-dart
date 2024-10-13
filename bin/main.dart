import "../lib/person.dart";

void personMethod() {
  String name = "Luis";
  int age = 22;
  var newPerson = new Person(name, age);

  newPerson.describe();
}

void main() {
  personMethod();
}
