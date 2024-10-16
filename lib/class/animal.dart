abstract class Animal {
  void eat();
}

mixin Swimmer {
  void swim();
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

class Dolphin extends Animal with Swimmer {
  final double _size;
  final String _type;

  Dolphin(this._size, this._type)
      : assert(_size > 0, "The dolphin's size needs to be greater than 0.");

  @override
  void eat() {
    print("The $_type dolphin is eating. It needs food to maintain it's $_size meter size.");
  }

  void swim() {
    print('Imagine the dolphin making swimming sounds I dunno.');
  }
}
