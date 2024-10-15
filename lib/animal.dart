abstract class Animal {
  void eat();
}

class Dog extends Animal {
  final String _name;
  final int _age;
  final String _breed;

  Dog(this._name, this._age, this._breed)
      : assert(_age > 0, "The dog's age needs to be greater than 0.");

  @override
  void eat() {
    print('The dog $_name is eating.');
  }

  void describe() {
    print('This is $_name, he is a $_age years old $_breed.');
  }
}
