class Vehicle {
  String _type;

  Vehicle._internal(this._type);

  factory Vehicle.createVehicle(String type) {
    return Vehicle._internal(type);
  }

  @override
  String toString() => 'This is vehicle type is  $_type';
}
