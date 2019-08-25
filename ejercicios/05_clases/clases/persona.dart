class Persona {

  // ============ Campos o propiedades ============
  String nombre;
  int edad;
  String _bio = 'Soy una propiedad privada';

  // ============ Getters y setters ============
  String get bio {
    return _bio.toUpperCase();
  }

  set bio( String texto ) {
    _bio = texto;
  } 

  // set bio( String texto ) => _bio = texto;

  // ============ Constructores ============

  // Persona(int edad, String nombre) {
  //   this.edad = edad;
  //   this.nombre = nombre;
  // }
  Persona(this.edad, this.nombre);

  // constructor con nombre 
  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  // ============ Métodos ============

  @override
  String toString() {
    return '$nombre $edad $_bio';
    // return this.nombre;
  }

}