import 'dart:io';

main(List<String> args) {
  stdout.writeln('¿Cuál es tu edad?');

  int edad = int.parse(stdin.readLineSync());

  // if (edad >= 18) {
  //   stdout.writeln('Eres mayor de edad (viejo)');
  // } else {
  //   stdout.writeln('Eres menor de edad');
  // }

  if (edad >= 21) {
    print("ciudadano");
  } else if (edad >= 18) {
    print("mayor de edad");
  } else {
    print("menor de edad");
  }
}
