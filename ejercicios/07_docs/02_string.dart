

main() {

  String nombre = 'Fernando';
  String apellido = 'Herrera';

  String nombreCompleto = '$nombre' ' ' '$apellido';


  print('String: $nombreCompleto');

  print('Length: ${ nombreCompleto.length }');

  print('Contains: ${ nombreCompleto.contains('e', 2) }');
 
  print('Endwith: ${ nombreCompleto.endsWith('a') }');
 
  print('PadLeft: ${ nombreCompleto.padLeft(20, '.../') }');

  print('PadRight: ${ nombreCompleto.padRight(20, '.../') }');
  
  print('Operador []: ${ nombreCompleto[0] }');

  print('Operador *: ${ nombreCompleto * 2 }');
  
  print('Replace all: ${ nombreCompleto.replaceAll(RegExp(r'e'), 'a') }');
  
  print('Substring: ${ nombreCompleto.substring(0, 5) }');
  
  print('Index of: ${ nombreCompleto.indexOf(' ') }');
  
  print('Split: ${ nombreCompleto.split(' ') }');
  
  print('Capitalizar ultima: ${ nombreCompleto.substring(0, nombreCompleto.length - 1) }${ nombreCompleto[nombreCompleto.length - 1].toUpperCase() }');


}