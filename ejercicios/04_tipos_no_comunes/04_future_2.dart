import 'dart:io';

main() {

  File file = new File( Directory.current.path + '/04_tipos_no_comunes/assets/personas.txt' );

  Future<String> f = file.readAsString();
  f.then( print );

  // String f_sync = file.readAsStringSync();

  print('Fin del main');
}