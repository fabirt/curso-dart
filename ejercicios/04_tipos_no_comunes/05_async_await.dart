import 'dart:io';

main() async {
  String path = Directory.current.path + '/04_tipos_no_comunes/assets/personas.txt';
  // leerArchivo(path).then(print);

  String texto = await leerArchivo(path);

  print(texto);

}

Future leerArchivo( String path ) async {

  File file = new File( path );
  
  return file.readAsString();

}