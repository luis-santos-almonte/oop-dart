class Vehicle {
  String _type;

  Vehicle._internal(this._type);

  factory Vehicle.crearVehiculo(String tipo) {
    return Vehicle._internal(tipo);
  }

  @override
  String toString() => 'Este es un vehículo de tipo: $_type';
}
