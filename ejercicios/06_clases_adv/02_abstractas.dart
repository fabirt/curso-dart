
abstract class Vehiculo {

  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehiculo encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo apagado');
  }

  bool revisarMotor();

}

class Carro extends Vehiculo {

  int kilometraje = 0;

  // el decorador no es obligatorio, pero es una bunea práctica
  @override
  bool revisarMotor() {
    print('Motor ok');
    return true;
  }

}



main() {

  final ford = new Carro();

  ford.encender();
  ford.apagar();

  ford.revisarMotor();

}