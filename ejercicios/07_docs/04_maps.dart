

main() {

  final persona = {
    'nombre'  : 'Fernando',
    'apellido': 'Herrera',
    'edad'    : 33
  };
  
  final direccion = {
    'ciudad': 'Ottawa',
    'pais'  : 'Canadá',
  };

  print('Persona: $persona');
  print('Length: ${ persona.length }');
  print('Keys: ${ persona.keys }');
  print('Values: ${ persona.values }');

  persona.addAll( direccion );
  print('Add all: $persona');

  persona.remove('pais');
  print('Remove: $persona');

  persona.removeWhere( (key, value) {
    if ( key != 'nombre' ) {
      return true;
    } else {
      return false;
    }
  });
  print('Remove where: $persona');

  final nuevoMapa = persona.map( (key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print('Persona map: $persona');
  print('Nuevo mapa: $nuevoMapa');

}