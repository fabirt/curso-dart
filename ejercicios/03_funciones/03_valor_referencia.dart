

main() {

  String nombre = 'fabian';
  String nombre2 = capitalizar(nombre);

  // print(nombre);
  // print(nombre2);

  Map<String, String> personita = {
    'nombre': 'juan carlos'
  };

  Map<String, String> personita2 = capitalizarMapa(personita);

  print(personita);
  print(personita2);

}

// booleanos, strings, numeros (primitivos)
String capitalizar(String texto) {

  return texto.toUpperCase();

}

Map<String, String> capitalizarMapa(Map<String, String> persona) {
  
  persona = { ... persona };
  persona['nombre'] = persona['nombre'].toUpperCase();

  return persona;

}