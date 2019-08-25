import 'dart:io';

main() {
  for (int i = 0; i < 10; i++) {
  }

  stdout.writeln('Escribe valor de la base');
  int base = int.parse(stdin.readLineSync());

  print('Tabla de multiplicar del número $base');
  for (int i = 1; i <= 10; i++) {
    print('$base x $i = ${ base * i }');
  }



}