class Vehicle {
  String _type;

  Vehicle._internal(this._type);

  factory Vehicle.createVehicle(String tipo) {
    return Vehicle._internal(tipo);
  }

  @override
  String toString() => 'This is vehicle type is  $_type';
}
